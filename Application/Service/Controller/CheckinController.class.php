<?php
namespace Service\Controller;

use Think\Controller;

class CheckinController extends Controller
{
    public function index()
    {
		if ($_POST) {
			$model_checkin = D('checkin');
			if ( $model_checkin->create() )
			{
				$result['checkin']['checkin_id'] = $model_checkin->add();
				echo json_encode($result);
			}
		} else {
			$this->display();
		}
    }
	
    public function getCheckinListByUserFBID()
	{
		$model_user = D('user');
    	$map['user_fbid'] = intval($_GET['uid']);
		$info_user = $model_user->where($map)->find();
		
		if (!$info_user) {
			// try to create new user name
			$user_id = $model_user->add($map);
		} else {
			$user_id = $info_user['user_id'];
		}
		
		echo '<br/>getCheckinByFBUserID()';
    }
	public function getCheckinListByUserId()
	{
		$model_checkin = D('checkin');
    	$map_checkin['user_id'] = intval($_GET['user_id']);
		$list_checkin = $model_checkin
			-> where($map_checkin)
			-> order('checkin_id desc')
			-> limit(30)
			-> select();
		$result = array(
			'list_checkin' => $list_checkin
		);
		echo json_encode($result);
    }
}