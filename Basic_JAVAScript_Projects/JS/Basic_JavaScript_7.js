function get_Date() {
    if (new Date().getHours() < 18) {
        document.getElementById("Greeting").innerHTML = "Not to get all Tolle on you, but he kinda has a point... it really is now.";
    }
}

function Age_Function() {
    var Age, Can_drive;
    Age = document.getElementById("Age").value;
    Can_drive = (Age > 15) ? "Grab the keys Lee.": "Get on the bus Gus.";
    document.getElementById("Result").innerHTML = Can_drive;
            }

    function Time_function() {
                var Time = new Date().getHours();
                var Reply;
                if (Time < 12 == Time > 0) {
                    Reply = "It is morning time.";
                }
                else if (Time > 12 == Time < 18) {
                    Reply = "It is evening time."
                }
                document.getElementById("Time_of_day").innerHTML = Reply;
            }
