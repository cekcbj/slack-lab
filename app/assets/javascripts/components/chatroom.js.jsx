var Chatroom = React.createClass({

  getInitialState(){
    return {
      chatroom: {
        id: this.props.chatroom.id,
      messages: []
      }
    }
  },


  fetchMessages(){
    var component = this;

    $.getJSON("/api/chatrooms/" + this.state.chatroom.id + ".json")
      .done(function(json){
        component.setState({chatroom: json.chatroom});
      })
   },

  componentDidMount(){
    this.fetchMessages();
    this.messageInterval = setInterval(this.fetchMessages, 3000);
  },

  componentWillUnmount(){
    clearInterval(messageInterval);
  },


  render: function() {
    return <div>
      <div className="messages">
        {this.state.chatroom.messages.map(function(message){
          return <Message message={message}/>
        })}
      </div>

      <NewMessage chatroom={this.state.chatroom}/>

    </div>;
  }
});
