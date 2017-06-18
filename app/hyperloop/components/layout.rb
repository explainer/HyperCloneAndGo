class Layout < Hyperloop::Component
  render (DIV)  do
    DIV(class: "container-fluid") do
      DIV(class: "row") do
#     <div class="col-sm-6" style="background-color:lavender;">Sprinkles</div>
        DIV(class: "col-sm-6") do
           SprinkleList {}
        end
#     <div class="col-sm-6" style="background-color:lavenderblush;">History</div>
        DIV(class: "col-sm-6") do
          HistoryList {}
        end
      end
    end

  end
end

# <!DOCTYPE html>
# <html lang="en">
# <head>
#   <title>Bootstrap Example</title>
#   <meta charset="utf-8">
#   <meta name="viewport" content="width=device-width, initial-scale=1">
#   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
#   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
#   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
# </head>
# <body>

# <div class="container-fluid">
#   <h1>Hello World!</h1>
#   <p>Resize the browser window to see the effect.</p>
#   <div class="row">
#     <div class="col-sm-6" style="background-color:lavender;">Sprinkles</div>
#     <div class="col-sm-6" style="background-color:lavenderblush;">History</div>
    
#   </div>
# </div>

# </body>
# </html>
