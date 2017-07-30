<?php

	require '../../_config/config.php';
	include("../classes/User.php");
	include("../classes/Note.php");
	include("../classes/Notification.php");

	if(isset($_POST['post_body'])) {

		$note = new Note($con, $_POST['user_from']);
		$note->submitNote($_POST['note_body'], $_POST['user_to']);

	}

?>
