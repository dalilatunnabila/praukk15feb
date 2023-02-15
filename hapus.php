<?php
include("koneksi.php");

$id=$_GET['id_dvd'];

$sql= "DELETE FROM tb_dvd where id_dvd='$id'";
$query= mysqli_query($koneksi,$sql);

$sql= "DELETE FROM tb_penyewa where id_penyewa='$id'";
$query= mysqli_query($koneksi,$sql);

if($query){
    header("location:tampil-data.php?status=sukses");
}else{
    die("akses dilarang");
}
?>