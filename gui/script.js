function selectMenu(id) {

  var menu = document.getElementById("menu");
  var menu_ponint = menu.getElementsByClassName("menu_ponint");

  // remove current selection
  for (var i = 0; i < menu_ponint.length; i++) {

    if( menu_ponint[i].className.includes("mp_active") ){

      var newClassName = menu_ponint[i].className.replace("mp_active", "");
      menu_ponint[i].className = newClassName;

    }

  }

  // add new selection
  document.getElementById(id).className = document.getElementById(id).className + " mp_active";

  //change iframe href

  if(id == "sq_9"){       document.getElementById("querry").src = "php/" + id + ".php"
  }else if(id == "sq_7"){ document.getElementById("querry").src = "php/" + id + ".php"
  }else{                  document.getElementById("querry").src = "html/" + id + ".html" }


}
