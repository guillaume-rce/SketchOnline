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