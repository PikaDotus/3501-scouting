WebFontConfig = {
  google: { families: [ 'Source+Sans+Pro:300,400,700,300italic,400italic,700italic:latin' ] }
};
(function() {
  var wf = document.createElement('script');
  wf.src = 'http://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
  wf.type = 'text/javascript';
  wf.async = 'true';
  var s = document.getElementsByTagName('script')[0];
  s.parentNode.insertBefore(wf, s);
})();
