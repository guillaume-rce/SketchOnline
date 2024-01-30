document.addEventListener('DOMContentLoaded', function() {
    // Check if the user is connected
    if (localStorage.getItem('userData') !== null) {
        loadContest();
    }
});

function loadContest() {  
    // Get the user id  
    var data = localStorage.getItem('userData');    
    var id = JSON.parse(data).userId;

    var postData = {
        userId: id
    };

    // Get the events
    Api.request("/SketchOnline/Backend/competitions.php", "POST", postData)
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
        option.value = data.events[i].numConcours;
        option.text = data.events[i].titre;
        list.appendChild(option);
    }
}

function OnEventsError(error) {
    console.log(error);
}

function onSubmit() {
    // Get the data
    var contestId = document.getElementById("contest").value;
    var file = document.getElementById("file").files[0];
    var comment = document.getElementById("comment").value;

    var data = localStorage.getItem('userData');    
    var userId = JSON.parse(data).id;

    // Erreur dans l'envoi de l'image, pas de message mais l'image n'est pas envoyée
    var uploadData = new FormData(document.getElementById("upload_form"), document.getElementById("upload_image"));
    uploadData.append("type_of_upload", "drawing");
    uploadData.append("contest_id", contestId);
    uploadData.append("user_id", userId);
    uploadData.append("fileToUpload", file);

    Api.request("/SketchOnline/Backend/create/upload.php", "POST", uploadData)
        .then(response => {
            console.log(response);
            response.status === 'success' ? OnUploadSuccess(response, contestId, comment, userId) : OnUploadError(response);
        })
        .catch((error) => {
            console.error(error);
        });
}

function OnUploadSuccess(data, contestId, comment, userId) {
    // if uplaod success, send the drawing data
    var path = data.path;

    date = new Date().toISOString().slice(0, 19);
    date = date.split('T')[0];

    var drawingData = {
        contest_id: contestId,
        user_id: userId,
        date: date,
        path: path,
        comment: comment
    }

    Api.request("/SketchOnline/Backend/create/createDessin.php", "POST", drawingData)
        .then(response => {
            console.log(response.status);
            response.status === 'success' ? OnSubmitSuccess(response) : OnSubmitError(response);
        })
        .catch((error) => {
            console.error(error);
        });
}

function OnUploadError(data) {
    alert("Erreur lors de l'upload du dessin");
}

function OnSubmitSuccess(data) {
    alert("Le dessin a bien été soumis");
}

function OnSubmitError(data) {
    alert("Erreur lors de la soumission du dessin");
}