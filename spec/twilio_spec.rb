require 'twilio'

class TestClass; include Twilio; end

describe TestClass do

  let(:twilio) { TestClass.new }

  it 'sends a text message' do
    expect(twilio).to receive(:send_message).with("Hello").and_return("Message sent")
    expect(twilio.send_message("Hello")).to eq("Message sent")
  end
end
