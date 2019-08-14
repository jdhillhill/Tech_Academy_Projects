

   
function My_Dictionary() {
    var Band = {
        Name: "Police",
        Singer: "Sting",
        Base: "Sting",
        Guitar: "Andy Summer",
        Drummer: "Stewart Copeland",
    };
    delete Band.Drummer;
    document.getElementById("Dictionary").innerHTML = Band.Drummer;}




