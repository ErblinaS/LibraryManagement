<?php
include "header.php";

?>

<section class="list-entity container">
    <div class="image">
        <img src="img/library6.png" alt="" style='width:100%;height:60%'>
    </div>
   
    <table class="styled-table">
        <thead>
        <tr>
        <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Delete</th>
            
        </tr>
        </thead>
        <tbody>
            <?php
            
            $sql="SELECT * FROM Authors";
            $kategorit=mysqli_query($dbconn,$sql);
            if($kategorit){
                while ($kategori =mysqli_fetch_assoc($kategorit)) {
                    $kid=$kategori['author_ID'];
                    echo "<tr class='active-row'>";
                    echo "<td>". $kategori['author_ID'] . "</td>";
                    echo "<td>". $kategori['first_name'] . "</td>";
                    echo "<td>". $kategori['last_name'] . "</td>";
                    echo "<td><a href='deleteAuthor.php?kid={$kid}'>
                    <i class='far fa-trash-alt'></i></a></td>";
                    echo "</tr>";
                }
            }
            
            
            ?>
    </table>
    <a href="addAuthor.php" id="add_entity"><i class="fas fa-plus"></i> Add Authors</a>
</section>


<?php
include "footer.php";

?>