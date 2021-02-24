jQuery(document).ready(function() {   
    //enregistrer une affectation
    jQuery("button").click(function(event) {
        event.preventDefault();
        var id_acteur = this.id;  
        //console.log(id_acteur);
        var fonction = jQuery("#fonction_" + id_acteur).val();
        var lieu_intervention = jQuery("#lieu_intervention_" + id_acteur).val();
        var annees = jQuery("#annees").val();
        //console.log(id_acteur);
        if(fonction == null) {jQuery("#fonction_" + id_acteur).css({border: "1px solid red" });}
        if(lieu_intervention == "") {jQuery("#lieu_intervention_" + id_acteur).css({border: "1px solid red" });}
        //validation formulaire
        if(fonction !== null && lieu_intervention !== "") {
            //Ajax
            $.post("insertion.php", {
            id_acteur: id_acteur, 
            fonction: fonction, 
            lieu_intervention: lieu_intervention, 
            annees: annees})
            .done(function(data) {
                if(data){
                    jQuery("#ligne_" + id_acteur).hide("slow");
                } else {console.log("c'est null");}
                });
            } else {}
    });

});

function creerElement(balise, classe, idElt, type, text, endroit) {
    var balisElmt
    balisElmt = document.createElement(balise);
    balisElmt.id = idElt;
    balisElmt.className = classe;
    balisElmt.setAttribute("type", type);
    balisElmt.textContent = text;
    document.getElementById(endroit).appendChild(balisElmt);
}

jQuery("a").click(function(event) {
    var idAction = this.id;
    var classAction = this.className;
    if (classAction == "text-danger") {
        //Ajax
        $.post("supprimer.php", {
            id_acteur: idAction})
        .done(function(data) {
            alert(data);
            window.location.href = "/?page=tous";
            });
    } else {
        //Ajax
        var urlPage = "/?page=modifier&id_acteur=" + idAction;
        window.location.href = urlPage;
    }
    
    
});

$(function () {
    $('[data-toggle="tooltip"]').tooltip()
  })

  $(function () {
    $('[data-toggle="popover"]').popover()
  })

  $('.popover-dismiss').popover({
    trigger: 'focus'
  })
