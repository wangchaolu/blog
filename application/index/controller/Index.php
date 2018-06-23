<?php
/**
 * 首页
 */
namespace app\index\controller;
use app\index\model\Ads;
use app\index\model\Contents;

class Index extends Base
{
    /* ========== 初始化 ========== */
    public function _initialize()
    {
        parent::_initialize();
    }

    /*======= 首页 ======*/
    public function index()
    {
        /*------ 首页banner图 ------*/
        $banner_info = Ads::field(['img_url'])->where(['type'=>1,'status'=>1])->select();
        $this->assign('banner_info',$banner_info);
        /*------ 文章信息 ------*/
        $content_top = Contents::field(['title','content'])->where(['is_top'=>1])->find();
        $this->assign('content_top',$content_top);

        $content_info = Contents::where(['is_top'=>0])->limit(0,6)->order(['created_at'=>'desc'])->select();
        $this->assign('content_info',$content_info);
        /*------ 网站配置 ------*/
        $this->assign('config_info',$this->config_info);

        $this->assign('action',request()->controller());
        return view();
    }
}
