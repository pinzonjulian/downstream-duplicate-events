module ConnectBy
  module OnMessageCreated
    class NotifyUser
      class << self
        def call(event)
          puts "🌮"*80
          puts event.data[:message].content
          puts "🌮"*80
        end
      end
    end
  end
end