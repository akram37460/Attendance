<?php
//this is a session file
session_start();
session_destroy();
header('Location: register/index.php');
?>