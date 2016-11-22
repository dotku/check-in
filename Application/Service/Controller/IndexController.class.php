<?php
namespace Service\Controller;

use Think\Controller;

class IndexController extends Controller
{
    public function index()
    {
        $this->display();
    }
    public function timezone()
    {
        var_dump(date(DATE_RFC2822));
        // var_dump(date_default_timezone_get());
    }
}