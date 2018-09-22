RSpec.describe ReceiveSelf do
  it "has a version number" do
    expect(ReceiveSelf::VERSION).not_to be nil
  end

  it "receive subclass instance in result of inherited method." do
    class MyArray < Array
      receive_self
    end
    m = MyArray.new
    n = MyArray.new
    l = m.concat__rself n

    expect(l).to be_an_instance_of(MyArray)
  end
end
