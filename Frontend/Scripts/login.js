document.addEventListener('DOMContentLoaded', () => {
    const onLoginClick = () => {
        const email = document.getElementById("pseudo").value;
        const password = document.getElementById("password").value;
        const login = new Login(email, password);
        login.login();
    };

    const onLoginSuccess = (response) => {
        const userData = {
            userId: response.id,
            login: response.login,
            name: response.name,
            surname: response.surname,
            role: response.role,
            email: response.email,
        };
        localStorage.clear();
        localStorage.setItem('userData', JSON.stringify(userData));

        window.location.href = '/SketchOnline/Frontend/Pages/indexlog.html';
        alert('Vous êtes connecté en tant que : ' + response.role);
    };

    const onLoginError = (error) => {
        const errorMessage = "Erreur lors de la connexion : " + error.statusText;
        alert(errorMessage);
    };

    // Class: Login
    class Login {
        constructor(email, password) {
            this.email = email;
            this.password = password;
        }

        login() {
            const data = {
                email: this.email,
                password: this.password
            };

            Api.request('/SketchOnline/Backend/login.php', 'post', data)
                .then(response => {
                    console.log(response.status);
                    response.status === 'success' ? onLoginSuccess(response) : onLoginError(response);
                })
                .catch(() => {
                    console.error('Une erreur s\'est produite');
                });
        }
    }

    document.querySelector('.login-button').addEventListener('click', onLoginClick);
});
