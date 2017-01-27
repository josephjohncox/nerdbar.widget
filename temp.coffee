command: "$HOME/.kwm/scripts/osx-cpu-temp"

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="temp"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".temp span:first-child", el).text("  #{output}")
    $icon = $(".temp span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-thermometer-half")

style: """
  font-family: Lucida Console, Monaco, monospace
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  right: 403px
  top: 3px
"""
