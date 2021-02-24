<?php
if($_SESSION["scolaire"] == "examen") {
    $scolaire = "EXAMENS SCOLAIRES";
} else {
    $scolaire = "CONCOURS SCOLAIRES";
}
//echo $_SESSION["scolaire"]." et ".$_SESSION["annees"];
?>
<!--Navigation -->
<nav class="navbar navbar-light">
    <form class="form-inline">
      <a class="btn btn-sm btn-outline-secondary" type="button" href="/">ACCUEIL</a>
      <a class="btn btn-sm btn-outline-secondary" type="button" href="/"><?php echo $scolaire; ?></a>
    </form>
</nav>
<!--Session 2 - choix des années-->
<!--Contenu -->
<div class="d-flex flex-column flex-md-row justify-content-center p-3 px-md-4 mb-3">
  <div class="my-2 my-md-0 mr-md-3">
    <a class="btn btn-info btn-lg mb-1" href="/?page=<?php echo $_SESSION["scolaire"]; ?>&annees=2017-2018" >2017-2018</a>
    <a class="btn btn-info btn-lg mb-1" href="/?page=<?php echo $_SESSION["scolaire"]; ?>&annees=2018-2019">2018-2019</a>
    <a class="btn btn-info btn-lg mb-1" href="/?page=<?php echo $_SESSION["scolaire"]; ?>&annees=2019-2020">2019-2020</a>
    <a class="btn btn-info btn-lg mb-1" href="/?page=<?php echo $_SESSION["scolaire"]; ?>&annees=2020-2021">2020-2021</a>
    <a class="btn btn-info btn-lg mb-1" href="/?page=<?php echo $_SESSION["scolaire"]; ?>&annees=2021-2022">2021-2022</a>
    
  </div>
</div>