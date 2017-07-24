require_relative './book_price'

describe "Calculate Price" do
  it "买了一本书" do
    price = calculate_price(1, 1)
    expect(price).to eq(100)
  end

  it "买了两本书是同一集" do
    price = calculate_price(2, 1)
    expect(price).to eq(200)
  end

  it "买了两本书是两集" do
    price = calculate_price(2, 2)
    expect(price).to eq(190)
  end

  it "买了三本书是两集" do
    price = calculate_price(3, 2)
    expect(price).to eq(290)
  end

  it "买了三本书是三集" do
    price = calculate_price(3, 3)
    expect(price).to eq(270)
  end

  it "买了四本书是两集" do
    price = calculate_price(4, 2)
    expect(price).to eq(390)
  end

  it "买了四本书是三集" do
    price = calculate_price(4, 3)
    expect(price).to eq(370)
  end

  it "买了四本书是四集" do
    price = calculate_price(4, 4)
    expect(price).to eq(320)
  end

  it "买了五本书是两集" do
    price = calculate_price(5, 2)
    expect(price).to eq(490)
  end

  it "买了五本书是三集" do
    price = calculate_price(5, 3)
    expect(price).to eq(470)
  end

  it "买了五本书是四集" do
    price = calculate_price(5, 4)
    expect(price).to eq(420)
  end

  it "买了五本书是五集" do
    price = calculate_price(5, 5)
    expect(price).to eq(375)
  end
end
