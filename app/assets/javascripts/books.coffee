# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#this should add datatable features
(($) ->
        $(document).on 'turbolinks:load', () -> (
                $('#books_table').DataTable()
        )
) jQuery