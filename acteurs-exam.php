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
      <a class="btn btn-sm btn-outline-secondary" type="button" href="/?page=annees"><?php echo $_SESSION["annees"]; ?></a>
    </form>
</nav>
<div class="d-flex flex-column flex-md-row justify-content-center p-3">
      <h5 class="list-group-item list-group-item-action text-white text-center" style="background-color: #16a085;">ACTEURS DES EXAMENS SCOLAIRES</h5>
</div>
<div class="d-flex flex-column flex-md-row justify-content-center p-3 px-md-4 mb-3">
      <a class="list-group-item list-group-item-action"  href="/?page=acteurs&acteur=1">Président de Jurys de Correction et de Délibération</a>
      <a class="list-group-item list-group-item-action"  href="/?page=acteurs&acteur=3">Vice Président de Jurys de Correction et de Délibération</a>
      <a class="list-group-item list-group-item-action" href="/?page=acteurs&acteur=5">Commissaires de Centres de Composition</a>
</div>