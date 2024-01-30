// Verify if the page is loaded
document.addEventListener('DOMContentLoaded', function () {
    Getgallerys();
});

function OnGetgallerysSuccess(data) {
    // Loop through the gallerys
    for (var i = 0; i < data.gallerys.length; i++) {
        // Add the gallery to the gallery list
        Addgallery(data.gallerys[i]);
    }
}

function OnGetgallerysError(jqXHR, textStatus, errorThrown) {
    var errorMessage = "Erreur AJAX lors de la connexion : " + textStatus;
    if (errorThrown) {
        errorMessage += "\n" + errorThrown;
    }
    alert(errorMessage);
}

function Getgallerys() {
    ApiGet.request('/SketchOnline/Backend/gallery.php', 'GET')
        .then(response => {
            console.log(response.status);
            response.status === 'success' ? OnGetgallerysSuccess(response) : OnGetgallerysError(response);
        })
        .catch((error) => {
            console.error(error);
        });
}

function Addgallery(gallery) {
    // Create the post
    var galleryPost = document.createElement('div');
    galleryPost.classList.add('gallery-post');

    // Create the image
    var image = document.createElement('img');
    image.id = 'image';
    image.alt = 'image';
    image.src = gallery.leDessin; // Assuming 'image' property contains the image URL
    image.classList.add('gallery-image1');
    galleryPost.appendChild(image);

    // Create the title
    var title = document.createElement('h1');
    var titleSpan = document.createElement('span');
    titleSpan.innerHTML = gallery.commentaire; // Assuming 'title' property contains the title
    title.appendChild(titleSpan);
    var br = document.createElement('br');
    title.appendChild(br);
    galleryPost.appendChild(title);

    // Create the container for number and icon
    var container = document.createElement('div');
    container.classList.add('gallery-container3');

    // Create the number span
    var numberSpan = document.createElement('span');
    numberSpan.classList.add('gallery-text16');
    var nbSpan = document.createElement('span');
    nbSpan.innerHTML = gallery.classement; // Assuming 'nb' property contains the number
    numberSpan.appendChild(nbSpan);
    br = document.createElement('br');
    numberSpan.appendChild(br);
    container.appendChild(numberSpan);

    // Create the icon
    var icon = document.createElement('svg');
    icon.setAttribute('viewBox', '0 0 1024 1024');
    icon.classList.add('gallery-icon10');
    var path = document.createElement('path');
    path.setAttribute('d', 'M755.188 64c-107.63 0-200.258 87.554-243.164 179-42.938-91.444-135.578-179-243.216-179-148.382 0-268.808 120.44-268.808 268.832 0 301.846 304.5 380.994 512.022 679.418 196.154-296.576 511.978-387.206 511.978-679.418 0-148.392-120.43-268.832-268.812-268.832z');
    icon.appendChild(path);
    container.appendChild(icon);

    galleryPost.appendChild(container);

    // Add the post to the gallery list
    var gallerysContainer = document.querySelector('.gallery-container1');
    gallerysContainer.appendChild(galleryPost);
}
