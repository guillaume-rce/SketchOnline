function onRedirectToMy() {
    var data = localStorage.getItem('userData');    
    var id = JSON.parse(data).userId;

    Api.request("/SketchOnline/Backend/role.php", "POST", {userId: id})
        .then(response => {
            console.log(response.status);
            response.status === 'success' ? OnRoleSuccess(response) : OnRoleError(response);
        })
        .catch((error) => {
            console.error(error);
        });
}

function OnRoleSuccess(response) {
    var role = response.role;
    
    switch (role) {
        case 'admin':
            window.location.href = "/SketchOnline/Frontend/Pages/admin.html";
            break;
        case 'director':
            window.location.href = "/SketchOnline/Frontend/Pages/director.html";
            break;
        case 'president':
            window.location.href = "/SketchOnline/Frontend/Pages/president.html";
            break;
        case 'competitor':
            window.location.href = "/SketchOnline/Frontend/Pages/competitor.html";
            break;
        default:
            window.location.href = "/SketchOnline/Frontend/Pages/indexlog.html";
            break;
    }
}

function OnRoleError(response) {
    console.log(response);
}