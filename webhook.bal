import ballerinax/trigger.asb;


configurable asb:ListenerConfig config = ?;


listener asb:Listener webhookListener =  new(config);

service asb:MessageService on webhookListener {
  
    isolated remote function onMessage(asb:Message message, asb:Caller caller) returns error? {
      //Not Implemented
    }
    isolated remote function onError(asb:ErrorContext context, error  'error) returns error? {
      //Not Implemented
    }
}

