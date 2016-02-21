//= require jquery-1.12.0.min.js
//= require bootstrap.min.js
//= require jquery.bootstrap-autohidingnavbar.min.js
//= require medium-editor.js


$("div.navbar-fixed-top").autoHidingNavbar();

var editor = new MediumEditor('.editable', {
  toolbar: {
    buttons: ['bold', 'italic', 'underline', 'strikethrough', 'quote', 'anchor', 'image', 'justifyLeft', 'justifyCenter', 'justifyRight', 'justifyFull', 'superscript', 'subscript', 'orderedlist', 'unorderedlist', 'pre', 'removeFormat', 'outdent', 'indent', 'h2', 'h3'],
  },
  buttonLabels: 'fontawesome'
});
cssLink = document.getElementById('medium-editor-theme');

document.getElementById('my-form').onsubmit = function (e) {
  var items = document.querySelectorAll('.editable'),
      i,
      input;
  for (i = 0; i < items.length; i += 1) {
      input = document.getElementById(items[i].getAttribute('data-field-id'));
      input.value = items[i].innerHTML;
  }
  console.log(document.getElementById('hidden-content').value);
};

var editorHideToolbar = new MediumEditor('.editable-hide-toolbar', {
  toolbar: false
});