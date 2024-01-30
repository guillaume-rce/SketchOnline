document.addEventListener('DOMContentLoaded', function() {
    var data = localStorage.getItem('userData');    
    if (data !== null) {
        RedirectLog();
    }
    else {
        Redirect();
    }
});

function RedirectLog() {
    window.location.href = "/SketchOnline/Frontend/Pages/eventlog.html";
}

function Redirect() {
    window.location.href = "/SketchOnline/Frontend/Pages/event.html";
}