RSpec.describe EachWith do
  let(:sample_array) { [1,2,3,4,5,8] }
  it "has a version number" do
    expect(EachWith::VERSION).not_to be nil
  end

  it "adds additional methods to the Array class" do
    methods = Array.instance_methods
    %i[each_indicate_last each_indicate_nth each_indicate_first].each do |new_method|
      expect(methods).to include(new_method)
    end
  end

  it 'can indicate the last element' do
    i = 0
    result = sample_array.each_indicate_last do |element, is_last|
      expect(element).to eq(sample_array[i])
      expect(is_last).to eq(i == sample_array.length - 1)
      i += 1
    end
    expect(result).to eq(sample_array)
  end

  it 'can indicate the first element' do
    i = 0
    result = sample_array.each_indicate_first do |element, is_first|
      expect(element).to eq(sample_array[i])
      expect(is_first).to eq(i == 0)
      i += 1
    end
    expect(result).to eq(sample_array)
  end

  it 'can indicate the nth element' do
    i = 0
    nth = 3
    result = sample_array.each_indicate_nth(nth) do |element, is_nth|
      expect(element).to eq(sample_array[i])
      expect(is_nth).to eq(i == nth)
      i += 1
    end
    expect(result).to eq(sample_array)
  end
end
