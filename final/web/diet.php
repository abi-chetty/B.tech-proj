<?php
session_start();
    $con = mysqli_connect("localhost","root","","odas");
    $def =  $_SESSION['deficiency'];
    $day = date("N");
    // Check connection
    if (mysqli_connect_errno())
      {
      echo "Failed to connect to MySQL: " . mysqli_connect_error();
      }
//------------------------------------------------------------------------------------------------------------------------//
//                                               daily diet for user
//------------------------------------------------------------------------------------------------------------------------//
      $sql="SELECT * FROM diet WHERE deficiency='".$def."' AND day='".$day."'";
      $result=mysqli_query($con,$sql);
      $row = mysqli_fetch_row($result);
?>

<!--
//------------------------------------------------------------------------------------------------------------------------//
//display daily diet in cards
//------------------------------------------------------------------------------------------------------------------------//
-->
<div class="row">
    <div class="col s12">
        <div class="card shell">
            <div class="card-content">
                <span class="card-title"><strong>Breakfast</strong></span>
                <p>
                    <?php echo $row[3];?>
                </p>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col s12">
        <div class="card shell">
            <div class="card-content">
                <span class="card-title"> <strong>Lunch</strong></span>
                <p>
                    <?php echo $row[4];?>
                </p>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col s12">
        <div class="card shell">
            <div class="card-content">
                <span class="card-title"><strong>dinner</strong></span>
                <p>
                    <?php echo $row[5];?>
                </p>
            </div>

        </div>
    </div>
</div>
