<?php
// core configuration
include_once "config/core.php";
 
// set page title
$page_title="Home";
 
// include login checker
$require_login=true;
include_once "login_checker.php";
 
// include page header HTML
include_once 'layout_head.php';
 
echo "<div class='col-md-12'>";
 
    // to prevent undefined index notice
    $action = isset($_GET['action']) ? $_GET['action'] : "";
 
    // if login was successful
    if($action=='login_success'){
        echo "<div class='alert alert-info' align=\"center\">";
            echo "<strong>Hi " . $_SESSION['firstname'] . ' ' . $_SESSION['lastname'] . ", welcome back!</strong>";
        echo "</div>";
    }
 
    // if user is already logged in, shown when user tries to access the login page
    else if($action=='already_logged_in'){
        echo "<div class='alert alert-info' align=\"center\">";
            echo "<strong>You are already logged in.</strong>";
        echo "</div>";
    }
 
    // content once logged in
    include_once "./pages/leftmenu.php";
    

 
echo "</div>";
 
// footer HTML and JavaScript codes
include 'layout_foot.php';
