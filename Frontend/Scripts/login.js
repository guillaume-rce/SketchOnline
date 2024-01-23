function OnLoginClick() {
    var email = document.getElementById("pseudo").value;
    var password = document.getElementById("password").value;
    var login = new Login(email, password);
    login.Login();
}

function OnLoginSuccess(response) {
    if (response && response.token) {
        // Save token in the cookie
        document.cookie = "token=" + response.token + ";";
        // Redirect to the home page
        window.location.href = "Frontend/HTML/index.html";
    } else if (response && response.error) {
        alert("Erreur de connexion : " + response.error);
    } else {
        alert("Une erreur inattendue s'est produite lors de la connexion.");
    }
}

function OnLoginError(jqXHR, textStatus, errorThrown) {
    var errorMessage = "Erreur AJAX lors de la connexion : " + textStatus;
    if (errorThrown) {
        errorMessage += "\n" + errorThrown;
    }
    alert(errorMessage);
}

// Class: Login
function Login(email, password) {
    this.email = email;
    this.password = password;

    this.Login = function() {
        var data = {
            email: this.email,
            password: this.password
        };
    
        $.ajax({
            url: "http://localhost:8080/Backend/login.php",
            type: "POST",
            data: JSON.stringify(data),
            contentType: "application/json",
            success: function(response) {
                OnLoginSuccess(response);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                OnLoginError(jqXHR, textStatus, errorThrown);
            }
        });
    }
}
