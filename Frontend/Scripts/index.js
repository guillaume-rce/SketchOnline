const token = getCookie('token');

if (token) {
    console.log('User is logged in');
    GetProfileInfos();
} else {
    console.log('User is not logged in');
}

function getCookie(name) {
    const cookieValue = document.cookie.match('(^|;)\\s*' + name + '\\s*=\\s*([^;]+)');
    return cookieValue ? cookieValue.pop() : '';
}

function GetProfileInfos() {
    data = {
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

/*

<div class="home-profile">
    <img
    src="https://play.teleporthq.io/static/svg/default-img.svg"
    alt="image"
    class="home-profile-image"
    />
</div>


.home-profile {
  display: flex;
  align-items: center;
  flex-direction: row;
  justify-content: space-between;
}
.home-profile-image {
  width: 60px;
  object-fit: cover;
  border-color: var(--dl-color-gray-black);
  border-width: 4px;
  border-radius: var(--dl-radius-radius-round);
}

*/