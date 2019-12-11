import React, { Component } from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import PropTypes from 'prop-types'
import BlogRow from './BlogRow'
import Home from './Home'
import About from './About'
import Contact from './Contact'

export default class BlogApplication extends Component {
  static defaultProps = {
    posts: []
  }

  static propTypes = {
    posts: PropTypes.array
  }

  render() {
    return (
      <div className="container">
        <div>
          <BrowserRouter>
            <Switch>
              <Route exact path="/" component={Home} />
              <Route exact path="/about" component={About} />
              <Route exact path="/contact" component={Contact} />
            </Switch>
          </BrowserRouter>
        </div>

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
