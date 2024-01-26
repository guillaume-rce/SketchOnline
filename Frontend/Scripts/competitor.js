loadContest();

function loadContest() {
    infos = ["numConcours", "titre"];
    
    // TODO: Get the contest id from the URL
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

function OnEventsError(jqXHR, textStatus, errorThrown) {
    var errorMessage = "Erreur AJAX lors de la connexion : " + textStatus;
    if (errorThrown) {
        errorMessage += "\n" + errorThrown;
    }
    alert(errorMessage);
}

function onSubmit() {
    var contestId = document.getElementById("contest").value;
    var file = document.getElementById("file").value;
    var comment = document.getElementById("comment").value;

    var submission = new Submission(contestId, file, comment);
    submission.submit();
}

function Submission(contestId, file, comment) {
    this.contestId = contestId;
    this.file = file;
    this.comment = comment;

    this.submit = function () {
        var formData = JSON.stringify(this);
        // TODO: Send data to the server
    }
}