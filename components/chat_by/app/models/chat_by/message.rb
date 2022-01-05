module ChatBy
  class Message < ApplicationRecord
    after_create_commit :publish_create_event

    def publish_create_event
      event = ChatBy::MessageCreated.new(message: self)
      Downstream.publish(event)
    end
  end
end
