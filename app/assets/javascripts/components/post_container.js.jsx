var PostContainer = React.createClass({
  render: function() {
    return (
      <div>
        { this.props.posts.map(function(post){
          return <PostContainerItem post={post} />;
        })}
      </div>
    );
  }
});
