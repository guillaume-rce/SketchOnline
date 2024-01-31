// Assurez-vous d'inclure le fichier api.js au début de votre script
function OnRegisterClick() {
    var username = document.getElementById("pseudo").value;
    var name = document.getElementById("name").value;
    var firstname = document.getElementById("firstname").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;

    var register = new Register(username, name, firstname, email, password);
    register.Register();
}

function OnRegisterSuccess(data) {
    // Handle success, for example, redirect to the home page
    console.log('Registration successful:', data);
    window.location.href = "/SketchOnline/Frontend/Pages/index.html";
}

function OnRegisterError(error) {
    alert(error);
}

// Class: Register
function Register(username, name, firstname, email, password) {
    this.username = username;
    this.name = name;
    this.firstname = firstname;
    this.email = email;
    this.password = password;

    this.Register = async function() {
        var data = {
            username: this.username,
            name: this.name,
            firstname: this.firstname,
            email: this.email,
            password: this.password
        };

        try {
            // Utilisez un chemin relatif pour l'appel à l'API
            const response = await Api.request("/SketchOnline/Backend/register.php", "POST", data);
            OnRegisterSuccess(response);
        } catch (error) {
            OnRegisterError("Error: " + error.message);
        }
    };
}
