var Like = React.createClass({
  getInitialState: function() {
    return {
      post: this.props.post
    }
  },

  render: function() {
    var divClasses = classNames({
      "post-liked": this.state.post.liked
    });

    return(
      <div className={divClasses} onClick={this.handleClick}>
        <i className="fa fa-heart"></i> {this.state.post.likes}
      </div>
    );
  },

  handleClick: function() {
    var that = this;
    $.ajax({
      type: 'POST',
      url: Routes.like_post_path(this.props.post.id, { format: 'json' }),
      success: function(data) {
        that.setState({ post: data });
      }
    });
  }
});