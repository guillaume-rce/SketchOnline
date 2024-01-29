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

    var submission = new Submission(contestId, file, comment);
    submission.submit();
}

function Submission(contestId, file, comment) {
    this.contestId = contestId;
    this.file = file;
    this.comment = comment;

    this.submit = function () {
        var formData = JSON.stringify(this);

        console.log(formData);
        /*
        formData = {
            contestId: 'xxxx',
            file: 'xxxx',
            comment: 'xxxx'
        };
        */
        
        /*
        Api.request('/SketchOnline/Backend/submission.php', 'POST', formData)
            .then(response => {
                console.log(response.status);
                response.status === 'success' ? this.OnSubmitSuccess(response) : this.OnSubmitError(response);
            })
            .catch((error) => {
                console.error(error);
            });
            */
    }

    this.OnSubmitSuccess = function (data) {
        console.log(data);
    }

    this.OnSubmitError = function (error) {
        console.log(error);
    }
}