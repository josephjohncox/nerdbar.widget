command: "ESC=$(printf \"\e\"); ps -A -o %cpu | awk '{s+=$1} END {a=sprintf(\"%.2f\", s/4); print a \"%\"}'"

refreshFrequency: 2000

render: (output) ->
  """
  <div class="cpu"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".cpu span:first-child", el).text("  #{output}")
    $icon = $(".cpu span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bar-chart")

style: """
  font-family: Lucida Console, Monaco, monospace
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  right: 447px
  top: 3px
"""
