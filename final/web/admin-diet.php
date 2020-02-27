<?php
  $con = mysqli_connect("localhost","root","","odas");
  $result =  mysqli_query($con,"select * from diet");
  $row = mysqli_fetch_all($result);
  $rowlen = mysqli_num_rows($result);

//------------------------------------------------------------------------------------------------------------------------//
//                                               update diet table
//------------------------------------------------------------------------------------------------------------------------//

    if(isset($_POST['submit']))
    {
        $disease = $_POST['disease'];
        $day = $_POST['day'];
        $time = $_POST['time'];
        $food = $_POST['food'];
        mysqli_query($con,"UPDATE diet SET $time = '$food' WHERE deficiency = $disease AND day = $day ");
        header("Location: ./admin-diet.php"); 
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ADMIN DIET</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="./css/materialize.css" media="screen,projection" />
    <link rel="stylesheet" href="./css/style.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js">
    </script>
</head>

<body class="purple lighten-3">
    <!--
//------------------------------------------------------------------------------------------------------------------------//
//                                                 display diet table
//------------------------------------------------------------------------------------------------------------------------//
-->
    <h5 class="center-align">DIET CHART CONTROLES :</h5>
    <div class='row'>
        <div class="col s8">
            <table>
                <tr class="materialize-red-text white">
                    <th>S.NO</th>
                    <th>DISEASE</th>
                    <th>DAY</th>
                    <th>BREAKFAST</th>
                    <th>LUNCH</th>
                    <th>DINNER</th>
                </tr>
                <?php 
             for($i=0;$i<$rowlen;$i++):
            ?>

                <tr class="<?php if($row[$i][1]==1){echo " purple darken-1";} elseif($row[$i][1]==2) {echo " red darken-1" ;} elseif($row[$i][1]==3) {echo "light-blue darken-3" ;} ?> white-text">
                    <th>
                        <?php echo $i+1; ?>
                    </th>
                    <th>
                        <?php 
                     if($row[$i][1]==1)
                        echo "kidney";
                    elseif($row[$i][1]==2)
                        echo "heart";
                    elseif($row[$i][1]==3)
                        echo "sugar";
                    ?>
                    </th>
                    <th>
                        <?php echo $row[$i][2]; ?>
                    </th>
                    <th>
                        <?php echo $row[$i][3]; ?>
                    </th>
                    <th>
                        <?php echo $row[$i][4]; ?>
                    </th>
                    <th>
                        <?php echo $row[$i][5]; ?>
                    </th>
                </tr>
                <?php 
            endfor;
            ?>
            </table>
        </div>
        <!--
//------------------------------------------------------------------------------------------------------------------------//
//                                         form to update diet table
//------------------------------------------------------------------------------------------------------------------------//
-->
        <div class="col s4 white right" id="form">
            <form method="post" action="admin-diet.php">
                <div class="row">
                    <label>select disease</label>
                    <select name="disease" class="browser-default">
                        <option value="1">KIDNEY</option>
                        <option value="2">HEART</option>
                        <option value="3">SUGAR</option>
                    </select>
                </div>
                <div class="row">
                    <label>select day</label>
                    <select name="day" class="browser-default">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                    </select>
                </div>
                <div class="row">
                    <label>select time</label>
                    <select name="time" class="browser-default">
                        <option value="breakfast">breakfast</option>
                        <option value="lunch">lunch</option>
                        <option value="dinner">dinner</option>
                    </select>
                </div>
                <div class="row">
                    <label>enter food</label>
                    <input type="text" name="food">
                </div>
                <button type="submit" name="submit" class="btn">UPDATE</button>
            </form>
        </div>


    </div>


</body>
<style>
    table,
    th,
    tr {
        border: 1px solid black;
        padding: 3px 7px;
    }

    #form {
        border-radius: 10px;
        padding: 25px;
    }

</style>

</html>
