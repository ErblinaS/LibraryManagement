<?php
include "header.php";

?>

<section class="list-entity container">
    <div class="image">
        <img src="img/library3.png" alt="" style='width:100%;height:60%'>
    </div>
   
    <table class="styled-table">
        <thead>
        <tr><th>ISBN</th>
            <th>Emri</th>
            <th>Delete</th>
            
        </tr>
        </thead>
        <tbody>
            <?php
            
            $sql="SELECT * FROM Book";
            $kategorit=mysqli_query($dbconn,$sql);
            if($kategorit){
                while ($kategori =mysqli_fetch_assoc($kategorit)) {
                    $kid=$kategori['ISBN'];
                    echo "<tr class='active-row'>";
                    echo "<td>". $kategori['ISBN'] . "</td>";
                    echo "<td>". $kategori['book_name'] . "</td>";
                    echo "<td><a href='deleteBook.php?kid={$kid}'>
                    <i class='far fa-trash-alt'></i></a></td>";
                    echo "</tr>";
                }
            }
            
            ?>
    </table>
    <a href="addBook.php" id="add_entity"><i class="fas fa-plus"></i> Add Books</a>
</section>


<?php
include "footer.php";

?>