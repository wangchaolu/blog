<?php
/**
 * 留言板.
 */
namespace app\index\controller;
use think\Controller;

class Comment extends Controller
{
    /*======= 留言板 ======*/
    public function index()
    {
		$this->assign('action',request()->controller());
        return view();
    }
}