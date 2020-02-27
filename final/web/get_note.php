<?php

//------------------------------------------------------------------------------------------------------------------------//
// write and update notes
//------------------------------------------------------------------------------------------------------------------------//

    //identfy the user file
    session_start();
    $my_file = 'hints/'.$_SESSION['mail'].'.txt';
    $handle = fopen($my_file, 'w') or die('Cannot open file:  '.$my_file);

    //write the data from website note onto file
    $data = $_POST['notes'];
    fwrite($handle, $data);
    fclose($handle);

    //write the data frome file back onto the website note
    $handle = fopen($my_file, 'r');
    $dt=fread($handle,filesize($my_file));
    echo $dt;
    fclose($handle);
?>
