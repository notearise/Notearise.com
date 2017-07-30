<?php

	require '../../_config/config.php';

	if(isset($_GET['note_id'])) {

		$note_id = $_GET['note_id'];

	}


	if(isset($_POST['result'])) {

		if($_POST['result'] == 'true')
			$query = mysqli_query($con, "UPDATE notes SET deleted = 'yes' WHERE id = '$note_id'");
	}

?>
