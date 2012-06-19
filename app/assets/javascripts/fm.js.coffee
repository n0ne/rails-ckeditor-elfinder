# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
# $ ->
#   rails_csrf = {}
#   rails_csrf[$("meta[name=csrf-param]").attr("content")] = $("meta[name=csrf-token]").attr("content")
#   $("#elfinder").elfinder
#     lang: "ru"
#     height: "460"
#     url: "/elfinder"
#     transport: new elFinderSupportVer1()
#     customData: rails_csrf

getUrlParam = (paramName) ->
  reParam = new RegExp("(?:[?&]|&)" + paramName + "=([^&]+)", "i")
  match = window.location.search.match(reParam)
  (if (match and match.length > 1) then match[1] else "")
$ ->
  rails_csrf = {}
  rails_csrf[$("meta[name=csrf-param]").attr("content")] = $("meta[name=csrf-token]").attr("content")
  funcNum = window.location.search.replace(/^.*CKEditorFuncNum=(\d+).*$/, "$1")
  $("#elfinder").elfinder
    url: "/elfinder"
    lang:	"ru"
    uiOptions:
      toolbar: [ [ "back", "forward" ], [ "mkdir", "mkfile", "upload" ], [ "rm" ], [ "search" ], [ "view", "sort" ] ]
      tree:
        openRootOnLoad: true
        syncTree: true

    transport: new elFinderSupportVer1()
    getFileCallback: (file) ->
      console.log file
      window.opener.CKEDITOR.tools.callFunction funcNum, file
      window.close()