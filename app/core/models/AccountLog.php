<?php

class AccountLog extends BaseModel
{

    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var integer
     */
    public $userid;

    /**
     *
     * @var string
     */
    public $item_key;

    /**
     *
     * @var integer
     */
    public $create_at;

    /**
     *
     * @var integer
     */
    public $level;

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'account_log';
    }
    public function initialize()
    {
        $this->hasOne('item_key', 'Items', 'item_keys',array('alias' => 'Items'));
    }
    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return AccountLog[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return AccountLog
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
