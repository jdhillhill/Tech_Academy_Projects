


function Call_Loop() {
    var Digit = "";
    var X = 1;
    while (X<19) {
        Digit += "<br>" + X;
        X++;
    }
    document.getElementById("Loop").innerHTML = Digit;

    }
function myFunc2() {
    var str = "Jason"
    var n = str.length;
    document.getElementById("demo4").innerHTML = n;

}

var Instruments = ["Cow", "Chicken", "Sheep", "Pig", "Horse", "Goat", "Llama"];
    var Content = "";
    var Y;
    function for_Loop() {
        for (Y = 0; Y < Instruments.length; Y++) {
        Content += Instruments[Y] + "<br>";
        }
        document.getElementById("List_of_FarmAnimals").innerHTML = Content;
    }

function sloth_pics() {
    var Sloth_Picture = [];
    Sloth_Picture[0] = "smiling";
    Sloth_Picture[1] = "styling";
    Sloth_Picture[2] = "rocking";
    document.getElementById("Sloth").innerHTML = "In this picture, the sloth is " + Sloth_Picture[2]

}

function constant_function(){
    const Racecar = {type:"guitar", brand:"Fender", colort:"black"};
    Racecar.type = "rally car";
    Racecar.color = "blue";
    Racecar.price = 16000;
    document.getElementById("Constant").innerHTML = "The cost of the " + Racecar.type + " is " + Racecar.price;
}





