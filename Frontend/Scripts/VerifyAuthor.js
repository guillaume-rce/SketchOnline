document.addEventListener('DOMContentLoaded', function () {
    VerifyAuthor();
});

function VerifyAuthor() {
    var rank = localStorage.getItem('role');
    var requiredRole = getRequiredRole();
    if (rank !== requiredRole) {
        window.location.href = "/SketchOnline/Frontend/Pages/index.html";
    }
}

function getRequiredRole() {
    var url = window.location.href;
    switch (url) {
        case "/SketchOnline/Frontend/Pages/administrator.html":
            return "admin";
        case "/SketchOnline/Frontend/Pages/evaluator.html":
            return "evaluator";
        case "/SketchOnline/Frontend/Pages/director.html":
            return "director";
        case "/SketchOnline/Frontend/Pages/president.html":
            return "president";
        case "/SketchOnline/Frontend/Pages/competitor.html":
            return "competitor";
        default:
            return "user";
    }
}