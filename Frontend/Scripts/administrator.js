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

    var contest = new Contest(name, image, startDate, endDate, theme,
                              description, rules, submission, criteria);
    contest.submit();
}

function Contest(name, image, startDate, endDate, theme,
                  description, rules, criteria)
{
    this.name = name;
    this.image = image;
    this.startDate = startDate;
    this.endDate = endDate;
    this.theme = theme;
    this.description = description;
    this.rules = rules;
    this.criteria = criteria;

    this.submit = function()
    {
        var data = JSON.stringify(this);
        
       Api.request(/SketchOnline/Backend/contest.php, 'POST', data)
        .then(response => {
            console.log(response.status);
            response.status === 'success' ? OnSubmitSuccess(response) : OnSubmitError(response);
        })
        .catch((error) => {
            console.error(error);
        });
    }

}
function OnSubmitSuccess(data)
{
    alert("Le concours a bien été créé");
}

function OnSubmitError(data)
{
    alert("Erreur lors de la création du concours");
}