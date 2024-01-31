<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $targetDir = "/SketchOnline/Uploads";
    $targetFile = $targetDir . basename($_FILES["file"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($targetFile,PATHINFO_EXTENSION));

    // Vérifie si le fichier est une image
    if(isset($_POST["submit"])) {
        $check = getimagesize($_FILES["file"]["tmp_name"]);
        if($check !== false) {
            echo "Le fichier est une image - " . $check["mime"] . ".";
            $uploadOk = 1;
        } else {
            echo "Le fichier n'est pas une image.";
            $uploadOk = 0;
        }
    }

    // Vérifie si le fichier existe déjà
    if (file_exists($targetFile)) {
        echo "Désolé, le fichier existe déjà.";
        $uploadOk = 0;
    }

    // Vérifie la taille du fichier
    if ($_FILES["file"]["size"] > 500000) {
        echo "Désolé, le fichier est trop volumineux.";
        $uploadOk = 0;
    }

    // Autorise certains formats de fichiers
    $allowedFormats = array("jpg", "jpeg", "png", "gif");
    if (!in_array($imageFileType, $allowedFormats)) {
        echo "Désolé, seuls les fichiers JPG, JPEG, PNG et GIF sont autorisés.";
        $uploadOk = 0;
    }

    // Vérifie si $uploadOk est défini à 0
    if ($uploadOk == 0) {
        echo "Le fichier n'a pas été téléchargé.";
    } else {
        if (move_uploaded_file($_FILES["file"]["tmp_name"], $targetFile)) {
            echo "Le fichier ". htmlspecialchars(basename( $_FILES["file"]["name"])). " a été téléchargé.";
        } else {
            echo "Il y a eu une erreur lors du téléchargement du fichier.";
        }
    }
} else {
    echo "Accès non autorisé.";
}
?>
