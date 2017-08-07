jQuery(document).on 'turbolinks:load', ->
   comments = $('#comments')
   if comments.length > 0
      App.global_chat = App.cable.subscriptions.create {
       channel: "BlogsChannel"
       blog_id: comments.data('blog-id')
      },
      connected: ->
      disconnected: ->
      received: (data) ->
         comments.append data['comment']
      send_comment: (comment, blog_id) ->
         @perform 'send_comment', comment: comment, blog_id: blog_id