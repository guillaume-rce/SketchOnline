const token = getCookie('token');

if (token) {
    console.log('User is logged in');
    GetProfileInfos();
} else {
    console.log('User is not logged in');
function GetProfileInfos() {
        
    if (typeof token === 'undefined') {
        console.error("Le token n'est pas défini.");
        return;
    }
    var data = {
        token: token,
        infos: ['photo', 'rank']
    };

    $.ajax({
        url: "http://localhost:8080/Backend/profile.php",
        type: "POST",
        data: JSON.stringify(data),
        contentType: "application/json",
        success: function(data) {
            OnProfileInfosSuccess(data);
        },
        error: function(error) {
            OnProfileInfosError(error);
        }
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
    homeProfileImage.src = data.photo;
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
