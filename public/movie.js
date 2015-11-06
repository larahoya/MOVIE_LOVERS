var random_year = document.getElementById('selected-year');
var correct_year = random_year.dataset.year;

function checkYear(year) {
  if(year == correct_year) {
    alert("correct");
  } else {
    alert("incorrect");
  }
}