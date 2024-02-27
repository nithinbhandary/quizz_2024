
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript" src="js/sweetalert.js"></script>
<?php 
session_start();
//header("location:home.php");
//var_dump(isset($_SESSION['examineeSession']['examineenakalogin']));
//die();
//session_start();
if(isset($_SESSION['examineeSession']['examineenakalogin']) == true) {
    //echo "KOOO";
    header("location:home.php");
    
}



 ?>

<?php 
if (!isset($_SESSION['examineeSession']['examineenakalogin'])) {
    //echo "s";
    header("location:../login/index");

}


 ?>


