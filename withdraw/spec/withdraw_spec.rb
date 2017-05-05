require 'withdraw'

describe 'withdraw' do

  it 'should return [0,0,2] when passed 40' do
    expect(withdraw(40)).to match_array([0,0,2])
  end

  it 'should return [2,0,3] when passed 260' do
    expect(withdraw(260)).to match_array([2,0,3])
  end

  it 'should return [2,1,0] when passed 250' do
    expect(withdraw(250)).to match_array([2,1,0])
  end

  it 'should return [4,0,0] when passed 400' do
    expect(withdraw(400)).to match_array([4,0,0])
  end

  it 'should return [13,1,1] when passed 1370' do
    expect(withdraw(1370)).to match_array([13,1,1])
  end

  it 'should return [57,1,1] when passed 1370' do
    expect(withdraw(5770)).to match_array([57,1,1])
  end

  it 'should return [1,1,4] when passed 230' do
    expect(withdraw(230)).to match_array([1,1,4])
  end

  it 'should return [8,1,2] when passed 890' do
    expect(withdraw(890)).to match_array([8,1,2])
  end

  it 'should return [3,1,3] when passed 410' do
    expect(withdraw(410)).to match_array([3,1,3])
  end
end
