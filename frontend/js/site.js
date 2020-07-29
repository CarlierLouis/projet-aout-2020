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

}

