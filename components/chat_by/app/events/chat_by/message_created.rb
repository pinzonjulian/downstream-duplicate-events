module ChatBy
  class MessageCreated < Downstream::Event
    attributes :message
  end
end