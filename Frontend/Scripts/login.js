function OnLoginClick() {
    var username = document.getElementById("pseudo").value;
    var password = document.getElementById("password").value;
    var login = new Login(username, password);
    login.Login();
}

function OnLoginSuccess(token) {
    // Save token in the cookie
    document.cookie = "token=" + token + ";";
    // Redirect to the home page
    window.location.href = "Frontend/HTML/index.html";
}

function OnLoginError(error) {
    alert(error);
}


// Class: Login
function Login(username, password) {
    this.username = username;
    this.password = password;

    this.Login = function() {
        var data = {
            username: this.username,
            password: this.password
        };
        $.ajax({
            url: "http://localhost:8080/Backend/register.php",
            type: "POST",
            data: JSON.stringify(data),
            contentType: "application/json",
            success: function(data) {
                OnLoginSuccess(data);
            },
            error: function(error) {
                OnLoginError(error);
            }
        });
    }
}