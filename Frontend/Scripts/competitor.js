import Api from '../../service/api.js';

loadContest();

function loadContest() {
    infos = ["numConcours", "titre"];
    
    $.ajax({
        url: "/Backend/contestGetter.php",
        type: "GET",
        success: function (data) {
            infos = data;
        },
        error: function (data) {
            console.log(data);
        }
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
        
        $.ajax({
            type: "POST",
            url: "/Backend/competitor.php",
            data: formData,
            success: function (data) {
                alert("Votre soumission a été enregistrée.");
            },
            error: function (data) {
                alert("Erreur lors de l'enregistrement de votre soumission.");
            }
        });
    }
}