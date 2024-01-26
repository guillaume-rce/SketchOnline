var evaluations = [];
/*
evaluations = [
    {
        id: 1,
        contestName: "Concours 1",
        image: "",
    },
    ...
]
*/

function getEvaluations() {
    // TODO: get evaluations from backend
    // evaluations = [
    //     {
    //         contestName: "Concours 1",
    //         image: "",
    //     },
    //     ...
    // }
}

function onEvaluationsReceived(data) {
    for (var i = 0; i < data.length; i++) {
        var evaluation = data[i];
        evaluations.push({
            id: i,
            contestName: evaluation.contestName,
            image: evaluation.image
        });
    }
    displayEvaluations();
}

function onErrorsReceived() {
    // TODO: display error message
}

function displayEvaluations() {
    for (var i = 0; i < evaluations.length; i++) {
        var evaluation = evaluations[i];
        createEvaluation(evaluation.contestName, evaluation.image, evaluation.id);
    }
}

function createEvaluation(contestName, image, id) {
    var container = document.createElement("div");
    container.className = "evaluator-container3";

    var h1 = document.createElement("h1");
    var span = document.createElement("span");
    span.innerHTML = contestName;
    h1.appendChild(span);
    h1.innerHTML += "<br />";

    var img = document.createElement("img");
    img.src = image;
    img.alt = "image";
    img.className = "evaluator-image1";

    var container4 = document.createElement("div");
    container4.className = "evaluator-container4";
    var span2 = document.createElement("span");
    span2.innerHTML = "Note :";
    var input = document.createElement("input");
    input.type = "number";
    input.required = "true";
    input.min = "0";
    input.max = "20";
    input.step = "1";
    input.id = "note" + id;
    input.className = "evaluator-textinput input";
    container4.appendChild(span2);
    container4.appendChild(input);

    var container5 = document.createElement("div");
    container5.className = "evaluator-container5";
    var span3 = document.createElement("span");
    span3.innerHTML = "Commentaire :";
    var textarea = document.createElement("textarea");
    textarea.placeholder = "commentaire";
    textarea.id = "commentaire" + id;
    textarea.className = "textarea";
    container5.appendChild(span3);
    container5.appendChild(textarea);

    var button = document.createElement("button");
    button.type = "button";
    button.className = "evaluator-button button";
    button.innerHTML = "<span><span>Envoyer</span><br /></span>";
    button.onclick = function () {
        sendEvaluation(id);
    };

    container.appendChild(h1);
    container.appendChild(img);
    container.appendChild(container4);
    container.appendChild(container5);
    container.appendChild(button);

    var master = document.getElementById("evaluations");
    master.appendChild(container);
}

function sendEvaluation(id) {
    var note = document.getElementById("note" + id).value;
    var commentaire = document.getElementById("commentaire" + id).value;

    // TODO: send evaluation to backend
}
