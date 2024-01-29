// Verify if the page is loaded
$(document).ready(function() {
    // Get the events
    GetEvents();
});


function OnGetEventsSuccess(data) {
    // data = {
    //     events: [
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

    // Loop through the events
    for (var i = 0; i < data.events.length; i++) {
        // Add the event to the event list
        AddEvent(data.events[i]);
    }
}

function OnGetEventsError(jqXHR, textStatus, errorThrown) {
    var errorMessage = "Erreur AJAX lors de la connexion : " + textStatus;
    if (errorThrown) {
        errorMessage += "\n" + errorThrown;
    }
    alert(errorMessage);
}

function GetEvents() {
    var data = {
    }
    Api.request('/SketchOnline/Backend/event.php', 'GET',data )
    .then(response => {
        console.log(response.status);
        response.status === 'success' ? OnGetEventsSuccess(response) : OnGetEventsError(response);
    })
    .catch(() => {
        console.error('Une erreur s\'est produite');
    });
    
}

function AddEvent(event) {
    /*
    event = {
        id: 'xxxx',
        title: 'xxxx',
        theme: 'xxxx',
        image: 'xxxx',
        status: 'xxxx'
    };
    */
    
    // The goal is to add an event (exemple above) to the event list (div with id="events-container")

    // Create the post
    var eventPost = document.createElement('div');
    eventPost.classList.add('event-post');

    // Change the background color of the post depending on the status
    var statusColor = GetStatusColor(event.status);
    eventPost.style.backgroundColor = `var(${statusColor})`;

    // Create the id text
    var eventText16 = document.createElement('span');
    eventText16.classList.add('event-text16');

    var idSpan = document.createElement('span');
    idSpan.innerHTML = event.id;
    eventText16.appendChild(idSpan);

    var br = document.createElement('br');
    eventText16.appendChild(br);

    eventPost.appendChild(eventText16);

    // Create the image
    var image = document.createElement('img');
    image.id = 'image';
    image.alt = 'image';
    image.src = event.image;
    image.classList.add('event-image1');
    eventPost.appendChild(image);

    // Create the title
    var title = document.createElement('h1');
    var titleSpan = document.createElement('span');
    titleSpan.innerHTML = event.title;
    title.appendChild(titleSpan);
    var br = document.createElement('br');
    title.appendChild(br);
    eventPost.appendChild(title);

    // Create the theme
    var themeSpan = document.createElement('span');
    themeSpan.innerHTML = event.theme;
    eventPost.appendChild(themeSpan);

    // Add the post to the event list
    var eventsContainer = document.getElementById('events-container');
    eventsContainer.appendChild(eventPost);
}

function GetStatusColor(status) {
    switch (status) {
        case 'evalue':
            return '--dl-color-status-evaluated';
        case 'en attente':
            return '--dl-color-status-watingresults';
        case 'en cours':
            return '--dl-color-status-inprogress';
        default:
            return '--dl-color-status-notstarted';
    }
}
