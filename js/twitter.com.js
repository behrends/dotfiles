function hideConversations(){
  $('.tweet-text').each(function(index) {
    if ($(this).text().match(/^(?:@)/)){
      $(this).closest('.stream-item').toggle();
    }
  });
}

window.setTimeout(function(){
  var checkbox = $('<input type="checkbox" id="no_conversations"/>');
  $('.profile-actions-container .profile-actions').append(checkbox).append(' hide conversations');
  $('#no_conversations').change(hideConversations);
}, 2000);
