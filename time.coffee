command: "date +\"%l:%M %p\""

refreshFrequency: '15s' # ms

render: (output) ->
  """
  <div class="time">
    <span class="icon"></span>
    <span class="text"></span>
  </div>
  """

update: (output, el) ->
    $(".time span.text", el).text("  #{output}")
    $icon = $(".time span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-clock-o")

style: """
  position: absolute
  font-family: Inconsolata-dz
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  font-weight: Bold
  right: 10px
  top: 3px
"""
