document.addEventListener('DOMContentLoaded', function() {
    // Check if the user is connected
    if (localStorage.getItem('userData') !== null) {
        loadContest();
    }
});

function loadContest() {    
    var fuck = localStorage.getItem('userData');    
    var tamere = JSON.parse(fuck).email;

    data = {
        email: tamere
    };

    ApiGet.request("/SketchOnline/Backend/competitions.php", "GET", data)
        .then(response => {
            console.log(response.status);
            response.status === 'success' ? OnEventsSuccess(response) : OnEventsError(response);
        })
        .catch((error) => {
            console.error(error);
        });
}

function OnEventsSuccess(data) {
    /*
    data = {
        events: [
            {
                id: 'xxxx',
                title: 'xxxx'
            },
            ...
        ]
    };
    */
    var list = document.getElementById("contest");

    // Loop through the events
    for (var i = 0; i < data.events.length; i++) {
        // Add the event to the list
        var option = document.createElement("option");
        option.value = data.events[i].id;
        option.text = data.events[i].title;
        list.appendChild(option);
    }
}

function OnEventsError(error) {
    console.log(error);
}

function onSubmit() {
    var contestId = document.getElementById("contest").value;
    var file = document.getElementById("file").files[0];
    var comment = document.getElementById("comment").value;

    var submissionData = new FormData();
    submissionData.append("contestId", contestId);
    submissionData.append("file", file);
    submissionData.append("comment", comment);

    Api.request("/SketchOnline/Backend/submit.php", "POST", submissionData)
        .then(response => {
            console.log(response.status);
            response.status === 'success' ? OnSubmitSuccess(response) : OnSubmitError(response);
        })
        .catch((error) => {
            console.error(error);
        });
}

function OnSubmitSuccess(data) {
    console.log(data);
    alert("Votre dessin a bien été envoyé !");
}

function OnSubmitError(error) {
    console.log(error);
    alert("Une erreur est survenue lors de l'envoi de votre dessin !");
}