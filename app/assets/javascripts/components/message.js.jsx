var Message = React.createClass({

  render: function() {
      return <div className="message">
                  {this.props.message.content}
                  <br></br>
                  <cite>Posted by {this.props.message.user.name}</cite>
                </div>


    }


});
