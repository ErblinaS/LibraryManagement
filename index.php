<?php
    include "header.php";
?>

<section class="section1">
    <div class="slide-bar">
    <section class="list-entity container">
        <div class="img">
        <img src='img/library2.png' alt="" style='width:100%;height:60%'>
        </div>
</section>  
    </div>
</section>

<section class="section2 p-y-10px">
    <div class="container">
        <h1>Do you want to borrow a book?</h1>
        <p>You are very welcome to do that in Buzuku Library.</p>
    </div>
</section>
<section class="section3 p-y-80px">
    <div class=" images">
        <h1 class="title-section"><i>NEW BOOKS</i></h1>
    
        <div class="containerr" style="display: flex; flex-direction: row; ">
            <div class="col1" style="text-align: center;"><img src="img/romance1.jpg" alt="Avatar" style="width:60%">
            <p><h2>A perfect life</h2> <h4>Rhonda Byrne</h4></p>
</div>
<div class="col2" style="text-align: center;">
<img src="img/collen.jpg" alt="Avatar" style="width:60%" >
<p><h2>9-Nov</h2> <h4>Colleen Hover</h4></p>
</div>
<div class="col3" style="text-align: center;"><img src="img/arthur.jpg" alt="Avatar" style="width:60%">
<p><h2>2061 Odyssey</h2> <h4>Arthur C. Clarke</h4></p>
</div>
</div>

<br><br>
        <h2 class="title-section">CATEGORIES</h2>
        <div class="butonat1" style='text-align:center;'>
        <form method="post">
        <input type="submit" name="Fantasy" value="Fantasy"/>
        <input type="submit" name="Fiction" value="Fiction"/>
        <input type="submit" name="Philosophy" value="Philosophy"/>
        <input type="submit" name="Psychology" value="Psychology"/>
        <input type="submit" name="Romance" value="Romance"/><br>
        <input type="submit" name="Mystery" value="Mystery"/>
        <input type="submit" name="History" value="History"/>
        <input type="submit" name="Action" value="Action"/>
        <input type="submit" name="Biography" value="Biography"/>
        <input type="submit" name="Drama" value="Drama"/>
        </form>
        </div>
        <?php
    echo "<table class='styled-table'>";
    echo "<thead>";
    echo "<tr>";
    echo " <th>ISBN</th>
    <th>Book Name</th>
    <th>Category</th>
    <th>Author</th>"
    ;
    echo "</tr>";
    echo "</thead>";
    echo "<tbody>";
    if(isset($_POST['Fantasy'])) {
        $kategorit=Fantasy_category();
        while ($kategori =mysqli_fetch_assoc($kategorit)) {
            $ISBN=$kategori['ISBN'];
            echo "<tr class='active-row'>";
            echo "<td>". $kategori['ISBN'] . "</td>";
            echo "<td>". $kategori['book_name'] . "</td>";
            echo "<td>". $kategori['category_name'] . "</td>";
            echo "<td>". $kategori['full_name'] . "</td>";
            echo "</tr>";
        }
    }
    if(isset($_POST['Fiction'])) {
        $kategorit=Fiction_category();
        while ($kategori =mysqli_fetch_assoc($kategorit)) {
            $kid=$kategori['ISBN'];
            echo "<tr class='active-row'>";
            echo "<td>". $kategori['ISBN'] . "</td>";
            echo "<td>". $kategori['book_name'] . "</td>";
            echo "<td>". $kategori['category_name'] . "</td>";
            echo "<td>". $kategori['full_name'] . "</td>";
            echo "</tr>";
        }
    }
    if(isset($_POST['Mystery'])) {
        $kategorit=Mystery_category();
        while ($kategori =mysqli_fetch_assoc($kategorit)) {
            $kid=$kategori['ISBN'];
            echo "<tr class='active-row'>";
            echo "<td>". $kategori['ISBN'] . "</td>";
            echo "<td>". $kategori['book_name'] . "</td>";
            echo "<td>". $kategori['category_name'] . "</td>";
            echo "<td>". $kategori['full_name'] . "</td>";
            echo "</tr>";
        }
    }
    if(isset($_POST['History'])) {
        $kategorit=History_category();
        while ($kategori =mysqli_fetch_assoc($kategorit)) {
            $kid=$kategori['ISBN'];
            echo "<tr class='active-row'>";
            echo "<td>". $kategori['ISBN'] . "</td>";
            echo "<td>". $kategori['book_name'] . "</td>";
            echo "<td>". $kategori['category_name'] . "</td>";
            echo "<td>". $kategori['full_name'] . "</td>";
            echo "</tr>";
        }
    }
    if(isset($_POST['Philosophy'])) {
        $kategorit=Philosophy_category();
        while ($kategori =mysqli_fetch_assoc($kategorit)) {
            $kid=$kategori['ISBN'];
            echo "<tr class='active-row'>";
            echo "<td>". $kategori['ISBN'] . "</td>";
            echo "<td>". $kategori['book_name'] . "</td>";
            echo "<td>". $kategori['category_name'] . "</td>";
            echo "<td>". $kategori['full_name'] . "</td>";
            echo "</tr>";
        }
    }
    if(isset($_POST['Psychology'])) {
        $kategorit=Psychology_category();
        while ($kategori =mysqli_fetch_assoc($kategorit)) {
            $kid=$kategori['ISBN'];
            echo "<tr class='active-row'>";
            echo "<td>". $kategori['ISBN'] . "</td>";
            echo "<td>". $kategori['book_name'] . "</td>";
            echo "<td>". $kategori['category_name'] . "</td>";
            echo "<td>". $kategori['full_name'] . "</td>";
            echo "</tr>";
        }
    }
    if(isset($_POST['Romance'])) {
        $kategorit=Romance_category();
        while ($kategori =mysqli_fetch_assoc($kategorit)) {
            $kid=$kategori['ISBN'];
            echo "<tr class='active-row'>";
            echo "<td>". $kategori['ISBN'] . "</td>";
            echo "<td>". $kategori['book_name'] . "</td>";
            echo "<td>". $kategori['category_name'] . "</td>";
            echo "<td>". $kategori['full_name'] . "</td>";
            echo "</tr>";
        }
    }
    if(isset($_POST['Drama'])) {
        $kategorit=Drama_category();
        while ($kategori =mysqli_fetch_assoc($kategorit)) {
            $kid=$kategori['ISBN'];
            echo "<tr class='active-row'>";
            echo "<td>". $kategori['ISBN'] . "</td>";
            echo "<td>". $kategori['book_name'] . "</td>";
            echo "<td>". $kategori['category_name'] . "</td>";
            echo "<td>". $kategori['full_name'] . "</td>";
            echo "</tr>";
        }
    }
    if(isset($_POST['Biography'])) {
        $kategorit=Biography_category();
        while ($kategori =mysqli_fetch_assoc($kategorit)) {
            $kid=$kategori['ISBN'];
            echo "<tr class='active-row'>";
            echo "<td>". $kategori['ISBN'] . "</td>";
            echo "<td>". $kategori['book_name'] . "</td>";
            echo "<td>". $kategori['category_name'] . "</td>";
            echo "<td>". $kategori['full_name'] . "</td>";
            echo "</tr>";
        }
    }
    if(isset($_POST['Action'])) {
        $kategorit=Action_category();
        while ($kategori =mysqli_fetch_assoc($kategorit)) {
            $kid=$kategori['ISBN'];
            echo "<tr class='active-row'>";
            echo "<td>". $kategori['ISBN'] . "</td>";
            echo "<td>". $kategori['book_name'] . "</td>";
            echo "<td>". $kategori['category_name'] . "</td>";
            echo "<td>". $kategori['full_name'] . "</td>";
            echo "</tr>";
        }
    }
    echo "</table>";
       
            
        ?>
    </div>
</section>

<section class="section5 p-y-10px">
    <p>We believe everyone should have an enjoyable experience with our Library.</p>
</section>

<footer class="footer p-y-80px">
    <div class="container">
        <div class="footer-content">
            <div class="col1">
                <h2>Buzuku Library Website</h2>
                <p> Edith Durham, 10000 Pristina. <br><br>
                 
                  </p>
                
            </div>
            <div class="col2">
                <div>
                    <h2>Links</h2>
                    <ul>
                        <li><a href="books.php">Books</a></li>
                    <li><a href="categories.php">Category</a></li>
                    <li><a href="authors.php">Authors</a></li>
                    <li><a href="users.php">Users</a></li>
                    </ul>
                </div>
            </div>
            <div class="col3">
                <h2>Contact Us</h2>
                <p>
                Dial this number: <br><br>
                    <a href="tel:0037744238738" style='text-decoration:none;'>0037744238738</a></p><br><br>
                <p> Or contact us via email: <br><br>
                <a href="mailto:buzukulibrary@hotmail.com" style='text-decoration:none;'>buzukulibrary@hotmail.com</a></p>
            </div>
        </div>
    </div>
</footer>

<?php
include "footer.php";
?>