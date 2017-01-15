command: "ESC=$(printf \"\e\"); ps -A -o %mem | awk '{s+=$1} END {a=sprintf(\"%.0f\", s); print a \"%\"}'"

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="mem"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".mem span:first-child", el).text("  #{output}")
    $icon = $(".mem span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-pie-chart")

style: """
  font-family: Lucida Console, Monaco, monospace
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  right: 310px
  top: 3px
"""
