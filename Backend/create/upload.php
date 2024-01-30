<?php
/*
FormData(
    {
        type_of_upload: type_of_upload,
        contest_id: contest_id,
        user_id: user_id, // facultatif
        fileToUpload: fileToUpload
    }
)
*/
$target_dir = "../../Uploads/"; // Spécifiez le répertoire où le fichier sera sauvegardé
$type_of_upload = $_POST["type_of_upload"];
$contest_id = $_POST["contest_id"];
$user_id = $_POST["user_id"];

switch ($type_of_upload) {
    case "contest":
        $target_subdir = createFolder($target_dir, array("contest", $contest_id));
        $target_file = $target_subdir . basename($contest_id);
        break;
    case "drawing":
        $target_subdir = createFolder($target_dir, array("contest", $contest_id, "drawing", $user_id));
        $target_file = $target_subdir . basename($user_id);
        break;
    default:
        throw new Exception("Type de téléchargement non reconnu: $type_of_upload");
        
}

// Creer un fonction qui prend en parametre les sous dossiers (le nombre n'est pas fixe) et qui les creer dans le serveur puis renvoi le chemin du fichier
// Exemple: Uploads/contest_1/drawing_1/
$DIRECTORY_SEPARATOR = "/";
function createFolder($target_dir, $subfolders) {
    $path = rtrim($target_dir, $DIRECTORY_SEPARATOR) . $DIRECTORY_SEPARATOR;
    foreach ($subfolders as $subfolder) {
        $path .= trim($subfolder) . $DIRECTORY_SEPARATOR;
        if (!file_exists($path) && !mkdir($path, 0755, true)) {
            // Gérer l'erreur si le dossier ne peut pas être créé
            throw new Exception("Impossible de créer le dossier: $path");
        }
    }
    return $path;
}


$uploadOk = 1;

if(isset($_FILES["fileToUpload"]["tmp_name"])) {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo {"status" => "success", 
            "message" => "Le fichier ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " a été téléchargé.",
            "path" => $target_file};

    } else {
        echo {"status" => "failure",
            "message" => "Erreur lors du téléchargement du fichier.",
            "path" => null};
    }
} else {
    echo {"status" => "failure",
        "message" => "Erreur lors du téléchargement du fichier.",
        "path" => null};
}

exit;
?>
