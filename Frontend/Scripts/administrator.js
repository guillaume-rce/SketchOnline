document.addEventListener("DOMContentLoaded", function () {
    loadPresidents();
});

function loadPresidents() {
    Api.request("/SketchOnline/Backend/create/getPresidents.php", "GET")
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
        presidents: [
            {
                id: 'xxxx',
                name: 'xxxx'
            },
            ...
        ]
    };
    */
    var list = document.getElementById("president");

    // Loop through the presidents
    for (var i = 0; i < data.presidents.length; i++) {
        // Add the president to the list
        var option = document.createElement("option");
        option.value = data.presidents[i].id;
        option.text = data.presidents[i].name;
        list.appendChild(option);
    }
}

function OnEventsError(error) {
    console.log(error);
}

function OnSubmit()
{
    var name = document.getElementById("name").value;
    // var image = document.getElementById("image").value;
    var president = document.getElementById("president").value;
    var startDate = document.getElementById("startDate").value;
    var endDate = document.getElementById("endDate").value;
    var theme = document.getElementById("theme").value;
    var description = document.getElementById("description").value;
    var rules = document.getElementById("rules").value;
    var criteria = document.getElementById("criteria").value;

    var data = {
        name: name,
        president: president,
        // image: image,
        startDate: startDate,
        endDate: endDate,
        theme: theme,
        description: description,
        rules: rules,
        criteria: criteria
    }
    ApiFormData.request("/SketchOnline/Backend/create/createConcours.php", "POST", data)
        .then(response => {
            console.log(response.status);
            response.status === 'success' ? OnSubmitSuccess(response) : OnSubmitError(response);
        })
        .catch((error) => {
            console.error(error);
        });
}

function OnSubmitSuccess(data)
{
    alert("Le concours a bien été créé");
}

function OnSubmitError(data)
{
    alert("Erreur lors de la création du concours");
}