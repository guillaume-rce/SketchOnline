document.addEventListener('DOMContentLoaded', function() {
    // Check if the user is connected
    if (localStorage.getItem('userData') !== null) {
        // Get the profile infos
        GetProfileInfos();
    }
});

function GetProfileInfos() {
    var fuck = localStorage.getItem('userData');    
    var tamere = JSON.parse(fuck).email;

    data = {
    email: tamere,
    infos: ['photo', 'rank']
    };
    
    Api.request('/SketchOnline/Backend/profile.php', 'post', data)
                .then(response => {
                    console.log(response.status);
                    response.status === 'success' ? OnProfileInfosSuccess(response) : OnProfileInfosError(response);
                })
                .catch((error) => {
                    console.error(error);
                });
}

function OnProfileInfosSuccess(data) {
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
    var photo = data.photo === null ? '/SketchOnline/Frontend/assets/default_profile_image.jpg' : data.photo; 
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
        case 'evaluator':
            return 'var(--dl-color-rank-evaluator)';
        default:
            return 'var(--dl-color-rank-user)';
    }
}
