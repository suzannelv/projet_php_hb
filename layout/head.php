<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="../assets/img/favicon.ico" type="image/x-icon">
  <script src="https://cdn.tailwindcss.com?plugins=typography"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css"  rel="stylesheet" />
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  
  <link rel="stylesheet" href="../assets/css/style.css">
  <title><?php $pageTitle ?? "Lolangues" ?></title>
</head>
<body>
  <header>
    <?php require_once __DIR__ . "/nav.php"; ?>
  </header>