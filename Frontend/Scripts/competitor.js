document.addEventListener('DOMContentLoaded', function() {
    // Check if the user is connected
    if (localStorage.getItem('userData') !== null) {
        loadContest();
    }
});

function loadContest() {    
    var data = localStorage.getItem('userData');    
    var id = JSON.parse(data).userId;

    var postData = {
        userId: id
    };

    Api.request("/SketchOnline/Backend/competitions.php", "POST", JSON.stringify(postData))
        .then(response => {
            console.log(response.status);
            response.status === 'success' ? OnEventsSuccess(response) : OnEventsError(response);
        })
        .catch((error) => {
            console.error(error);
        });

    /*
    fetch('/SketchOnline/Backend/competitions.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ userId: id }),
        })
        .then((data) => {
            console.log(data.json().status);
            data.json().status === 'success' ? OnEventsSuccess(data) : OnEventsError(data);
        })
        .catch((error) => {
            console.error('Error:', error);
        });
    */
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

    var data = localStorage.getItem('userData');    
    var userId = JSON.parse(data).id;

    var uploadData = new FormData();
    uploadData.append("type_of_upload", "drawing");
    uploadData.append("contest_id", contestId);
    uploadData.append("user_id", userId);
    uploadData.append("fileToUpload", file);

    Api.request("/SketchOnline/Backend/create/upload.php", "POST", uploadData)
        .then(response => {
            console.log(response.status);
            response.status === 'success' ? OnUploadSuccess(response, contestId, comment, userId) : OnUploadError(response);
        })
        .catch((error) => {
            console.error(error);
        });
}

function OnUploadSuccess(data, contestId, comment, userId) {
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