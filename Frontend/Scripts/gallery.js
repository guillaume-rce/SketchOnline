// Verify if the page is loaded
document.addgalleryListener('DOMContentLoaded', function () {
    Getgallerys();
});


function OnGetgallerysSuccess(data) {
    // data = {
    //     gallerys: [
    //         {
    //             id: 'xxxx',
    //             title: 'xxxx',
    //             theme: 'xxxx',
    //             image: 'xxxx',
    //             status: 'xxxx'
    //         },
    //         ...
    //     ]
    // };

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
    // var data = {}
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
    /*
    gallery = {
        numDessin: 'xxxx',
        titre: 'xxxx',
        thème: 'xxxx',
        affiche: 'xxxx',
        etat: 'xxxx'
    };
    */
    
    // The goal is to add an gallery (exemple above) to the gallery list (div with id="gallerys-container")

    // Create the post
    var galleryPost = document.createElement('div');
    galleryPost.classList.add('gallery-post');

    // Change the background color of the post depending on the status
    var statusColor = GetStatusColor(gallery.etat);
    galleryPost.style.backgroundColor = `var(${statusColor})`;

    // Create the id text
    var galleryText16 = document.createElement('span');
    galleryText16.classList.add('gallery-text16');

    var idSpan = document.createElement('span');
    idSpan.innerHTML = gallery.numConcours;
    galleryText16.appendChild(idSpan);

    var br = document.createElement('br');
    galleryText16.appendChild(br);

    galleryPost.appendChild(galleryText16);

    // Create the image
    var image = document.createElement('img');
    image.id = 'image';
    image.alt = 'image';
    image.src = gallery.affiche;
    image.classList.add('gallery-image1');
    galleryPost.appendChild(image);

    // Create the title
    var title = document.createElement('h1');
    var titleSpan = document.createElement('span');
    titleSpan.innerHTML = gallery.titre;
    title.appendChild(titleSpan);
    var br = document.createElement('br');
    title.appendChild(br);
    galleryPost.appendChild(title);

    // Create the theme
    var themeSpan = document.createElement('span');
    themeSpan.innerHTML = gallery.thème;
    galleryPost.appendChild(themeSpan);

    // Add the post to the gallery list
    var gallerysContainer = document.getElementById('gallerys-container');
    gallerysContainer.appendChild(galleryPost);
}

function GetStatusColor(status) {
    switch (status) {
        case 'évalué':
            return '--dl-color-status-evaluated';
        case 'en attente':
            return '--dl-color-status-watingresults';
        case 'en cours':
            return '--dl-color-status-inprogress';
        default:
            return '--dl-color-status-notstarted';
    }
}
