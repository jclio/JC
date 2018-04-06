 function s(e) {return document.querySelector(e);}
var navbarToggler=s(".navbar-toggler");
var navbarTogglerTarget=s( navbarToggler.dataset.target ); 

navbarToggler.onclick=function(){navbarTogglerTarget.classList.toggle(navbarToggler.dataset.toggle)}

window.addEventListener('scroll',winScroll);
var mainNav=s('#mainNav');
    function winScroll(e){  
        if(document.documentElement.scrollTop >200){ mainNav.classList.add("js-scroll-trigger"); }else{ mainNav.classList.remove("js-scroll-trigger");}
    }
 
 var photo=document.querySelectorAll(".photo");
 var photo_original=s(".photo_original");
 var frame_img=s(".frame img");
 for (var i = 0; i < photo.length; i++) {
 	photo[i].addEventListener("click",function(){
 		photo_original.classList.add("display_block");
 		frame_img.src="src/img/picture"+ this.dataset.i+".jpg";
 	});
 }

photo_original.addEventListener("click",function(){photo_original.classList.remove("display_block");})