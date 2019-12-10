import React, { Component } from 'react'
import PropTypes from 'prop-types'

export default class BlogRow extends Component {
  static propTypes = {
    
  }

  render() {
    return (
      <table className="table table-striped">
        <tr>
          <th className="col-md-2">Title</th>
          <th className="col-md-8">Content</th>
          <th className="col-md-2">Edit</th>
        </tr>
        <tbody></tbody>
      </table>
    )
  }
}
