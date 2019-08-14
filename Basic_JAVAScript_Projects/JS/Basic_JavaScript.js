

{
    var str = "Hello World!<br><br>";
    str = str.fontcolor("green");
    document.write(str)
}




{
    var Family= "The Hills", Dad = "David", Mom = "Diane", Daughter = "Anna", Son = "Jason";
    
    Dad = Dad.fontcolor("red");
    Mom = Mom.fontcolor("yellow");
    Daughter = Daughter.fontcolor("blue")
    Son = Son.fontcolor("purple")
    document.write(Son);
    
}

document.write("<br> \"Keep cool but don\'t freeze.\"<br>-Mayonaise jar<br><br>");
{
   document.write(3 + 6);
   document.write("<br>");
}



function My_First_Function() {
    var String = "This Text is Green.";
    var result = String.fontcolor("green");
    document.getElementById("Green_Text").innerHTML = result;
}

    function myFunction() {
        var sentence = "I am learning";
        sentence += " a lot from this book!";
        document.getElementById("concatenate").innerHTML = sentence;
    }