import React, { Component } from 'react'
import PropTypes from 'prop-types'

export default class BlogRow extends Component {
  static propTypes = {
    title: PropTypes.string,
    body: PropTypes.string
  }

  static defaultProps = {
    title: '',
    body: ''
  }

  render() {
    return (
      <li className="article">
        <div className="col-12 heading">{this.props.title}</div>
        <div className="col-12">{this.props.body}</div>
      </li>
    )
  }
}
