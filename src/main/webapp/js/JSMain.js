//GLOBAL SCRIPT
$(document).ready(function(){


    $("p").on({
        mouseenter: function(){
            $(this).css("background-color", "lightgray");
        },
        mouseleave: function(){
            $(this).css("background-color", "lightblue");
        },
        click: function(){
            $(this).css("background-color", "yellow");
        }
    });
});

//INDEX SCRIPT

function verify() {
    var check = document.getElementById("botcheck");
    var link = document.getElementById("enterbutton");
    if (check.checked === true) {
        link.style.display = "block";
    }
    else {
        link.style.display = "none";
    }
    }


//HOME SCRIPT
$(document).ready(function(){
    var ul = $("#shoppinglist");

    $(".buybutton").on({

        click: function(){
            var idtext = $(this).prev().text();
            var idtxt = idtext.toString();
            var li = $("<li></li>");
            $("ul").append(li);
            $("#shoppinglist li:last").text(idtext);
            //Tilføjer et <li> element, da ligger sidst i listen kan jeg derter tilføje "innerHTML" fra "previous" elemnet til knappen som er ID'et.
        }
    });
});
//ABOUT SCRIPT

//CONTACT SCRIPT

