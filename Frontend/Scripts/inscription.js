document.addEventListener('DOMContentLoaded', function() {
    // Sélectionner le formulaire par son ID
    const registrationForm = document.getElementById('registrationForm');
  
    // Écouter l'événement de soumission du formulaire
    registrationForm.addEventListener('submit', function(event) {
      // Empêcher le comportement par défaut du formulaire (rechargement de la page)
      event.preventDefault();
  
      // Récupérer les données du formulaire
      const formData = new FormData(registrationForm);
  
      // Effectuer une requête AJAX
      fetch(registrationForm.getAttribute('action'), {
        method: 'POST',
        body: formData
      })
      .then(response => {
        if (!response.ok) {
          throw new Error(`HTTP error! Status: ${response.status}`);
        }
        return response.json(); // Vous pouvez ajuster en fonction du format de réponse attendu
      })
      .then(data => {
        // Traiter la réponse du serveur
        console.log(data);
        // Vous pouvez ajouter des actions supplémentaires ici, par exemple, redirection après l'inscription réussie
      })
      .catch(error => {
        console.error('Erreur lors de la requête AJAX :', error);
      });
    });
  });
  