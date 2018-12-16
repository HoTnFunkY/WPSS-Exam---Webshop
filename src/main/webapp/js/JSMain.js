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

    $("button.buybutton").on({

        click: function(){
            var idtext = $(this).prev().text();
            var idtxt = idtext.toString();
            var li = $("<li>idtxt</li>");
            ul.append(li);
            // Er fejl i, den får fat i objected or ikke stringen...
        }
    });
});
//ABOUT SCRIPT

//CONTACT SCRIPT

