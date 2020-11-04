<!--Session 3- choix des postes-->
<?php
  $_SESSION["annees"] = $_REQUEST["annees"];
?>
<!--Navigation -->
<nav class="navbar navbar-light" >
  <form class="form-inline">
    <a href="/" class="btn btn-sm btn-outline-secondary" type="button">ACCUEIL</a>
    <a href="/" class="btn btn-sm btn-outline-secondary" type="button">CONCOURS SCOLAIRES</a>
    <button class="btn btn-sm btn-outline-secondary" type="button"><?php echo $_SESSION["annees"]; ?></button>
  </form>
</nav>
<div class="row my-5">
    <div class="list-group col-3"></div>
    <div class="list-group col-6">
      <a class="list-group-item list-group-item-action text-white disabled" style="background-color: #16a085;">ACTEURS</a>
      <a class="list-group-item list-group-item-action"  href="/?page=acteurs&acteur=6">Commissaires de Composition</a>
      <a class="list-group-item list-group-item-action"  href="/?page=acteurs&acteur=4">Commissaires de Correction</a>
      <a class="list-group-item list-group-item-action" href="/?page=acteurs&acteur=2">Présidents de jurys de délibération</a>
    </div>
    <div class="list-group col-3"></div>
  </div>