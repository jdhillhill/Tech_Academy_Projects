

function myFunc() {
    var part_1 = "Dude, this took forevever ";
    var part_2 = "to complete because ";
    var part_3 = "I capitalized the D in ";
    var part_4 = "document.:(";
    var whole_sentence = part_1.concat(part_2, part_3, part_4);
    document.getElementById("Concatenate").innerHTML = whole_sentence
}

function slice_Method(){
    var Sentence = "I am going to roll with a slightly less creepy quote.";
    var Section = Sentence.slice(25,35);
    document.getElementById("Slice").innerHTML = Section;
}

function myFunc2(){
    var str = "I am going to roll with a slightly less creepy quote.";
    var res = str.toUpperCase();
    document.getElementById("demo2").innerHTML = res;
}

function myFunc3(){
    var str = "I am going to roll with a slightly less creepy quote.";
    var n = str.search("slightly");
    document.getElementById("demo3").innerHTML = n;
}

function string_Method() {
    var X = 8675;
    document.getElementById("Numbers_to_string").innerHTML = X.toString();
}

function precision_Method() {
    var X =129383.1412346756309;    
    document.getElementById("Precision").innerHTML = X.toPrecision(10);
}

function myFunc4() {
    var str2 = "Hello Brooklyn!"; 
    var res2  = str2.valueOf();
    document.getElementById("demo4").innerHTML = res2;
}




