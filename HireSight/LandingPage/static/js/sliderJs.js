let sliderImages = document.querySelectorAll('.slide'),
arrowleft = document.querySelector('#arrow-left'),
arrowright = document.querySelector('#arrow-right'),
current = 0;

var myTimer;

//clear all images
function reset(){
    for(let i=0;i<sliderImages.length;i++){
        sliderImages[i].style.display = 'none';
    }
}

//Init Slides
function startSlide(){
    reset();
    sliderImages[0].style.display = 'block';
}

//Show prev
function slideLeft(){
    if(current === 0){
        current = sliderImages.length;
    }
    reset();
    sliderImages[current-1].style.display = 'block';
    current--;
}

function slideLeft1(){
    slideLeft();
    clearInterval(myTimer);
    myTimer = setInterval(slideRight,4000);
}

//ShowNext
function slideRight(){
    if(current === sliderImages.length-1){
        current = -1;
    }
    reset();
    sliderImages[current+1].style.display = 'block';
    current++;
}

function slideRight1(){
    slideRight();
    clearInerval(myTimer);
    myTimer = setInterval(slideRight,4000);
}

arrowleft.addEventListener('click',()=> {
    slideLeft1();
});

arrowright.addEventListener('click',()=>{
    slideRight1();
});

startSlide();
myTimer = setInterval(slideRight,4000);