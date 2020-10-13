
jQuery(document).ready(function() {
    jQuery("button").click(function(event) {
        var ide = this.id;
        jQuery("#" + ide).attr("disabled", "");
        event.preventDefault();
    });
    
});

/*var valider = document.getElementById("4");
valider.addEventListener("click", function(event) {
    alert("clic!");
    event.preventDefault()});*/

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