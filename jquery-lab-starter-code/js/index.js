$(document).ready(function() {

  var newFacts = ["Big Ben is the name of the bell - the building is called Elizabeth Tower.", "France was still executing people by guillotine when the first Star Wars movie came out.", "What is called a “French kiss” in the English speaking world is known as an “English kiss” in France.", "At any one time, about 0.7% of the world’s population is drunk."];

  $facts = $('#facts');
  $count = $('#count');

  $facts.prepend('<li>A brand new fact!</li>');

  for (var i = 0; i < newFacts.length; i++) {
    $facts.append('<li>' + newFacts[i] + '</li>');
  }

  $count.html($facts.children().length);

  for (var i = 0; i < $facts.children().length; i++) {
    if (i % 2 == 0) {
      $($facts.children()[i]).addClass('odd');
    } else {
      $($facts.children()[i]).addClass('even');
    }
  }
 
  function highlightFact(event) {
    $(this).toggleClass('selected');
  }

  $facts.children().hover(highlightFact);

});
