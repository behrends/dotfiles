window.setTimeout(function(){
$('.tweet-text').each(function(index) {
  var t = $(this).text();
  if (t.match(/^(?:@)/)){
     $(this).closest('.stream-item').remove();
  }
});
}, 2000);
