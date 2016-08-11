<?php

/**
 * Created by PhpStorm.
 * User: ViviPro
 * Date: 8/10/2016
 * Time: 10:37 PM
 */
class User extends BaseModel
{
    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var string
     */
    public $username;

    /**
     *
     * @var string
     */
    public $password;
    public $email;
    public $sdt;
    public $status;
    public $createdate;
    public $point;
    public $fullname;
    public $address;
    public $cmnd;
    public $mypointevent;
    public $count_play;

    public function initialize()
    {
        $this->setConnectionService('dbauth');
    }
    public function getSource()
    {
        return 'tblaccount';
    }
}