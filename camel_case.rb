def camel_case(string)
  string.split(/(?=[A-Z])/).size
end

describe 'camel_case' do
  it "should return a correct value" do
    string = "saveChangesInTheEditor"

    expect(camel_case(string)).to eq 5
  end
end
