<?php

namespace App\Controllers\admin;

use App\Controllers\General;
use App\Models\Product_type;
use App\Models\Product_category;
use App\Models\Product_sub_category;
use Config\App;

class Admin extends General
{

    public function __construct()
    {
        parent::__construct();
    }
    public function index()
    {
        return $this->dashboard();
    }
    public function dashboard()
    {
        $this->data['title'] = "Dashboard";
        $this->data['types'] = $this->db->table('LifebookType')->get()->getResult();
        return view('admin/dashboard', $this->data);
    }
    public function Type($id)
    {
        $this->data['title'] = "Themes";
        $type = $this->db->table('LifebookType')->where('id', $id)->get()->getrow();

        if (isset($type)) {
            $this->data['themes'] = $this->db->table('LifebookThemes')->get()->getResult();
            $this->data['type'] = $type;
            $where = [
                'Created_by' => $this->session->user_id,
                'Type' => $type->id,
            ];
            $this->data['tmp']=$where;
            $this->data['Books'] = $this->db->table('LifebookStore')->where($where)->get()->getResult();
            
            return view('admin/Themes', $this->data);
        }
    }

    public function EditTheme($type, $theme)
    {
        $Booktype = $this->db->table('LifebookType')->where('id', $type)->get()->getrow();
        $Booktheme = $this->db->table('LifebookThemes')->where('id', $theme)->get()->getrow();
        if (isset($Booktype) && isset($Booktheme)) {
            $this->data['title'] = "Edit Themes | " . $Booktheme->Name;
            $this->data['type'] = $Booktype->id;
            $this->data['theme'] = $Booktheme->id;
            if ($Booktheme->id == 1) {
                return view('admin/theme/theme1', $this->data);
            } else {
                return view('admin/theme/theme1', $this->data);
            }
        }
    }

    public function PreviewBook($uuid)
    {
        
        $where=[
            'UUID'=>$uuid,
            'Created_by'=>$this->session->user_id,
        ];
        $Book = $this->db->table('LifebookStore')->where($where)->get()->getrow();
        if (isset($Book)) {
            $this->data['title'] = "Life Book | Edit ";
            $this->data['type'] = $Book->Type;
            $this->data['theme'] = $Book->Theme;
            $this->data['Book'] = $Book;

            return view('admin/theme/edit', $this->data);
            
        }
    }
}
