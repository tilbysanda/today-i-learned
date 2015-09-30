var PostContainerItem = React.createClass({
  render: function() {
    return (
      <div className="post">
        <div className="post-code-language">
          TODO
        </div>
        <div className="post-body">
          <h3>
            {this.props.post.title}
          </h3>
        </div>
        <div className="post-controls">
          <div className="post-control">
            <div className="post-likes">
              TODO
            </div>
            <div className="post-tags">
              TODO
            </div>
          </div>
        </div>
      </div>
    )
  }
})