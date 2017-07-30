<?php
include("../../_config/config.php");
include("../classes/User.php");
include("../classes/Note.php");

$limit = 10; //Number of notes to be loaded per call

$notes = new Note($con, $_REQUEST['userLoggedIn']);
$notes->loadNotesFriends($_REQUEST, $limit);
?>
