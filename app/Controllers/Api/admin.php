<?php

namespace App\Controllers\Api;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;




class admin extends ResourceController
{

    use ResponseTrait;
    public $db;
    public $session;
    public $date;
    public function __construct()
    {
        $this->db = db_connect();
        $this->session = session();
        $this->date = date("Y-m-d H:i:s");
        $config = new \Config\App();
        $this->TIMEZONE = $config->appTimezone;
    }

    public function savedata()
    {

        $data = $this->request->getJSON();
        $editor = $this->request->getJsonVar('data');
        $theme = $this->request->getJsonVar('theme');
        $uuid = $this->request->getJsonVar('uuid');
        $type = $this->request->getJsonVar('type');

        $user_id = $this->session->user_id;
        $where = [
            'Created_by' => $user_id,
            'UUID' => $uuid,
            'Theme' => $theme,
            'Type' => $type,
        ];
        $Booktype = $this->db->table('LifebookType')->where('id', $type)->get()->getrow();
        $Booktheme = $this->db->table('LifebookThemes')->where('id', $theme)->get()->getrow();
        $Is_stored = $this->db->table('LifebookStore')->where($where)->get()->getrow();

        if (isset($Booktype) && isset($Booktheme)) {
            $insert = [
                'Created_by' => $user_id,
                'UUID' => $uuid,
                'Theme' => $theme,
                'Type' => $type,
                'data' => $editor,
            ];
            if (isset($Is_stored)) {

                $res = $this->db->table('LifebookStore')->where($where)->update($insert);
            } else {

                $res = $this->db->table('LifebookStore')->insert($insert);
            }

            if (isset($res)) {
                return $this->respond("success", 200);
            } else {
                return $this->respond("invalid", 200);
            }
        } else {
            return $this->respond("Invalid", 203);
        }
    }
    
}
