module ConnectBy
  class Engine < ::Rails::Engine
    isolate_namespace ConnectBy

    ActiveSupport.on_load "downstream-events" do |store|
      store.subscribe OnMessageCreated::NotifyUser, to: ChatBy::MessageCreated
    end
  end
end
