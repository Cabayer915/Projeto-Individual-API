const slider2 = document.querySelectorAll('.slider2');
const btnPrev2 = document.getElementById('prev-button2');
const btnNext2 = document.getElementById('next-button2');

let currentSlide = 0;

function hideSlider() {
  slider2.forEach(item => item.classList.remove('on'))
}

function showSlider() {
  slider2[currentSlide].classList.add('on')
}

function nextSlider() {
  hideSlider()
  if(currentSlide === slider2.length -1) {
    currentSlide = 0
  } else {
    currentSlide++
  }
  showSlider()
}

function prevSlider() {
  hideSlider()
  if(currentSlide === 0) {
    currentSlide = slider2.length -1
  } else {
    currentSlide--
  }
  showSlider()
}

btnNext2.addEventListener('click', nextSlider)
btnPrev2.addEventListener('click', prevSlider)