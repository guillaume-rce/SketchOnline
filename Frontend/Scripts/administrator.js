import Api from '../service/api.js';

function OnSubmit()
{
    var name = document.getElementById("name").value;
    var image = document.getElementById("image").value;
    var startDate = document.getElementById("startDate").value;
    var endDate = document.getElementById("endDate").value;
    var theme = document.getElementById("theme").value;
    var description = document.getElementById("description").value;
    var rules = document.getElementById("rules").value;
    var criteria = document.getElementById("criteria").value;

    var contest = new FormData();
    contest.append("name", name);
    contest.append("image", image);
    contest.append("startDate", startDate);
    contest.append("endDate", endDate);
    contest.append("theme", theme);
    contest.append("description", description);
    contest.append("rules", rules);
    contest.append("criteria", criteria);

    Api.request(/SketchOnline/Backend/contest.php, 'POST', contest)
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