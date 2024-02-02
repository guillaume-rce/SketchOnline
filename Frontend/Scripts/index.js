document.addEventListener('DOMContentLoaded', function() {
    if (localStorage.getItem('userData') !== null) {
        // Get the profile infos
        getUserRole();
        GetProfileInfos();

    }
    });

function disconnect() {
    localStorage.removeItem('userData');
    window.location.href = '/SketchOnline/Frontend/Pages/index.html';
}

function GetProfileInfos() {
    var data = localStorage.getItem('userData');    
    var id = JSON.parse(data).userId;

    var postData = {
        userId: id
    };

    Api.request("/SketchOnline/Backend/competitions.php", "POST", postData)
        .then(response => {
            console.log(response.status);
            response.status === 'success' ? OnProfileInfosSuccess(response) : OnProfileInfosError(response);
        })
        .catch((error) => {
            console.error(error);
        });
}

function OnProfileInfosSuccess(data) {
    var data = localStorage.getItem('userData');    
    // data = {
    //     photo: 'https://xxxxx.xx/xxxx/xxxx.jpg',
    //     rank: 'xxxx'
    // };

    // Get the home-buttons element
    var homeButtons = document.getElementById('home-connection');
    // Clear all the children of the home-buttons element
    homeButtons.innerHTML = '';

    var disconnectButton = document.createElement('button');
    disconnectButton.id = 'disconnect';
    disconnectButton.onclick = disconnect;
    disconnectButton.textContent = 'Logout';
    disconnectButton.classList.add('disconnect');
    homeButtons.appendChild(disconnectButton);

    // Create the home-profile element
    homeButtons.classList.remove('home-buttons');
    homeButtons.classList.add('home-profile');

    // Get the user role
    // Create the home-profile-image element
    var homeProfileImage = document.createElement('img');
    var photo = typeof(JSON.parse(data).photo) == "undefined" || JSON.parse(data).photo === null ? '/SketchOnline/Frontend/assets/default_profile_image.jpg' : data.photo; 
    homeProfileImage.src = photo;
    homeProfileImage.alt = 'Profile image';
    homeProfileImage.classList.add('home-profile-image');
    // add the click event to the home-profile-image element
    homeProfileImage.onclick = onRedirectToMy;
    // Change the color of the home-profile-image border
    homeProfileImage.style.borderColor = GetColorVar(localStorage.getItem('role'));
    // Add the home-profile-image element to the home-profile element
    homeButtons.appendChild(homeProfileImage);
}
function getUserRole() {
    var data = localStorage.getItem('userData');    
    var id = JSON.parse(data).userId;

    Api.request("/SketchOnline/Backend/getRole.php", "POST", {"userId": id})
        .then(lareponse => {
            console.log(lareponse.status);
            lareponse.status === 'success' ? OnRoleSuccess(lareponse) : OnRoleError(lareponse);
        })
        .catch((error) => {
            console.error(error);
        });
}

function OnRoleSuccess(response) {
   localStorage.setItem('role', response.role);
   console.log("la reponse du serveur est " + response.role);
   console.log("le role est " + localStorage.getItem('role'));

    }

function OnRoleError(response) {
    console.log(response);
}   


function OnProfileInfosError(error) {
    console.log(error);
}

function GetColorVar(rank) {
    switch (rank) {
        case 'admin':
            return 'var(--dl-color-rank-admin)';
        case 'president':
            return 'var(--dl-color-rank-president)';
        case 'director':
            return 'var(--dl-color-rank-director)';
        case 'competitor':
            return 'var(--dl-color-rank-competitor)';
        case 'admin':
            return 'var(--dl-color-rank-evaluator)';
        default:
            return 'var(--dl-color-rank-user)';
    }
}

// rediect to my page

function onRedirectToMy() {
    let role = localStorage.getItem('role');
    console.log(role);
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