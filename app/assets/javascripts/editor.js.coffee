# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	editor = CKEDITOR.replace("editor",
	    # skin: "v2"
	    toolbar: [ [ "Source", "Preview",  "Templates" ], [ "Bold", "Italic", "Underline", "Strike" ],['PasteText','PasteFromWord'], ['Undo','Redo'], [ "NumberedList", "BulletedList"], [ "Link", "Unlink"], [ "Image", "Flash"] ]
	    filebrowserBrowseUrl: "/fm/index"
	    filebrowserImageBrowseUrl: "/fm/index"
	    filebrowserFlashBrowseUrl: "/fm/index"
	    filebrowserImageUploadUrl: "/fm/index"
	    filebrowserFlashUploadUrl: "/fm/index"
	    filebrowserImageWindowWidth: "980"
	    filebrowserImageWindowHeight: "490"
	    filebrowserWindowWidth: "980"
	    filebrowserWindowHeight: "490"
	  )