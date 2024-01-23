const token = getCookie('token');

if (token) {
    console.log('User is logged in');
} else {
    console.log('User is not logged in');
}

function getCookie(name) {
    const cookieValue = document.cookie.match('(^|;)\\s*' + name + '\\s*=\\s*([^;]+)');
    return cookieValue ? cookieValue.pop() : '';
}

function ShowProfile(token) {
    var data = {
        token: token
    };
    $.ajax({
        url: "http://localhost:8080/Backend/profile.php",
        type: "POST",
        data: JSON.stringify(data),
        contentType: "application/json",
        success: function(data) {
            OnShowProfileSuccess(data);
        },
        error: function(error) {
            OnShowProfileError(error);
        }
    });
}

function OnShowProfileSuccess(data) {
    // The goal is to display the profile image in the home page
    
}

function OnShowProfileError(error) {
    alert(error);
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