<?php
  //session_start();
  header("Location: ".BASE_URL."login");
  session_unset('login');
  session_destroy();
  echo "string";
?>