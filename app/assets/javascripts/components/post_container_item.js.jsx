var PostContainerItem = React.createClass({
  render: function() {
    return (
      <div className="post">
        <p>
          {this.props.post.title}
        </p>
        <p>
          {this.props.post.description}
        </p>
        <div className="post-footer">
            <p>
              CLICK_TO_UPVOTE
            </p>
          <div className="post-likes">
            <Like post={this.props.post} />
          </div>
        </div>
      </div>
      // <div className="post">
      //   <div className="post-code-language">
      //     TODO
      //   </div>
      //   <div className="post-body">
      //     <h2>
      //       {this.props.post.title}
      //     </h2>
      //     <p>
      //       {this.props.post.description}
      //     </p>
      // //   </div>
      //       <div className="post-tags">
      //         TODO
      //       </div>
      //     </div>
      //   </div>
      // </div>
    )
  }
})