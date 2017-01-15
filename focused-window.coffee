command: "echo $(/usr/local/bin/kwmc query space active tag)"

refreshFrequency: 500

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="foc"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".foc span:first-child", el).text("  #{output}")
    $icon = $(".foc span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bullseye")

style: """
  position: absolute
  text-align: center
  font-family: Lucida Console, Monaco, monospace
  -webkit-font-smoothing: antialiased
  color: #d3d3d3
  font: 13px Input
  height: 16px
  overflow: hidden
  text-overflow: ellipsis
  bottom: 3px
  width: 100%
"""
