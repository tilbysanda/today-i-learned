var PostContainerItem = React.createClass({
  render: function() {
    return (
      <div className="col-xs-12 col-sm-4">
        <div className="post">
          <div className="post-markup">
            // <MarkUp post={this.props.post} />
          </div>
          <div className="post-title">
            <p>
              {this.props.post.title}
            </p>
          </div>
          <div className="post-footer">
            <Like post={this.props.post} />
          </div>
        </div>
      </div>
    )
  }
})
