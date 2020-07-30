function connect() {
    let fo = document.getElementById('formConnexion');
    let pseudo = fo.nom.value;
    let mp = fo.mp.value;
    let xhr = new XMLHttpRequest();
    xhr.open('get', 'http://localhost/adminConnexion', true);
    xhr.onload = function () {
        xhr = JSON.parse(xhr.response);
        for (let i = 0; i < xhr.length; i++) {
            if ((xhr[i].pseudo===pseudo) && (xhr[i].mp===mp)) {
                document.location.href ="modifCarte.html";
            }
            else {
                document.getElementById("verif").innerHTML = "Identifiants Incorrects";
            }
        }

    };
    xhr.send();
    console.log("erreur");
    return false;
}








function modif() {
    let fo = document.getElementById('formAjout');
    let selectElmt = document.getElementById("typeMets");
    let typeMetsSelectionne = selectElmt.options[selectElmt.selectedIndex].id;
    let xhr = new XMLHttpRequest();
    xhr.open('get','http://localhost/modifCarte?nomMets='+fo.nomMets.value+'&description='+fo.description.value+'&id_typeMets='+typeMetsSelectionne,true);
    xhr.send();
    document.getElementById('metsEnvoye').innerHTML = 'Mets ajouté !';
    fo.nomMets.value='';
    fo.description.value='';
    return false;
}








function chargerTypeMets(id) {
    let xhr =new XMLHttpRequest();
    xhr.open("get","http://localhost/typeMets", true);
    xhr.onload = function(){
        let tabl= JSON.parse(xhr.response).slice();
        let typeM = "";
        for(let i in tabl){
            typeM += "<option value='"+tabl[i].typeMets+"' id='"+tabl[i].id_typeMets+"'>"+tabl[i].typeMets+"</option>";
        }
        document.getElementById(id).innerHTML += typeM
    }
    xhr.send();
}








































