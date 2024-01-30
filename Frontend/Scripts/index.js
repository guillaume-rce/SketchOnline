document.addEventListener('DOMContentLoaded', function() {
    if (localStorage.getItem('userData') !== null) {
        // Get the profile infos
        GetProfileInfos();

    }
    });

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

    // Create the home-profile element
    homeButtons.classList.remove('home-buttons');
    homeButtons.classList.add('home-profile');

    // Create the home-profile-image element
    var homeProfileImage = document.createElement('img');
    var photo = typeof(JSON.parse(data).photo) == "undefined" || JSON.parse(data).photo === null ? '/SketchOnline/Frontend/assets/default_profile_image.jpg' : data.photo; 
    homeProfileImage.src = photo;
    homeProfileImage.alt = 'Profile image';
    homeProfileImage.classList.add('home-profile-image');

    // Change the color of the home-profile-image border
    homeProfileImage.style.borderColor = GetColorVar(data.rank);

    // Add the home-profile-image element to the home-profile element
    homeButtons.appendChild(homeProfileImage);
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
