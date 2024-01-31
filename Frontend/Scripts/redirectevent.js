document.addEventListener('DOMContentLoaded', function() {
    if (localStorage.getItem('userData') !== null) {
        // rediriger vers la page gallerylog.html
        window.location.replace("eventlog.html");
    }
    });