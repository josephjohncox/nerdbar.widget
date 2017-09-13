command: "echo $(/usr/local/bin/chunkc tiling::query --window name)"

refreshFrequency: '1s'

render: (output) ->
  """
  <div class="foc">
    <span class="icon fa fa-bullseye"></span>
    <span class="title"></span>
  </div>
  """

update: (output, el) ->
    $(".foc span.title", el).text(" #{output}")

style: """
  position: absolute
  text-align: center
  font-family: Inconsolata-dz
  -webkit-font-smoothing: antialiased
  color: #d3d3d3
  font: 13px Input
  height: 16px
  overflow: hidden
  text-overflow: ellipsis
  top: 3px
  width: 100%

  .foc
    width: 300px
    margin: 0 auto
    text-overflow: ellipsis
    overflow: hidden
"""
