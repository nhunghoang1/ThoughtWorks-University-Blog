import React, { Component } from 'react'
import PropTypes from 'prop-types'

export default class HelloWorld extends Component {
  static propTypes = {
    name: PropTypes.string
  }

  static defaultProps = {
    name: 'Unknown'
  }

  render() {
    return (
      <div className="greeting">
        Hello {this.props.name}
      </div>
    )
  }
}
