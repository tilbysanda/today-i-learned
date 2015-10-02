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
      //   </div>
      //   <div className="post-controls">
      //     <div className="post-control">
      //       <div className="post-likes">
      //         TODO
      //       </div>
      //       <div className="post-tags">
      //         TODO
      //       </div>
      //     </div>
      //   </div>
      // </div>
    )
  }
})