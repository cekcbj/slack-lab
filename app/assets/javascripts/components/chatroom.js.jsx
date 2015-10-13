var ChatRoom = React.createClass({
  getInitialState(){
    return {
      messages: []
    }
  },

  componentDidMount(){
    var component = this;
    fetch("/api/chatroom/" + this.props.id + "/messages.json").then(function(response){
      response.json().then(function(data){
        component.setState({messages: data.messages});
      })
    })
  },

  render: function() {
    return <div>
      <div className="messages">
        {this.state.messages.map(function(message){
          return <Message message={message}/>
        })}
      </div>

      <NewMessage />

    </div>;
  }
});
