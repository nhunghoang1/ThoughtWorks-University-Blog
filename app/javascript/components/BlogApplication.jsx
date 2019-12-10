import React, { Component } from 'react'
import PropTypes from 'prop-types'
import BlogRow from './BlogRow'

export default class BlogApplication extends Component {
  static propTypes = {
    posts: PropTypes.array
  }

  static defaultProps = {
    posts: []
  }

  render() {
    return (
      <div className="container">
        <div className="jumbotron m-auto">
          <h1>ThoughtWorks University</h1>
        </div>
        <div className="row">
          <div className="col-md-12">
            <ul className="table table-striped">
                {this.props.posts.map((post) =>
                  <BlogRow key={post.id} title={post.title} body={post.body} />
                )}
            </ul>

          </div>
        </div>
      </div>
    )
  }
}
