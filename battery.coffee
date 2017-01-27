command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1,2 -d';' |sed 's/%;//'"

refreshFrequency: 60000

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="battery"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    bat = parseInt(output)
    $(".battery span:first-child", el).text("  #{@display(output)}%")
    $icon = $(".battery span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(output)}")

display: (output) ->
    split = output.split ' '
    return split[0]

icon: (output) =>
  split = output.split ' '
  charge = split[0]
  return if charge > 90
    "fa-battery-full"
  else if charge > 70
    "fa-battery-three-quarters"
  else if charge > 40
    "fa-battery-half"
  else if charge > 20
    "fa-battery-quarter"
  else
    "fa-battery-empty"

style: """
  font-family: Lucida Console, Monaco, monospace
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  font: 13px Input
  top: 3px
  right: 174px
  color: #d3d3d3
"""
