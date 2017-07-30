<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="_assets/css/style.css">
</head>
<body>

	<style>
		* {
			font-family: 'Montserrat', sans-serif;
		}

		body {
			background-color: transparent;
		}

		form {
		  position: absolute;
		  top: 0;
		}
	</style>

	<?php
		require '_config/config.php';
		include("_includes/classes/User.php");
		include("_includes/classes/Note.php");
		include("_includes/classes/Notification.php");

		// ...
		if (isset($_SESSION['username'])) {
			$userLoggedIn = $_SESSION['username'];
			$user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$userLoggedIn'");
			$user = mysqli_fetch_array($user_details_query);
		}
		else {
			header("Location: register.php");
		}

		// Get id of note
		if(isset($_GET['note_id'])) {
			$note_id = $_GET['note_id'];
		}

		//
	  $get_likes = mysqli_query($con, "SELECT likes,added_by FROM notes WHERE id='$note_id'");
	  $row = mysqli_fetch_array($get_likes);
	  $total_likes = $row['likes'];
	  $user_liked = $row['added_by'];

  	$user_details_array = mysqli_query($con,"SELECT * FROM users WHERE username = '$user_liked'");
  	$row = mysqli_fetch_array($user_details_query);
		$total_user_likes = $row['num_likes'];

	  // Like button
		if(isset($_POST['like_button'])) {
			$total_likes++;
			$query = mysqli_query($con, "UPDATE notes SET likes = '$total_likes' WHERE id = '$note_id'");
			$total_user_likes++;
			$user_likes = mysqli_query($con, "UPDATE users SET num_likes = '$total_user_likes' WHERE username = '$user_liked'");
			$insert_user = mysqli_query($con, "INSERT INTO likes VALUES (NULL,'$userLoggedIn','$note_id')");

			// Insert notification
			if($user_liked != $userLoggedIn) {
				$notification = new Notification($con, $userLoggedIn);
				$notification->insertNotification($note_id, $user_liked, "like");
			}
		}

		// Unlike button
		if(isset($_POST['unlike_button'])) {
			$total_likes--;
			$query = mysqli_query($con, "UPDATE notes SET likes = '$total_likes' WHERE id = '$note_id'");
			$total_user_likes--;
			$user_likes = mysqli_query($con, "UPDATE users SET num_likes = '$total_user_likes' WHERE username = '$user_liked'");
			$insert_user = mysqli_query($con, "DELETE FROM likes WHERE username = '$userLoggedIn' AND note_id = '$note_id'");

			// Insert notification
		}

	  // Check for previous likes
	  $check_query = mysqli_query($con,"SELECT * FROM likes WHERE username = '$userLoggedIn' AND note_id = '$note_id'");
	  $num_rows = mysqli_num_rows($check_query);

		// ...
	  if($num_rows > 0) {
	    echo '<form action="like_note.php?note_id=' . $note_id . '" method="POST">
							<input type="submit" class="comment_like" name="unlike_button" value="Unlike">
							<div class="like_value">
								'. $total_likes .' Likes
							</div>
						</form>
					';
	  }
	  else {
			echo '<form action="like_note.php?note_id=' . $note_id . '" method="POST">
							<input type="submit" class="comment_like" name="like_button" value="Like">
							<div class="like_value">
								'. $total_likes .' Likes
							</div>
						</form>
					';
	  }

  ?>

</body>
</html>
