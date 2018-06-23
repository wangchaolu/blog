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
        
        $this->assign('action',request()->controller());
        return view();
    }
}
