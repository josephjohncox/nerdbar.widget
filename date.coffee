command: "date +\"%a %d %b\""

refreshFrequency: 3600000 # 1h

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="cal"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".cal span:first-child", el).text("  #{output}")
    $icon = $(".cal span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-calendar")

style: """
  font-family: Lucida Console, Monaco, monospace
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  right: 90px
  top: 3px
"""
