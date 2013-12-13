require_relative "../spec_helper"


describe "it should fail" do
  expect(order.total).to eq(Money.new(5.55, :USD))
end
