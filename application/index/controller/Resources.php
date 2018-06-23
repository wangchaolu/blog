<?php
/**
 * 资源下载
 */

namespace app\index\controller;
use think\Controller;

class Resources extends Controller
{
    /*======= 资源下载 ======*/
    public function index()
    {
        
		$this->assign('action',request()->controller());
        return view();
    }
}