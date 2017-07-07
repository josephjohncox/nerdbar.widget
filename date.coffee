command: "date +\"%a %d %b\""

refreshFrequency: '1h' # 1h

render: (output) ->
  """
  <div class="cal">
    <span class="icon"></span>
    <span class="text"></span>
  </div>
  """

update: (output, el) ->
    $(".cal span.text", el).text("  #{output}")
    $icon = $(".cal span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-calendar")

style: """
  position: absolute
  font-family: Inconsolata-dz
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  right: 90px
  top: 3px
"""
