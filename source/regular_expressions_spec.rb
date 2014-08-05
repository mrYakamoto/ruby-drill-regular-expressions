require_relative('regular_expressions')

describe 'has_ssn?' do
  it "should return true if it has what looks like an SSN" do
    expect(has_ssn?("please don't share this: 234-60-1422")).to be(true)
  end

  it "should return false if it doesn't have an SSN" do
    expect(has_ssn?("please don't share this: XXX-XX-1422")).to be(false)
  end
end

describe 'grab_ssn' do
  it "should return an SSN if the string has an SSN" do
    expect(grab_ssn("please don't share this: 234-60-1422")).to eq("234-60-1422")
  end

  it "should return nil if the string doesn't have an SSN" do
    expect(grab_ssn("please confirm your identity: XXX-XX-1422")).to be(nil)
  end
end

describe 'grab_all_ssns' do
  it "should return all SSNs if the string has any SSNs" do
    expect(grab_all_ssns("234-60-1422, 350-80-0744, 013-60-8762"))
      .to eq(["234-60-1422", "350-80-0744", "013-60-8762"])
  end

  it "should return an empty Array if it doesn't have any SSNs" do
    expect(grab_all_ssns("please confirm your identity: XXX-XX-1422")).to eq([])
  end
end

describe 'hide_all_ssns' do
  it "should obfuscate any SSNs in the string" do
    expect(hide_all_ssns("234-60-1422, 350-80-0744, 013-60-8762"))
      .to eq("XXX-XX-1422, XXX-XX-0744, XXX-XX-8762")
  end

  it "should not alter a string without SSNs in it" do
    example = "please confirm your identity: XXX-XX-1422"
    expect(hide_all_ssns(example)).to eq(example)
  end
end

describe 'format_ssns' do
  it "should find and reformat any SSNs in the string" do
    expect(format_ssns("234601422, 350.80.0744, 013-60-8762 and 444--33--2222"))
      .to eq("234-60-1422, 350-80-0744, 013-60-8762 and 444-33-2222")
  end

  it "should not alter a string without SSNs in it" do
    example = "please confirm your identity: 44211422"
    expect(format_ssns(example)).to eq(example)
  end
end
