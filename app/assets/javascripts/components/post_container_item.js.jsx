var PostContainerItem = React.createClass({
  render: function() {
    return (
      <div className="col-xs-12 col-sm-4">
        <div className="post">
          <p>
            {this.props.post.title}
          </p>
          <p>
            {this.props.post.description}
          </p>
          <div className="post-footer">
            <Like post={this.props.post} />
          </div>
        </div>
      </div>
    )
  }
})
