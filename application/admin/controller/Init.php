<?php
/**
 * 后台
 */
namespace app\admin\controller;
use think\Controller;

class Init extends Controller
{
    public function _initialize() {
        parent::_initialize();
        $this->is_login();
    }
}