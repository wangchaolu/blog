<?php
/**
 * 广告友链.
 */

namespace app\index\model;
use think\Model;
use traits\model\SoftDelete;

class Ad extends Model
{
    use SoftDelete;
    protected $table = 'rcs_ad';
    protected $createTime = 'created_at';
    protected $updateTime = 'updated_at';
    protected $deleteTime='deleted_at';
    protected $autoWriteTimestamp = true;
    protected $field = true;
}