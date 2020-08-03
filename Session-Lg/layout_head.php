<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Travel in Malaysia, visit the most popular places in Malaysia!">

    <!-- set the page title, for seo purposes too -->
    <title><?php echo isset($page_title) ? strip_tags($page_title) : "Gotravellocal"; ?></title>

    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <link rel="shortcut icon" href="<?php echo $home_url . "images/Logo.ico"?>" type="image/x-icon">

    <!-- admin custom CSS -->
    <link href="<?php echo $home_url . "libs/css/customer.css" ?>" rel="stylesheet" />
    <link href="<?php echo $home_url . "pages/css/home.css" ?>" rel="stylesheet" />

</head>

<body>

    <!-- include the navigation bar -->
    <?php include_once 'navigation.php'; ?>

    <!-- container -->
    

