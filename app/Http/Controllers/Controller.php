<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use App\Common\MessageHelper;
class Controller extends BaseController
{


    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    protected $company_id='d52c7720-cc04-11e6-957e-93b8c2689162';

    public function return_json_data($code, $data = "")
    {
        if ($data == "" || empty($data)) {
            return response()->json(['code' => $code, 'data' => '']);
        } else {
            return response()->json(['code' => $code, 'data' => $data]);
        }
    }

    public function return_json_error_data($code, $data = "")
    {
        if ($data == "" || empty($data)) {
            return response()->json(['code' => $code, 'data' => MessageHelper::GET($code)], 400);
        } else {
            return response()->json(['code' => $code, 'data' => $data], 400);
        }
    }
}
