<?php
  $con = mysqli_connect("localhost","root","","odas");
  $result =  mysqli_query($con,"select * from suggestions where (cure is null or cure='')");
  $row = mysqli_fetch_row($result);  
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ADMIN PREDICTION</title>
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
//                                               unpredicted table
//------------------------------------------------------------------------------------------------------------------------//
-->
    <div class='row'>
        <h3>FOODS SUGGESTED BY USERS - UNPREDICTED :</h3>
        <table>
            <tr class="materialize-red-text white">
                <th>DISEASE</th>
                <th>FOOD</th>
            </tr>
            <tr>
                <th>
                    <?php 
                    if ($row[1]==1)
                    {
                        echo "KIDNEY";
                    }
                    else if ($row[1]==2)
                    {
                        echo "HEART";
                    }
                    else if ($row[1]==3)
                    {
                        echo "SUGAR";
                    }
                    
                    ?>
                </th>

                <th>
                    <?php echo $row[2]; ?>
                </th>
            </tr>
        </table>
    </div>

    <form method="post" action="admin-prediction.php">
        <button type="submit" name="submit_suggestion" class="btn-large">MAKE PREDICTION</button>
    </form>

    <?php
        $curedresult =  mysqli_query($con,"select * from suggestions where !(cure is null or cure='')");
        $curedrow = mysqli_fetch_all($curedresult);
        $curedlen = mysqli_num_rows($curedresult);

//------------------------------------------------------------------------------------------------------------------------//
//                                             jar file execution
//------------------------------------------------------------------------------------------------------------------------//

    if(isset($_POST['submit_suggestion']))
   {    
//------------------------------------------------------------------------------------------------------------------------//
//                                              weka for disease 1
//------------------------------------------------------------------------------------------------------------------------//
        if($row[1]==1) 
        {
            $my_file = 'weka/disease1/test1.arff';
            $handle = fopen($my_file, 'w') or die('Cannot open file:  '.$my_file);
            $data = "@relation heart1

@attribute Energy numeric
@attribute Moisture numeric
@attribute Protein numeric
@attribute Fat numeric
@attribute Minerals numeric
@attribute Fibre numeric
@attribute Carbos numeric
@attribute Calcium numeric
@attribute Phosphorus numeric
@attribute Iron numeric
@attribute cure {yes,no}

@data

";
            for($l=3;$l<=13;$l++)
            {
             $data.=$row[$l].',' ;   
            }
            $data.="?";
            fwrite($handle, $data);
            fclose($handle);
            exec('java -jar disease1predic.jar', $output, $return);
            $id= $row[0];
            mysqli_query($con,"UPDATE suggestions SET cure = '$output[0]' WHERE id = $id");
        }
//------------------------------------------------------------------------------------------------------------------------//
//                                              weka for disease 2
//------------------------------------------------------------------------------------------------------------------------//
        elseif($row[1]==2)
        {
         $my_file = 'weka/heart1/test1.arff';
            $handle = fopen($my_file, 'w') or die('Cannot open file:  '.$my_file);
            $data = "@relation heart1

@attribute Energy numeric
@attribute Moisture numeric
@attribute Protein numeric
@attribute Fat numeric
@attribute Minerals numeric
@attribute Fibre numeric
@attribute Carbos numeric
@attribute Calcium numeric
@attribute Phosphorus numeric
@attribute Iron numeric
@attribute cure {yes,no}

@data

";
            for($l=3;$l<13;$l++)
            {
             $data.=$row[$l].',' ;   
            }
            $data.="?";
            fwrite($handle, $data);
            fclose($handle);
            exec('java -jar heartpredic.jar', $output, $return);
            $id= $row[0];
            mysqli_query($con,"UPDATE suggestions SET cure = '$output[0]' WHERE id = $id");
            
        }
//------------------------------------------------------------------------------------------------------------------------//
//                                               weka for disease 3
//------------------------------------------------------------------------------------------------------------------------//
        elseif($row[1]==3)
        {
            $my_file = 'weka/disease3/test1.arff';
            $handle = fopen($my_file, 'w') or die('Cannot open file:  '.$my_file);
            $data = "@relation heart1

@attribute Energy numeric
@attribute Moisture numeric
@attribute Protein numeric
@attribute Fat numeric
@attribute Minerals numeric
@attribute Fibre numeric
@attribute Carbos numeric
@attribute Calcium numeric
@attribute Phosphorus numeric
@attribute Iron numeric
@attribute cure {yes,no}

@data

";
            for($l=3;$l<=13;$l++)
            {
             $data.=$row[$l].',' ;   
            }
            $data.="?";
            fwrite($handle, $data);
            fclose($handle);
            exec('java -jar disease3predic.jar', $output, $return);
            $id= $row[0];
            mysqli_query($con,"UPDATE suggestions SET cure = '$output[0]' WHERE id = $id");
        }
       
//------------------------------------------------------------------------------------------------------------------------//
//                                               end for
//------------------------------------------------------------------------------------------------------------------------//
        
header("Location: ./admin-prediction.php"); 
   }

//------------------------------------------------------------------------------------------------------------------------//
//                                                 table after prediction
//------------------------------------------------------------------------------------------------------------------------//

        echo " <div class='row'>
        <h3>RESULTS OF FOODS SUGGESTED BY USERS</h3>
        <table>
            <tr class='materialize-red-text white'>
                <th>S.NO</th>
                <th>DISEASE</th>
                <th>FOOD</th>
                <th>RESULT</th>
            </tr>";
    
        for($j=0;$j<$curedlen;$j++){
                $res=$curedrow[$j][13];
            echo "<tr class='$res white-text'>
                <th>";
            echo $j+1;
            echo"</th>
                <th>";
                    if ($curedrow[$j][1]==1)
                    {
                        echo "KIDNEY";
                    }
                    else if ($curedrow[$j][1]==2)
                    {
                        echo "HEART";
                    }
                    else if ($curedrow[$j][1]==3)
                    {
                        echo "SUGAR";
                    }
                    
            echo "</th>

                <th>";
            echo $curedrow[$j][2];
            echo "</th>

                <th>";
            echo $curedrow[$j][13];
            echo "</tr>";
            
        }
        echo "</table>
    </div>"; 
     
    ?>
</body>
<style>
    table,
    th,
    tr {
        margin: auto;
        border: 1px solid black;
        padding: 3px 7px;
    }

    .btn {
        margin: 2% 48%;
    }

    body {
        padding: 0 6%;
    }

    .yes {
        background-color: #00acc1;
    }

    .no {
        background-color: #d50000;
    }

</style>

</html>
