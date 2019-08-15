
            function my_Function() {
                document.getElementById("Test").innerHTML = 0/0;
            }
            function my_Function2() {
                document.getElementById("Test2").innerHTML = isNaN("This is a string");
            }

            function my_Function3() {
                document.getElementById("Test3").innerHTML = isNaN('007');
            }

            function myFunction() {
                var x = 7;
                document.getElementById("demo").innerHTML = (x === "7");
            }
            function myFunction2() {
                var x = 7;
                document.getElementById("demo2").innerHTML = (7 === 7);
            }
            function not_Function() {
                document.getElementById("Not").innerHTML = !(5 > 10);
            }
            