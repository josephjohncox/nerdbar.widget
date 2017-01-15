command: "ip a |grep utun0 || echo 'none'"

refreshFrequency: 10000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="vpn"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $icon = $(".vpn span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(output)}")

icon: (output) ->
    return if output == "none\n"
        "fa-times"
    else
        "fa-globe"

style: """
  font-family: Lucida Console, Monaco, monospace
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  right: 50px
  bottom: 3px
"""
