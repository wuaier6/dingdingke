<?php
namespace App\Http\Controllers\Common;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\LocationRepositoryEloquent;

class LocationController extends Controller
{

    protected $location;
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(LocationRepositoryEloquent $location)
    {
        $this->location=$location;
    }


    /**
     *  获得详细信息
     * @param Request $request
     * @param $type 1:省，2:市，3：区
     * @param $pid
     */
    public function List(Request $request,$type,$pid){
        $data=array();
        if($type==1){
            $data= $this->location->getProvince();
        }elseif($type==2){
            $data= $this->location->getCity($pid);
        }elseif($type==3){
            $data= $this->location->getDistrict($pid);
        }
        if(!is_null($data)){
            return $this->return_json_data(1,$data);
        }else{
            return $this->return_json_error_data(-1);
        }
    }
}