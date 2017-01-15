command: "/Users/matbigoi/.kwm/scripts/kwm-profile"

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="kwm-mode"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".kwm-mode span:first-child", el).text("  #{output}")
    $icon = $(".kwm-mode span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-desktop")

style: """
  font-family: Lucida Console, Monaco, monospace
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  height: 16px
  left: 10px
  overflow: hidden
  bottom: 3px
  width: auto
"""
