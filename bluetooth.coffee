command: "blueutil status |awk '{print $2}'"

refreshFrequency: 10000

render: (output) ->
  """
  <div class="bluetooth"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $icon = $(".bluetooth span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(output)}")

icon: (output) ->
    return if output == "off\n"
        "fa-times"
    else
        "fa-bluetooth"

style: """
  font-family: Lucida Console, Monaco, monospace
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  right: 270px
  top: 3px
"""
