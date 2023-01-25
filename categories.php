<?php
include "header.php";

?>

<section class="list-entity container">
    <div class="image">
        <img src="img/library1.png" alt="" style='width:100%;height:60%'>
    </div>
   
    <table class="styled-table">
        <thead>
        <tr>
        <th>ID</th>
            <th>Category Name</th>
            <th>Delete</th>
            
        </tr>
        </thead>
        <tbody>
            <?php
            
            $sql="SELECT * FROM Category";
            $kategorit=mysqli_query($dbconn,$sql);
            if($kategorit){
                while ($kategori =mysqli_fetch_assoc($kategorit)) {
                    $kid=$kategori['ID_type'];
                    echo "<tr class='active-row'>";
                    echo "<td>". $kategori['ID_type'] . "</td>";
                    echo "<td>". $kategori['category_name'] . "</td>";
                    echo "<td><a href='deleteCategory.php?kid={$kid}'>
                    <i class='far fa-trash-alt'></i></a></td>";
                    echo "</tr>";
                }
            }
            
            
            ?>
    </table>
    <a href="addCategory.php" id="add_entity"><i class="fas fa-plus"></i> Add Category</a>
</section>


<?php
include "footer.php";

?>