require "application_system_test_case"

module ChatBy
  class MessagesTest < ApplicationSystemTestCase
    setup do
      @message = Message.new(content: "MyString")
    end

    test "visiting the index" do
      visit chat_by.messages_url
      assert_selector "h1", text: "Messages"
    end

    test "should create message" do
      visit chat_by.messages_url
      click_on "New message"

      fill_in "Content", with: @message.content
      click_on "Create Message"

      assert_text "Message was successfully created"
      click_on "Back"
    end

    test "should update Message" do
      visit message_url(@message)
      click_on "Edit this message", match: :first

      fill_in "Content", with: @message.content
      click_on "Update Message"

      assert_text "Message was successfully updated"
      click_on "Back"
    end

    test "should destroy Message" do
      visit message_url(@message)
      click_on "Destroy this message", match: :first

      assert_text "Message was successfully destroyed"
    end
  end
end
