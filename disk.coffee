command: "ESC=$(printf \"\e\"); df -h / |tail -n+2 | awk '{print $5}'"

refreshFrequency: '1h'

render: (output) ->
  """
  <div class="disk">
    <span class="icon"></span>
    <span class="text"></span>
  </div>
  """

update: (output, el) ->
    $(".disk span.text", el).text("  #{output}")
    $icon = $(".disk span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bars")

style: """
  position: absolute
  font-family: Inconsolata-dz
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  right: 273px
  top: 3px
"""
