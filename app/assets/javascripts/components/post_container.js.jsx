var PostContainer = React.createClass({
  render: function() {
    var posts = this.props.posts;
    return (
      <div className="post-container">
        { posts.map(function(post){
          return (
            <PostContainerItem key={post.id} post={post} />
          );
        })};
      </div>
    );
  }
});
