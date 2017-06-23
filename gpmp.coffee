command: 'cat \"$HOME/Library/Application Support/Google\ Play\ Music\ Desktop\ Player/json_store/playback.json\"'

refreshFrequency: 8000 # ms

render: (output) ->
  """
  <div class="np">
    <span class="icon2"></span>
    <span class="icon"></span>
    <span class="art"></span>
    <span class="titles"></span>
  </div>
  """

update: (output, el) ->
  data  = JSON.parse(output)
  playing = data.playing
  $(".np span.titles", el).text("#{data.song.title} - #{data.song.artist}")
  $icon = $(".np span.icon", el)
  $icon.removeClass().addClass("icon")
  $icon.addClass("fa #{@icon(playing)}")
  $icon = $(".np span.icon2", el)
  $icon.removeClass().addClass("icon2")
  $icon.addClass("fa fa-music")
  # $art = $(".np span.art", el)
  # $art.html("<img src=\"#{data.song.albumArt}\" width=\"13px\" height=\"13px\"/>")



icon: (status) =>
    return if status
        "fa-play-circle-o"
    else
        "fa-stop-circle-o"
        # "fa-pause-circle-o"
        # "fa-times-circle-o"

style: """
  -webkit-font-smoothing: antialiased
  font-family: Inconsolata-dz
  color: #d3d3d3
  font: 13px Input
  height: 16px
  left: 240px
  overflow: hidden
  text-overflow: ellipsis
  top: 3px
  width: auto

  .icon2
    margin: 0 3px 0 0px
  .icon
    margin: 0 3px 0 0px
"""
