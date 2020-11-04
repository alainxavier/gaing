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
    //return balisElmt;
}

/*creerElement("div", "my-5", "list-an", "", "", "space2");
creerElement("button", "btn btn-outline-dark btn", "an1819", "button", "2018-2019", "space2");
creerElement("button", "btn btn-outline-dark btn", "an1920", "button", "2019-2020", "space2");
//document.getElementById("space3").appendChild(bouton1819);

/*document.getElementById("navigation").addEventListener("click", function() {
    document.getElementById("navigation").insertAdjacentHTML("afterbegin", "<p> je suis là</p>")
}); 

function Redirect() {
    window.location = "register/";
 }
 setTimeout('Redirect()', 10);*/