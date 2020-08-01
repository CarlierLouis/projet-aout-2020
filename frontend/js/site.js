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






/**
 ajoute le mets passé par un formulaire
 @return {boolean} false
 **/

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






/**
 crée une chaine html et la remplace dans le html
 @param {string} id - le nom de l'id où va être introduit la chaine
 **/

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
    };
    xhr.send();
}






let tablObj;


function chargerMets() {
    let xhr = new XMLHttpRequest();
    xhr.open("get",'http://localhost/mets', true);
    xhr.onload=function () {
        tablObj= JSON.parse(xhr.response).slice();
        createHtml(tablObj.slice());
    };
    xhr.send();
}



/**
 crée une chaine html et la remplace dans le html
 @param tabl - tableau d'objet contenant les mets
 **/

function createHtml(tabl) {
    let mets = "";
    for (let i in tabl) {
        mets += "<p><strong style='color: #f1935c;font-size: 30px'>"+tabl[i].nomMets+"</strong><br>"+tabl[i].description+"<p><br>";
    }
    document.getElementById("tousMets").innerHTML=mets;
}




/**
 permet d'afficher les mets d'un certain type
 **/

function tri(){
    let tablObj2 = tablObj.slice();

    let count = 0;
    if (document.getElementById("type").value ==="Tout"){
        createHtml(tablObj2)
    }
    else{
        for(let i in tablObj) {
            if (document.getElementById("type").value !== tablObj[i].nomTypeMets) {
                tablObj2.splice(count,1);
                count -= 1 ;

            }
            count+=1;
        }
        createHtml(tablObj2);
        console.log(tablObj2);
    }

}






function connectClients() {
    let fo = document.getElementById('formConnexionClients');
    let code = fo.code.value;
    let xhr = new XMLHttpRequest();
    xhr.open('get', 'http://localhost/clientConnexion', true);
    xhr.onload = function () {
        xhr = JSON.parse(xhr.response);
        for (let i = 0; i < xhr.length; i++) {
            if (xhr[i].code===code) {
                document.location.href ="suggestions.html";
            }
            else {
                document.getElementById("verif2").innerHTML = "Code clients incorrect";
            }
        }

    };
    xhr.send();
    console.log("erreur");
    return false;
}






function sugg() {
    let fo = document.getElementById('formSuggestion');
    let selectElmt = document.getElementById("typeMets");
    let typeMetsSelectionne = selectElmt.options[selectElmt.selectedIndex].id;
    let xhr = new XMLHttpRequest();
    xhr.open('get','http://localhost/suggestion?descSuggestion='+fo.descSuggestion.value+'&id_typeMets='+typeMetsSelectionne,true);
    xhr.send();
    document.getElementById('suggEnvoye').innerHTML = 'Suggestion envoyée !';
    fo.descSuggestion.value='';
    return false;
}





function chargerSuggestions() {
    let xhr = new XMLHttpRequest();
    xhr.open("get",'http://localhost/chargSuggestions', true);
    xhr.onload=function () {
        let tablObjSugg = JSON.parse(xhr.response).slice();
        let sugg = "";
        for(let i in tablObjSugg){
            sugg += "<p><strong style='color: #f1935c;font-size: 28px'>"+tablObjSugg[i].descSuggestion+"</strong><p><br>";
        }
        document.getElementById("affichageSuggestions").innerHTML += sugg;
    };
    xhr.send();
}
