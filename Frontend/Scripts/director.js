var evaluatorsId = [];
var competitorsId = [];
var minEvaluators = 3;
var minCompetitors = 6;

loadEvaluators();
drawEvaluators();

loadCompetitors();
drawCompetitors();

function loadEvaluators() {
    /*
    evaluatorsId = [
        {
            email: "email",
            name: "name",
        },
        ...
    ]
    */
    $.ajax({
        url: "/Backend/evaluatorsGetter.php",
        type: "GET",
        success: function (data) {
            evaluatorsId = data;
        },
        error: function (data) {
            console.log(data);
        }
    });
}

function loadCompetitors() {
    /*
    competitorsId = [
        {
            email: "email",
            name: "name",
        },
        ...
    ]
    */
    $.ajax({
        url: "/Backend/competitorsGetter.php",
        type: "GET",
        success: function (data) {
            competitorsId = data;
        },
        error: function (data) {
            console.log(data);
        }
    });
}

function drawEvaluators() {
    for (var i = 0; i < minEvaluators; i++) {
        addEvaluator();
    }
}

function addEvaluator() {
    /*
    evaluatorsId = [
        {
            email: "email",
            name: "name",
        },
        ...
    ]
    */
    var evaluators = document.getElementById("evaluators");
    var evaluator = document.createElement("select");
    evaluator.classList.add("director-evaluator");
    // add options
    evaluatorsId.forEach(element => {
        var option = document.createElement("option");
        option.value = element.email;
        option.text = element.name;
        evaluator.appendChild(option);
    });
    evaluators.appendChild(evaluator);
}

function removeEvaluator() {
    var evaluators = document.getElementById("evaluators");
    if (evaluators.childElementCount > minEvaluators) {
        evaluators.removeChild(evaluators.lastChild);
    }
}

function drawCompetitors() {
    for (var i = 0; i < minCompetitors; i++) {
        addCompetitor();
    }
}

function addCompetitor() {
    /*
    competitorsId = [
        {
            email: "email",
            name: "name",
        },
        ...
    ]
    */
    var competitors = document.getElementById("competitors");
    var competitor = document.createElement("select");
    competitor.classList.add("director-competitor");
    // add options
    competitorsId.forEach(element => {
        var option = document.createElement("option");
        option.value = element.email;
        option.text = element.name;
        competitor.appendChild(option);
    });
    competitors.appendChild(competitor);
}

function removeCompetitor() {
    var competitors = document.getElementById("competitors");
    if (competitors.childElementCount > minCompetitors) {
        competitors.removeChild(competitors.lastChild);
    }
}

function submit() {
    var evaluators = document.getElementById("evaluators");
    var competitors = document.getElementById("competitors");
    var evaluatorsList = [];
    var competitorsList = [];
    for (var i = 0; i < evaluators.childElementCount; i++) {
        evaluatorsList.push(evaluators.children[i].value);
    }
    for (var i = 0; i < competitors.childElementCount; i++) {
        competitorsList.push(competitors.children[i].value);
    }

    var data = {
        evaluators: evaluatorsList,
        competitors: competitorsList,
    };

    // TODO: send data to backend
}