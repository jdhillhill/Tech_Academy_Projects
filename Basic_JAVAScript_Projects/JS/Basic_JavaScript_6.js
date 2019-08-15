
function Age_Function() {
    var Age, Can_bossMe;
    Age = document.getElementById("Age").value;
    Can_bossMe = (Age < 12) ? "No problem":"Sorry, no can do";
    document.getElementById("Result").innerHTML = Can_bossMe + " buckaroo.";
            }

function Vehicle(Make, Model, Year, Color) {
    this.Vehicle_Make = Make;
    this.Vehicle_Model = Model;
    this.Vehicle_Year = Year;
    this.Vehicle_Color = Color;
}

    var Jack = new Vehicle("Dodge", "Viper", 2020, " Red");
    var Emily = new Vehicle("Jeep", "Trail Hawk", 2019, "White and Black");
    var Erik = new Vehicle("Ford", "Pinto", 1971, "Mustard");
function myFunction() {
    document.getElementById("Keywords_and_Constructors").innerHTML = 
    "Erik drives a " + Erik.Vehicle_Color + "-colored " + Erik.Vehicle_Model + 
    " manufactured in " + Erik.Vehicle_Year;
}

function Person(first, last, age, eye) {
    this.Person_first = first;
    this.Person_lastName = last;
    this.Person_age = age;
    this.Person_eyeColor = eye;
  }

    var sister = new Person("Anna", "Hill", 52, "brown");
    var mother = new Person("Diane", "Hill", 74, "brown");
    var father = new Person("David", "Hill", "deceased", "brown");
        
function Result2() {
    document.getElementById("New_and_This").innerHTML = 
    sister.Person_first + " is " + sister.Person_age + " years old.";
}

function nest_Function() {
    document.getElementById("nesting").innerHTML = Count();
    function Count() {
        var Starting_point = 13;
        function Plus_three() {Starting_point += 3;}
        Plus_three();
        return Starting_point;
    }
}