<?php
/**
 * 首页
 */
namespace app\index\controller;
use think\Controller;

class Index extends Controller
{
    /*======= 首页 ======*/
    public function index()
    {
        /*------ 首页banner图 ------*/
//        $model = model('Ad');
//        $banner_info = $model
//            ->field(['img_url','jump_url'])
//            ->where(['type'=>1,'status'=>1])
//            ->select();
//        dump($banner_info);
        $this->assign('action',request()->controller());
        return view();
    }
}
