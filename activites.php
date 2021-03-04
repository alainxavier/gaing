<!-- Titre de la page -->
<h5 class="list-group-item text-white text-center mb-2" style="background-color: #16a085;">ACTIVITES</h5>

<div class="row border m-0 pt-2 mb-3">
    <div class="col-md-4 mb-2">
        <button class="btn btn-outline-danger" type="button" disabled><i class="bi bi-calendar3"></i> Choisissez l'année scolaire</button>
    </div>
    <div class="col-md-2 mb-2">
        <select class="form-control" id="act-annees" required>
            <option>2018-2019</option>
            <option>2019-2020</option>
            <option selected>2020-2021</option>
            <option>2021-2022</option>
        </select>
    </div>
    <div class="col-md-2 mb-2">
        <button class="btn btn-outline-primary" id="btn-annees" type="button"><i class="bi bi-check-circle-fill"></i> OK</button>
    </div>
</div>

<div id="zone1" >
</div>

<script src="js/activites.js"></script>