

{
    var str = "JavaScript!<br><br>";
    str = str.fontcolor("");
    document.write(str)
}




{
    var BandMates= "Motley Crew", Drummer = "Tommy", Singer = "Vince", Guitar = "Nikki", Base = "Mick";
    
    Drummer = Drummer.fontcolor("red");
    Singer = Singer.fontcolor("yellow");
    Guitar = Guitar.fontcolor("blue")
    Base = Base.fontcolor("purple")
    document.write(Base);
    
}


    document.write("<br> \"Keep cool but don\'t freeze.\"<br>-Mayonaise jar<br><br>");


    function add(num1, num2) {
        return num1 + num2;
}


{
   document.write(3 + 6);
   document.write("<br>");
}



function My_First_Function() {
    var String = "This Text is blue.";
    var result = String.fontcolor("blue");
    document.getElementById("Blue_Text").innerHTML = result;
}

    function myFunction() {
        var sentence = "This is me concatenating";
        sentence += " and adding an on-click function and using the +=!";
        document.getElementById("concatenate").innerHTML = sentence;
    }