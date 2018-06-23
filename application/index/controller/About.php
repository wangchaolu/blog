<?php
/**
 * 关于我们.
 */
namespace app\index\controller;
use think\Controller;

class About extends Controller
{
    /*======= 关于我们 ======*/
    public function index()
    {
		$this->assign('action',request()->controller());
        return view();
    }
}