editModeEnabled = false;

$(function () {

  // Hide all forms in items when clicking outside
  $('html').click(function() {
    $('.item form').each(function (index, elem) {
      setFormEnabled($(elem).closest('.item'), false);
    }).addClass('hidden');
    $('.item .name').removeClass('hidden');
  });

  $('.item').each(function (index, elem) {
    initializeItem(elem); // Initialize all items on load
  });

});

/*
 * Initializes an item element
 */
function initializeItem(elem) {
  // Show / hide delete button
  if (editModeEnabled) {
    $(elem).find('.destroy-btn').removeClass('hidden'); // Show the destroy button
  } else {
    $(elem).find('.destroy-btn').addClass('hidden'); // Hide the destroy button
  }

  // Show form on click
  $(elem).on('click', function (e) {
    if ($(e.target).is('[data-remote]')
      || $(e.target).parentsUntil('.item').is('[data-remote]')
      || $(e.target).is('a')
      || $(e.target).parentsUntil('.item').is('a'))
      return;
      setFormEnabled(this, true);
    e.stopPropagation();
  });
}


/*
 * Sets the form on the given item element to be enabled or disabled
 */
function setFormEnabled (elem, enabled) {
  if (enabled) {
    $('.item').each(function (index, item) {
      setFormEnabled(item, false);
    });
    $(elem).find('form').removeClass('hidden');
    $(elem).find('input[type="text"]').select();
    $(elem).find('.name').addClass('hidden');
    $(elem).css('background-color', '#eee');
  } else {
    if (!$(elem).find('form').hasClass('hidden'))
      $(elem).find('form').submit(); // Submit the form if hidden
    $(elem).find('.name').text($(elem).find('input[type="text"]').val()); // Set the text
    $(elem).css('background-color', '#fff'); // Set to original colour
  }
}
