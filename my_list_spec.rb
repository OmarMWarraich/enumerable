require_relative 'my_list'

describe MyList do
  it 'should be a MyList' do
    expect(MyList.new).to be_a(MyList)
  end
end
