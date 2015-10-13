var NewMessage = React.createClass({


    handleButtonClick(){
      var component = this;
      var theText = this.refs.content.getDOMNode().value;

      var messageJSON = {
        message: {
          content: theText
        }
      }

      $.post("/api/chatrooms/" + this.props.chatroom.id +  "/messages.json", messageJSON).then(function(json){
        component.refs.content.getDOMNode().value = "";

      });

    },



    render: function(){
      return <div className="new_message">
        <input type="text" ref="content"></input>
        <button onClick={this.handleButtonClick}>Submit</button>
      </div>;
    }
});
