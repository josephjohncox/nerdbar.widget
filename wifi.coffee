command: "networksetup -getairportnetwork en0 |head -n +1 |cut -c 24-"

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="wifi"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".wifi span:first-child", el).text("  #{@display(output)}")
    $icon = $(".wifi span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-wifi")

display: (output) =>
  if output.match /with an AirPort network./
    output="nowifi"
  return output

style: """
  font-family: Lucida Console, Monaco, monospace
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  right: 70px
  bottom: 3px
"""
