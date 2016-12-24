<?php
namespace App\Http\Controllers\Console\Company;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\CompanyRepositoryEloquent;
use App\Repositories\CompanyTagRepositoryEloquent;
use App\Repositories\LocationRepositoryEloquent;
use Validator;
use Uuid;
class CompanyController extends Controller
{
    protected $company;
    protected $companytag;
    protected $location;
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(CompanyRepositoryEloquent $company, CompanyTagRepositoryEloquent $companytag,LocationRepositoryEloquent $location)
    {
        $this->company = $company;
        $this->companytag = $companytag;
        $this->location = $location;
    }

    /**
     * 公司创建
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function CompanyCreateVeiw(Request $request)
    {
        $companytag = $this->companytag->all();
        $data['companytag'] = $companytag;
        return view('company.company_create',$data);
    }

    public function businesslicenceupload(Request $request)
    {
        $validator = Validator::make($request->all(),["picture" => 'bail|required|file|image']);
        if ($validator->fails()) {
            return $this->return_json_error_data(1, $validator->errors()->all());
        }
        $path = $request->file('picture')->store('businesslicence');
        return $this->return_json_data(1, $path);
    }

    /**
     * 公司创建
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function CompanyEditVeiw(Request $request)
    {
        $company = $this->company->find(["company_id"=>1,"user_id"=>1])->first();
        if(is_null($company)){
            return $this->return_json_error_data(-1,"机构不存在");
        }
        return view('company.company_create',$data);
    }

    public function SaveCompany(Request $request)
    {
        $data=$request->all();
        $data['company_id']=1;
        $this->company->updateOrCreate(['company_id'=>1], $data);
        return $this->return_json_data(1);
    }

    protected $user_id=1;

    public function index(Request $request){
        $company_info=$this->company->findwhere(array("user_id"=>$this->user_id))->first();
        if(is_null($company_info)){
            return redirect('company/create');
        }
        $data['province']=  $this->location->getProvince();
        $data['city']=  $this->location->getCity($company_info->province_id);
        $data['district']=  $this->location->getDistrict($company_info->city_id);

        $data['company_info'] = $company_info;
        $companytag = $this->companytag->all();
        $data['companytag'] = $companytag;
        return view('console.company.edit',$data);

    }

    public function Create(Request $request){
        $companytag = $this->companytag->all();
        $data['companytag'] = $companytag;

        $data['province']=  $this->location->getProvince();
        return view('console.company.create',$data);
    }

    public function Edit(Request $request){

    }

    /**
     * 保存机构
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function DoCreate(Request $request){

        $data=$request->all();
        $company_info=$this->company->findwhere(array("user_id"=>$this->user_id))->first();
        if(!is_null($company_info)){
            //已经存在机构
            return $this->return_json_error_data(-1);
        }
        $company_id = Uuid::generate(1);
        //图片另存为
        $data['id_card'] = $request->file('id_card')->store("/".$this->user_id.'/id_card/'.$company_id);
        $data['business_licence'] = $request->file('business_licence')->store("/".$this->user_id.'/businesslicence/'.$company_id);
        $data['company_id']=$company_id;
        $data['tags']=json_encode($data['tags']);
        $this->company->updateOrCreate(['company_id'=>$company_id,'user_id'=>$this->user_id], $data);
        return $this->return_json_data(1);
    }


    /**
     * 保存机构
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function DoEdit(Request $request){

        $data=$request->all();

        $company_info=$this->company->findwhere(array("user_id"=>$this->user_id))->first();
        if(is_null($company_info)){
            //已经存在机构
            return $this->return_json_error_data(-1);
        }
        $company_id =$data['company_id'];
        //图片另存为
        if(isset($data['id_card']) && $data['id_card'] !=''){
            $data['id_card'] = $request->file('id_card')->store("/".$this->user_id.'/id_card/'.$company_id);
        }
        if(isset($data['business_licence'] ) && $data['business_licence'] !=''){
            $data['business_licence'] = $request->file('business_licence')->store("/".$this->user_id.'/businesslicence/'.$company_id);
        }


        $data['company_id']=$company_id;
        $data['tags']=json_encode($data['tags']);
        $this->company->updateOrCreate(['company_id'=>$company_id,'user_id'=>$this->user_id], $data);
        return $this->return_json_data(1);
    }
}