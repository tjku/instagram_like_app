ready = ->
  $('#photo_image').filer(
    limit: 1
    extensions: ['jpg', 'jpeg', 'png', 'gif']
    showThumbs: true
    templates:
      canvasImage: false
      box: '<ul class="jFiler-items-list jFiler-items-grid"></ul>'
      item: '<li class="jFiler-item">\
               <div class="jFiler-item-container">\
                 <div class="jFiler-item-inner">\
                   <div class="jFiler-item-thumb" style="width: auto">\
                     <div class="jFiler-item-status"></div>\
                     <div class="jFiler-item-thumb-overlay">\
                       <div class="jFiler-item-info">\
                         <div style="display:table-cell;vertical-align: middle;">\
                           <span class="jFiler-item-title"><b title="{{fi-name}}">{{fi-name}}</b></span>\
                           <span class="jFiler-item-others">{{fi-size2}}</span>\
                         </div>\
                       </div>\
                     </div>\
                     {{fi-image}}\
                   </div>\
                   <div class="jFiler-item-assets jFiler-row">\
                     <ul class="list-inline pull-left">\
                       <li>{{fi-progressBar}}</li>\
                     </ul>\
                     <ul class="list-inline pull-right">\
                       <li><a class="icon-jfi-trash jFiler-item-trash-action"></a></li>\
                     </ul>\
                   </div>\
                 </div>\
               </div>\
             </li>'
    captions:
      button: 'Choose file'
      feedback: 'Choose file to upload'
      feedback2: 'file was chosen'
  )

$(document).on('turbolinks:load', ready)
