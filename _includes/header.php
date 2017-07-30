<?php
	require '_config/config.php';
	include("_includes/classes/User.php");
	include("_includes/classes/Post.php");
	include("_includes/classes/Message.php");
	include("_includes/classes/Notification.php");
	include("_includes/classes/Note.php");

	//
	if (isset($_SESSION['username'])) {

		$userLoggedIn = $_SESSION['username'];
		$user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$userLoggedIn'");
		$user = mysqli_fetch_array($user_details_query);

	}

	//
	else {
		header("Location: register.php");
	}

?>

<html>
<head>
	<title>Notearise</title>

	<!-- Javascript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="_assets/js/bootstrap.js"></script>
	<script src="_assets/js/bootbox.min.js"></script>
	<script src="_assets/js/notearise.js"></script>
	<script src="_assets/js/jquery.Jcrop.js"></script>
	<script src="_assets/js/jcrop_bits.js"></script>

	<!-- CSS -->
	<link rel="stylesheet" href="_assets/css/jquery.Jcrop.css" type="text/css" />
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="_assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="_assets/css/style.css">

	<!-- Favicons -->
	<link rel="icon" href="https://notearise.com/favicon.ico" type="image/x-icon">
	<link rel="shortcut icon" href="https://notearise.com/favicon.ico" type="image/x-icon">

</head>
<body>

	<div class="top_bar">

		<div class="logo">
			<a href="index.php">Notearise</a>
		</div>

		<div class="search">

			<form action="search.php" method="GET" name="search_form">

				<input type="text" onkeyup="getLiveSearchUsers(this.value, '<?php echo $userLoggedIn; ?>')" name="q" placeholder="Search..." autocomplete="off" id="search_text_input">

				<div class="button_holder">
					<img src="_assets/images/icons/search.png">
				</div>

			</form>

			<div class="search_results"></div>

			<div class="search_results_footer_empty"></div>

		</div>
		<nav>

			<?php

				// unread messages
				$messages = new Message($con, $userLoggedIn);
				$num_messages = $messages->getUnreadNumber();

				// unread notifications
				$notifications = new Notification($con, $userLoggedIn);
				$num_notifications = $notifications->getUnreadNumber();

				// unread friend requests
				$user_obj = new User($con, $userLoggedIn);
				$num_requests = $user_obj->getNumberOfFriendRequests();

			 ?>

			<a href="<?php echo $userLoggedIn; ?>">
				<?php echo $user['first_name']; ?>
			</a>
			<a href="index.php">
				<i class="fa fa-home fa-lg"></i>
			</a>
			<a href="javascript:void(0);" onClick="getDropdownData('<?php echo $userLoggedIn; ?>', 'message')">
				<i class="fa fa-envelope fa-lg"></i>

				<?php

					//
					if ($num_messages > 0) {
						echo '<span class="notification_badge" id="unread_message">' . $num_messages . '</span>';
					}

				?>

			</a>
			<a href="javascript:void(0);" onClick="getDropdownData('<?php echo $userLoggedIn; ?>', 'notification')">
				<i class="fa fa-bell fa-lg"></i>

				<?php

					//
					if ($num_notifications > 0) {
						echo '<span class="notification_badge" id="unread_notification">' . $num_notifications . '</span>';
					}

				?>

			</a>
			<a href="requests.php">
				<i class="fa fa-users fa-lg"></i>

				<?php

					//
					if ($num_requests > 0) {
						echo '<span class="notification_badge" id="unread_requests">' . $num_requests . '</span>';
					}

				?>

			</a>
			<a href="settings.php">
				<i class="fa fa-cog fa-lg"></i>
			</a>
			<!--//
			<a href="#">
				<i class="fa fa-cog fa-lg"></i>
			</a>
			//-->
			<a href="_includes/handlers/logout.php">
				<i class="fa fa-sign-out fa-lg"></i>
			</a>



		</nav>

		<div class="dropdown_data_window" style="height:0px; border:none;"></div>
		<input type="hidden" id="dropdown_data_type" value="">

	</div>

	<script>

		var userLoggedIn = '<?php echo $userLoggedIn; ?>';

		$(document).ready(function() {

			$('.dropdown_data_window').scroll(function() {
				var inner_height = $('.dropdown_data_window').innerHeight(); //Div containing data
				var scroll_top = $('.dropdown_data_window').scrollTop();
				var page = $('.dropdown_data_window').find('.nextPageDropdownData').val();
				var noMoreData = $('.dropdown_data_window').find('.noMoreDropDownData').val();

				if ((scroll_top + innerHeight >= $('.dropdown_data_window')[0].scrollHeight) && noMoreData == 'false') {

					var pageName; // Holds name of page to send ajax request to
					var type = $('#dropdown_data_type').val();

					if(type == 'notification') {
						pageName = "ajax_load_notifications.php";
					}
					else if(type = 'message') {
						pageName = "ajax_load_messages.php";
					}

					var ajaxReq = $.ajax({
						url: "_includes/handlers/" + pageName,
						type: "POST",
						data: "page=" + page + "&userLoggedIn=" + userLoggedIn,
						cache:false,

						success: function(response) {
							$('.dropdown_data_window').find('.nextPageDropdownData').remove(); //Removes current .nextpage
							$('.dropdown_data_window').find('.noMoreDropDownData').remove(); //Removes current .nextpage

							$('.dropdown_data_window').append(response);
						}
					});
				} //End if
				return false;
			}); //End (window).scroll(function())
		});
	</script>

	<div class="wrapper">
