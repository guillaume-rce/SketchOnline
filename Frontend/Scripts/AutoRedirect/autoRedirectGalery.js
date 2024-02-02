document.addEventListener('DOMContentLoaded', function() {
    var data = localStorage.getItem('userData');    
    if (data !== null) {
        RedirectLog();
    }
});

function RedirectLog() {
    window.location.href = "/SketchOnline/Frontend/Pages/galerylog.html";
}