{ div, span } = require 'reactionary'

module.exports = React.createClass
  displayName: 'SimpleListItem'

  propTypes:
    item: React.PropTypes.object

  render: ->
    div null,
      if @props.item.get('shifter')
        span "#{@props.item.get('shifter')} "
      else
        span "#{@props.item.get('id')}: "

      span @props.item.get('text')
