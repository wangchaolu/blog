<?php
/**
 * 配置初始化
 */

namespace app\index\controller;

use think\Controller;

class Base extends Controller
{
    public $config_info;
    /* ========== 初始化 ========== */
    public function _initialize()
    {
        /* ++++++++++ 配置信息 ++++++++++ */
        $config_model = model('Configs');
        $config_info = $config_model->find();
        $this->config_info = $config_info;
    }
}