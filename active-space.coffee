command: "$HOME/.bin/kwm-spaces"

refreshFrequency: 250

render: (output) ->
  """
  <div class="ac">
    <span class="icon"></span>
    <span class="title"></span>
    <span class="icon2"></span>
    <span class="mode"></span>
  </div>
  """

update: (output, el) ->
  data      = JSON.parse(output)
  spaceName = data.spaceName
  spaceID   = data.spaceID
  khdMode   = data.khdMode
  $(".ac span.title", el).text(" #{spaceID}:#{spaceName}")
  $icon = $(".ac span.icon", el)
  $icon.removeClass().addClass("icon")
  $icon.addClass("fa #{@icon(spaceName)}")
  $icon2 = $(".ac span.icon2", el)
  $icon2.removeClass().addClass("icon2")
  $icon2.addClass("fa fa-desktop")
  $(".ac span.mode", el).text("[#{khdMode}]")

icon: (output) =>
    return if output == "terminal"
        "fa-terminal"
    else if output == "web"
        "fa-chrome"
    else if output == "email"
        "fa-envelope"
    else if output == "chats"
        "fa-slack"
    else if output == "emacs"
        "fa-space-shuttle"
    else if output == "pdf"
        "fa-file-pdf-o"
    else if output == "music"
        "fa-music"
    else
        "fa-superpowers"

style: """
  font-family: Inconsolata-dz
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #d3d3d3
  font: 13px Input
  height: 16px
  left: 10px
  overflow: hidden
  top: 3px
  width: auto

  .icon2
    margin: 0 0 0 5px
"""
