function OnRegisterClick() {
    var username = document.getElementById("username").value;
    var name = document.getElementById("name").value;
    var firstname = document.getElementById("firstname").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;

    var register = new Register(username, name, firstname, email, password);
    register.Register();
}

function OnRegisterSuccess() {
    // Redirect to the home page
    window.location.href = "Frontend/HTML/index.html";
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

    this.Register = function() {
        var data = {
            username: this.username,
            name: this.name,
            firstname: this.firstname,
            email: this.email,
            password: this.password
        };
        $.ajax({
            url: "http://localhost:8080/Backend/register.php",
            type: "POST",
            data: JSON.stringify(data),
            contentType: "application/json",
            success: OnRegisterSuccess(),
            error: OnRegisterError("Invalid username or password")
        });
    }
}