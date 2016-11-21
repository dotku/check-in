<?php
namespace Service\Controller;

use Think\Controller;

class UserController extends Controller
{
    public function index()
    {
        $this->display();
    }
    public function getUserIdByUserFBID()
	{
		$model_user = D('user');
		
		$info_user = $model_user 
			-> where (array('user_fbid' => $_GET['user_fbid'])) 
			-> find();
		
		if (!$info_user) {
			$data_user['user_fbid'] =  $_GET['user_fbid'];
			$result['user'] = $model_user->add($data_user);
			echo json_encode($result);
		} else {
			$result['user'] = $info_user;
			echo json_encode($result);
		}
		
    }
}