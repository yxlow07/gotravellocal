<?php
// core configuration
include_once "../config/core.php";

// set page title
$page_title="Terms and Conditions";

// include login checker
$require_login=true;
include_once "../login_checker.php";

// include page header HTML
include_once '../layout_head.php';

echo "<div class='col-md-12'>";

// to prevent undefined index notice
$action = isset($_GET['action']) ? $_GET['action'] : "";

// if login was successful
if($action=='login_success'){
    echo "<div class='alert alert-info' align=\"center\">";
    echo "<strong>Hi " . $_SESSION['firstname'] . $_SESSION['lastname'] . ", welcome back!</strong>";
    echo "</div>";
}

// if user is already logged in, shown when user tries to access the login page
else if($action=='already_logged_in'){
    echo "<div class='alert alert-info'>";
    echo "<strong>You are already logged in.</strong>";
    echo "</div>";
}

// content once logged in
?>
    <div class="clear-left">
    <div align="center">
        <b>Terms and Conditions</b>
    </div>
    <div>
        <ol>
            <li><a href="<?php echo $home_url . 'pages/soptable.php'?>" target="_blank">Please read the SOP by the government before travelling.</a></li>
            <li>We build security into our website to protect your information</li>
            <li>Please contact us via <a href="mailto:gotravellocal2020@gmail.com">gotravellocal@gmail.com</a></li>
            <li>We are not responsible or liable for any loss or damage of any kind during the usage of the website.</li>
            <li>Do not copy information from our website with any permission</li>
        </ol>
    </div>
    <hr>
    <div align="center">
        <b>Our Team 【 Not in specific order 】</b>
    </div>
    <div>
        <ol>
            <li>Nah How Yi</li>
            <li>Low Yu Xuan</li>
            <li>Sean Yeap Xuan Pin</li>
            <li>Ong Ming Kern</li>
            <li>Lucas Lim Boon Tek</li>
            <li>Ooi Yi Hang</li>
        </ol>
    </div>
    </div>

<?php
echo "</div>";

// footer HTML and JavaScript codes
include '../layout_foot.php';

