jQuery(document).ready(function() {
    //exécution après interaction
    jQuery("#btn-annees").click(function () {
        var annees = jQuery('#act-annees').val();
    //chargement des données activités
    jQuery.getJSON("/activiter.php?annees=" + annees, function(data) {
        var nombre = data["nombre"];
        if(nombre == 0) {
            jQuery('#zone1').html('<div class="d-grid gap-2 border my-5 py-5"><h4 class="text-secondary text-center">Aucune valeur à afficher !</h4></div>');
        } else {
            jQuery('#zone1').html('<div id="liste-acteur"  style="overflow: scroll; overflow-x: hidden; height: 400px;"></div>');
            
            jQuery('#liste-acteur').html('<table class="table table-striped table-bordered table-hover text-center table-sm"><thead><tr><th scope="col">N°</th><th scope="col">Nom</th><th scope="col">Prénoms</th><th scope="col">Matricule</th><th scope="col">Filière</th> <th scope="col">Genre</th><th scope="col">Qualité</th><th scope="col">Centre d\'activité</th><th scope="col">Contact</th></tr></thead><tbody id="activity-value"></tbody></table>');
        
        for (var i = 1; i <= nombre; i++) {
            jQuery("#activity-value").append('<tr id="ligne' + i + '"></tr>');
            jQuery('#ligne' + i).append("<td>" + i + "</td>");
            jQuery('#ligne' + i).append("<td class='text-start'>" + data[i]["nom"] + "</td>");
            jQuery('#ligne' + i).append("<td class='text-start'>" + data[i]["prenoms"] + "</td>");
            jQuery('#ligne' + i).append("<td class='text-start'>" + data[i]["matricule"] + "</td>");
            jQuery('#ligne' + i).append("<td class='text-start'>" + data[i]["filiere"] + "</td>");
            jQuery('#ligne' + i).append("<td class='text-start'>" + data[i]["genre"] + "</td>");
            jQuery('#ligne' + i).append("<td class='text-start'>" + data[i]["fonction"] + "</td>");
            jQuery('#ligne' + i).append("<td class='text-start'>" + data[i]["lieu_intervention"] + "</td>");
            jQuery('#ligne' + i).append("<td class='text-start'>" + data[i]["contact"] + "</td>");
        }
        }
        
    });
    });
});