var answer = document.getElementById('answer');
var question = answer.dataset.question;
var year = answer.dataset.year;
var cast = answer.dataset.cast;

function CheckYear(image) {
  if(image.dataset.year == this.year){
      image.style.border = "2px solid green";
      alert("correct");
    } else {
      image.style.border = "2px solid red";
    }
}

function CheckCast(image) {
  if(image.dataset.cast == this.cast){
    image.style.border = "2px solid green";
      alert("correct");
    } else {
      image.style.border = "2px solid red";
    }
}

function CheckAnswer(image) {
  if(question == "year") {
    CheckYear(image);
  }else{
    CheckCast(image);
  }
}