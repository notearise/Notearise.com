<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="_assets/css/style.css">
</head>
<body>

	<style>
		* {
			font-family: 'Montserrat', sans-serif;
			font-size: 12px;
			background-color: #eeeeee;
		}
	</style>

	<?php
	require '_config/config.php';
	include("_includes/classes/User.php");
	include("_includes/classes/Note.php");
	include("_includes/classes/Notification.php");

	if (isset($_SESSION['username'])) {
		$userLoggedIn = $_SESSION['username'];
		$user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$userLoggedIn'");
		$user = mysqli_fetch_array($user_details_query);
	}
	else {
		header("Location: register.php");
	}

	?>
	<script>
		function toggle() {
			var element = document.getElementById("comment_section");

			if(element.style.display == "block")
				element.style.display = "none";
			else
				element.style.display = "block";
		}
	</script>

	<?php
	//Get id of note
	if(isset($_GET['note_id'])) {
		$note_id = $_GET['note_id'];
	}

	$user_query = mysqli_query($con, "SELECT added_by, user_to FROM notes WHERE id='$note_id'");
	$row = mysqli_fetch_array($user_query);

	$posted_to = $row['added_by'];
	$user_to = $row['user_to'];

	if(isset($_POST['noteComment' . $note_id])) {
		$note_body = $_POST['note_body'];
		$note_body = mysqli_escape_string($con, $note_body);
		$date_time_now = date("Y-m-d H:i:s");
		$insert_note = mysqli_query($con, "INSERT INTO comments VALUES (NULL, '$note_body', '$userLoggedIn', '$posted_to', '$date_time_now', 'no', '$note_id')");

		//
		if ($posted_to != $userLoggedIn) {
			$notification = new Notification($con, $userLoggedIn);
			$notification->insertNotification($note_id, $posted_to, "comment");
		}

		//
		if ($user_to != 'none' && $user_to != $userLoggedIn) {
			$notification = new Notification($con, $userLoggedIn);
			$notification->insertNotification($note_id, $user_to, "profile_comment");
		}

		//
		$get_commenters = mysqli_query($con, "SELECT * FROM comments WHERE note_id = '$note_id'");
		$notified_users = array();

		//
		while($row = mysqli_fetch_array($get_commenters)) {

			if($row['posted_by'] != $posted_to && $row['posted_by'] != $user_to && $row['posted_by'] != $userLoggedIn && !in_array($row['posted_by'], $notified_users)) {

				$notification = new Notification($con, $userLoggedIn);
				$notification->insertNotification($note_id, $row['posted_by'], "comment_non_owner");

				array_push($notified_users, $row['posted_by']);
			}
		}

		echo "<p>Note comment posted! </p>";
	}
	?>
	<form action="comment_frame_note.php?note_id=<?php echo $note_id; ?>" id="comment_form" name="noteComment<?php echo $note_id; ?>" method="POST">
		<textarea name="note_body"></textarea>
		<input type="submit" name="noteComment<?php echo $note_id; ?>" value="Note">
	</form>

	<!-- Load comments -->

	<?php
		$get_comments = mysqli_query($con,"SELECT * FROM comments WHERE note_id = '$note_id' ORDER BY date_added DESC");
		$count = mysqli_num_rows($get_comments);

		if ($count !=0) {
			while($comment = mysqli_fetch_array($get_comments)) {
				$comment_body = $comment['body'];
				$posted_to = $comment['posted_to'];
				$posted_by = $comment['posted_by'];
				$date_added = $comment['date_added'];
				$removed = $comment['removed'];

				// Timeframe - Begin
				$date_time_now = date("Y-m-d H:i:s");
				$start_date = new DateTime($date_added); //Time of note
				$end_date = new DateTime($date_time_now); //Current time
				$interval = $start_date->diff($end_date); //Difference between dates
				if($interval->y >= 1) {
					if($interval == 1)
						$time_message = $interval->y . " year ago"; //1 year ago
					else
						$time_message = $interval->y . " years ago"; //1+ year ago
				}
				else if ($interval-> m >= 1) {
					if($interval->d == 0) {
						$days = " ago";
					}
					else if($interval->d == 1) {
						$days = $interval->d . " day ago";
					}
					else {
						$days = $interval->d . " days ago";
					}


					if($interval->m == 1) {
						$time_message = $interval->m . " month". $days;
					}
					else {
						$time_message = $interval->m . " months". $days;
					}

				}
				else if($interval->d >= 1) {
					if($interval->d == 1) {
						$time_message = "Yesterday";
					}
					else {
						$time_message = $interval->d . " days ago";
					}
				}
				else if($interval->h >= 1) {
					if($interval->h == 1) {
						$time_message = $interval->h . " hour ago";
					}
					else {
						$time_message = $interval->h . " hours ago";
					}
				}
				else if($interval->i >= 1) {
					if($interval->i == 1) {
						$time_message = $interval->i . " minute ago";
					}
					else {
						$time_message = $interval->i . " minutes ago";
					}
				}
				else {
					if($interval->s < 30) {
						$time_message = "Just now";
					}
					else {
						$time_message = $interval->s . " seconds ago";
					}
				}
				// Timeframe - End

				$user_obj = new User($con, $posted_by);

				//PHP CLOSE FOR MARKUP BELOW ?>

				<div class="comment_section">
					<a href="<?php echo $posted_by; ?>" target="_parent"><img src="<?php echo $user_obj->getProfilePic(); ?>" title="<?php echo $posted_by;?>" class="comment_profile_pic"></a>
					<a href="<?php echo $posted_by; ?>" target="_parent"><b><?php echo $user_obj->getFirstandLastName(); ?></b></a>
					&nbsp;
					<?php echo $time_message . "<br/>" . $comment_body; ?>
					<hr>
				</div>

				<?php // PHP REOPEN

			}
		}

		else {
			echo "<div>No Comments to show!</div>";
		}
	?>




</body>
</html>
