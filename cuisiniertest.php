<?php
require_once("connec.php");
$req = "SELECT * FROM cuisinier";
$ps = $pdo->prepare($req);
$ps->execute();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <table>
        <thead>
            <tr>
                <th> ID</th>
                <th> Nom</th>
                <th> Password</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($cuis = $ps->fetch()) { ?>
                <tr>
                    <td><?php echo ($cuis['ID_cuisinier']) ?></td>
                    <td><?php echo ($cuis['name_cuisinier']) ?></td>
                    <td><?php echo ($cuis['password_cuisinier']) ?></td>

                </tr>

            <?php } ?>
        </tbody>
    </table>
</body>

</html>