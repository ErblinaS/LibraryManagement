<?php
include "header.php";

?>

<section class="list-entity container">
    <div class="image">
        <img src="img/library7.jpg" alt="" style='width:100%;height:60%'>
    </div>
   
    <table class="styled-table">
        <thead>
        <tr>
        <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Birth Date</th>
            <th>Gender</th>
            <th>Delete</th>
            
        </tr>
        </thead>
        <tbody>
            <?php
            
            $sql="SELECT * FROM Users";
            $kategorit=mysqli_query($dbconn,$sql);
            if($kategorit){
                while ($kategori =mysqli_fetch_assoc($kategorit)) {
                    $kid=$kategori['ID_user'];
                    echo "<tr class='active-row'>";
                    echo "<td>". $kategori['ID_user'] . "</td>";
                    echo "<td>". $kategori['first_name'] . "</td>";
                    echo "<td>". $kategori['last_name'] . "</td>";
                    echo "<td>". $kategori['birthdate'] . "</td>";
                    echo "<td>". $kategori['gender'] . "</td>";
                    echo "<td><a href='deleteUser.php?kid={$kid}'>
                    <i class='far fa-trash-alt'></i></a></td>";
                    echo "</tr>";
                }
            }
            
            
            ?>
    </table>
    <a href="addUser.php" id="add_entity"><i class="fas fa-plus"></i> Add User</a>
</section>


<?php
include "footer.php";

?>