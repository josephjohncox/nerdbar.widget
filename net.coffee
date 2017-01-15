command: "/Users/matbigoi/.kwm/scripts/net-stats"

refreshFrequency: 3000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="net"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".net span:first-child", el).text("  #{@display(output)}")
    $icon = $(".net span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-cloud-download")

display: (output) =>
    split_stats = output.split ' '
    input = split_stats[0]
    output = split_stats[1]
    if not input.match /[a-zA-Z]/
      input = "0B"
    if not output.match /[a-zA-Z]/
      output = "0B"
    return input + " " + output

style: """
  font-family: Lucida Console, Monaco, monospace
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  right: 438px
  top: 3px
"""
