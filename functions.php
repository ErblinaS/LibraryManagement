<?php
session_start();
$dbconn;
dbConnection();
function dbConnection(){
    global $dbconn;
    $dbconn=mysqli_connect("localhost",'root','','prova5_1');
    if(!$dbconn){
        die("Deshtoi lidhja me DB".mysqli_error($dbconn));
    }
}

function Fantasy_category()
{
    global $dbconn;
    $sql="SELECT b.ISBN,b.book_name,c.category_name,CONCAT(a.first_name,' ',a.last_name) AS full_name";
    $sql.=" FROM Book b INNER JOIN Book_Category k ON b.ISBN=k.ISBN JOIN Category c ON k.ID_type=c.ID_type JOIN Book_Authors ba ON ba.ISBN=b.ISBN JOIN Authors a ON a.author_ID=ba.author_ID WHERE c.category_name='Fantasy '";   
    return mysqli_query($dbconn,$sql);
}

function Fiction_category()
{
    global $dbconn;
    $sql="SELECT b.ISBN,b.book_name,c.category_name,CONCAT(a.first_name,' ',a.last_name) AS full_name";
    $sql.=" FROM Book b INNER JOIN Book_Category k ON b.ISBN=k.ISBN JOIN Category c ON k.ID_type=c.ID_type JOIN Book_Authors ba ON ba.ISBN=b.ISBN JOIN Authors a ON a.author_ID=ba.author_ID WHERE c.category_name='Fiction'";   
    return mysqli_query($dbconn,$sql);
}
function History_category()
{
    global $dbconn;
    $sql="SELECT b.ISBN,b.book_name,c.category_name,CONCAT(a.first_name,' ',a.last_name) AS full_name";
    $sql.=" FROM Book b INNER JOIN Book_Category k ON b.ISBN=k.ISBN JOIN Category c ON k.ID_type=c.ID_type JOIN Book_Authors ba ON ba.ISBN=b.ISBN JOIN Authors a ON a.author_ID=ba.author_ID WHERE c.category_name='History'";   
    return mysqli_query($dbconn,$sql);
}
function Romance_category()
{
    global $dbconn;
    $sql="SELECT b.ISBN,b.book_name,c.category_name,CONCAT(a.first_name,' ',a.last_name) AS full_name";
    $sql.=" FROM Book b INNER JOIN Book_Category k ON b.ISBN=k.ISBN JOIN Category c ON k.ID_type=c.ID_type JOIN Book_Authors ba ON ba.ISBN=b.ISBN JOIN Authors a ON a.author_ID=ba.author_ID WHERE c.category_name='Romance'";   
    return mysqli_query($dbconn,$sql);
}
function Mystery_category()
{
    global $dbconn;
    $sql="SELECT b.ISBN,b.book_name,c.category_name,CONCAT(a.first_name,' ',a.last_name) AS full_name";
    $sql.=" FROM Book b INNER JOIN Book_Category k ON b.ISBN=k.ISBN JOIN Category c ON k.ID_type=c.ID_type JOIN Book_Authors ba ON ba.ISBN=b.ISBN JOIN Authors a ON a.author_ID=ba.author_ID WHERE c.category_name='Mystery'";   
    return mysqli_query($dbconn,$sql);
}
function Philosophy_category()
{
    global $dbconn;
    $sql="SELECT b.ISBN,b.book_name,c.category_name,CONCAT(a.first_name,' ',a.last_name) AS full_name";
    $sql.=" FROM Book b INNER JOIN Book_Category k ON b.ISBN=k.ISBN JOIN Category c ON k.ID_type=c.ID_type JOIN Book_Authors ba ON ba.ISBN=b.ISBN JOIN Authors a ON a.author_ID=ba.author_ID WHERE c.category_name='Philosophy'";   
    return mysqli_query($dbconn,$sql);
}
function Psychology_category()
{
    global $dbconn;
    $sql="SELECT b.ISBN,b.book_name,c.category_name,CONCAT(a.first_name,' ',a.last_name) AS full_name";
    $sql.=" FROM Book b INNER JOIN Book_Category k ON b.ISBN=k.ISBN JOIN Category c ON k.ID_type=c.ID_type JOIN Book_Authors ba ON ba.ISBN=b.ISBN JOIN Authors a ON a.author_ID=ba.author_ID WHERE c.category_name='Psychology'";   
    return mysqli_query($dbconn,$sql);
}function Drama_category()
{
    global $dbconn;
    $sql="SELECT b.ISBN,b.book_name,c.category_name,CONCAT(a.first_name,' ',a.last_name) AS full_name";
    $sql.=" FROM Book b INNER JOIN Book_Category k ON b.ISBN=k.ISBN JOIN Category c ON k.ID_type=c.ID_type JOIN Book_Authors ba ON ba.ISBN=b.ISBN JOIN Authors a ON a.author_ID=ba.author_ID WHERE c.category_name='Drama'";   
    return mysqli_query($dbconn,$sql);
}
function Biography_category()
{
    global $dbconn;
    $sql="SELECT b.ISBN,b.book_name,c.category_name,CONCAT(a.first_name,' ',a.last_name) AS full_name";
    $sql.=" FROM Book b INNER JOIN Book_Category k ON b.ISBN=k.ISBN JOIN Category c ON k.ID_type=c.ID_type JOIN Book_Authors ba ON ba.ISBN=b.ISBN JOIN Authors a ON a.author_ID=ba.author_ID WHERE c.category_name='Biography'";   
    return mysqli_query($dbconn,$sql);
}
function Action_category()
{
    global $dbconn;
    $sql="SELECT b.ISBN,b.book_name,c.category_name,CONCAT(a.first_name,' ',a.last_name) AS full_name";
    $sql.=" FROM Book b INNER JOIN Book_Category k ON b.ISBN=k.ISBN JOIN Category c ON k.ID_type=c.ID_type JOIN Book_Authors ba ON ba.ISBN=b.ISBN JOIN Authors a ON a.author_ID=ba.author_ID WHERE c.category_name='Action and Adventure'";   
    return mysqli_query($dbconn,$sql);
}




function deleteBook($ISBN){
    
    global $dbconn;
    $sql="DELETE FROM Book WHERE ISBN='$ISBN'";
    $res=mysqli_query($dbconn,$sql);
    if($res){
        $_SESSION['message']="Book is deleted succesfully";
        header("Location: books.php");
    }else{
        die("Book is not deleted" . mysqli_error($dbconn));
    }
}
function deleteCategory($ID_type){
    
    global $dbconn;
    $sql="DELETE FROM Category WHERE ID_type='$ID_type'";
    $res=mysqli_query($dbconn,$sql);
    if($res){
        $_SESSION['message']="Category is deleted succesfully";
        header("Location: categories.php");
    }else{
        die("Category is not deleted" . mysqli_error($dbconn));
    }
}
function deleteAuthor($author_ID){
    
    global $dbconn;
    $sql="DELETE FROM Authors WHERE author_ID='$author_ID'";
    $res=mysqli_query($dbconn,$sql);
    if($res){
        $_SESSION['message']="Author is deleted succesfully";
        header("Location: authors.php");
    }else{
        die("Author is not deleted" . mysqli_error($dbconn));
    }
}
function deleteUser($ID_user){
    
    global $dbconn;
    $sql="DELETE FROM Users WHERE ID_user='$ID_user'";
    $res=mysqli_query($dbconn,$sql);
    if($res){
        $_SESSION['message']="User is deleted succesfully";
        header("Location: users.php");
    }else{
        die("User is not deleted" . mysqli_error($dbconn));
    }
}
function takeBook($kid){
    global $dbconn;
    $sql="SELECT ISBN , book_name FROM Book WHERE ISBN=$kid";
    return $book=mysqli_query($dbconn,$sql);
}
function takeCategory($kid)
{
   global $dbconn;
   $sql="SELECT ID_type,category_name FROM Category WHERE ID_type='$kid'";  
   return $category=mysqli_query($dbconn,$sql);
}
function takeAuthor($kid)
{
   global $dbconn;
   $sql="SELECT author_ID,first_name,last_name FROM Authors WHERE author_ID='$kid'";  
   return $category=mysqli_query($dbconn,$sql);
}
function takeUser($kid)
{
   global $dbconn;
   $sql="SELECT ID_user,first_name,last_name,birthdate,gender FROM Users WHERE ID_user='$kid'";  
   return $category=mysqli_query($dbconn,$sql);
}
function addBook($ISBN,$book_name){
    global $dbconn;
    $sql="INSERT INTO Book (ISBN,book_name) VALUES ('$ISBN','$book_name')";
    $res=mysqli_query($dbconn,$sql);
    if($res){
        $_SESSION['message']="Book is added succesfully";
        header("Location: books.php");
    }else{
        die("Book is not added succesfully" . mysqli_error($dbconn));
    }
}
function addCategory($category_name){

    global $dbconn;
    $sql="INSERT INTO Category(category_name) VALUES ";
    $sql.="('$category_name')";
    $res=mysqli_query($dbconn,$sql);
    if($res){
        $_SESSION['message']="Category is added succesfully";
        header("Location: categories.php");
    }else{
        die("Category is not added succesfully" . mysqli_error($dbconn));
    }
}
function addAuthor($first_name,$last_name){

    global $dbconn;
    $sql="INSERT INTO Authors(first_name,last_name) VALUES ";
    $sql.="('$first_name','$last_name')";
    $res=mysqli_query($dbconn,$sql);
    if($res){
        $_SESSION['message']="Author is added succesfully";
        header("Location: authors.php");
    }else{
        die("Author is not added" . mysqli_error($dbconn));
    }
}
function addUser($first_name,$last_name,$birthdate,$gender){

    global $dbconn;
    $sql="INSERT INTO Users(first_name,last_name,birthdate,gender) VALUES ";
    $sql.="('$first_name','$last_name','$birthdate','$gender')";
    $res=mysqli_query($dbconn,$sql);
    if($res){
        $_SESSION['message']="User is added succesfully";
        header("Location: users.php");
    }else{
        die("User is not added" . mysqli_error($dbconn));
    }
}

?>