<?php

/**
 * Created by PhpStorm.
 * User: ViviPro
 * Date: 8/1/2016
 * Time: 12:10 AM
 */
class BaseModel extends \Phalcon\Mvc\Model
{
    /***
     * Hàm map array vào object model của phalcon
     * @param $arr
     */
    public function map_object($arr){
        foreach($arr as $key=>$val) $this->{$key} = $val;
        return $this;
    }
}