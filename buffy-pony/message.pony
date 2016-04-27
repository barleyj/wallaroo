type OSCEncodable is (String | I32 | F32)

class Message[A: OSCEncodable #send]
  let id: I32
  let data: A

  new val create(msg_id: I32, msg_data: A) =>
    id = msg_id
    data = consume msg_data
