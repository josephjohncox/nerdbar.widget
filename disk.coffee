command: "ESC=$(printf \"\e\"); df -h / |tail -n+2 | awk '{print $5}'"

refreshFrequency: 60000

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="disk"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".disk span:first-child", el).text("  #{output}")
    $icon = $(".disk span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bars")

style: """
  font-family: Lucida Console, Monaco, monospace
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  right: 358px
  top: 3px
"""
