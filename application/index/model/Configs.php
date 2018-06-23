<?php
/**
 * 网站配置.
 */
namespace app\index\model;
use think\Model;
use traits\model\SoftDelete;

class Configs extends Model
{
    use SoftDelete;
    protected $table = 'rcs_config';
    protected $createTime = 'created_at';
    protected $updateTime = 'updated_at';
    protected $deleteTime = 'deleted_at';
    protected $autoWriteTimestamp = true;
    protected $field = true;
}