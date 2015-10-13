var NewMessage = React.createClass({


    handleButtonClick(){
      var component = this;
      var theText = this.refs.content.getDOMNode().value;

      var messageJSON = {
        message: {
          content: theText
        }
      }

      $.post("/api/chatroom/" + this.props.id + "/messages.json", messageJSON).then(function(json){
        component.refs.body.getDOMNode().value = "";

      });

    },



    render: function(){
      return <div className="message_form">
        <input type="text" ref="content"></input>
        <button onClick={this.handleButtonClick}>Submit</button>
      </div>;
    }
});
