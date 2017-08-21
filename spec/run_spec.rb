require 'spec_helper'

describe Run do
  it "runs" do
    # expect(Run.this_is_covered).to eq 1
    expect(Run.another_method).to eq "yo"
    expect(Run.added_on_master).to eq 2
  end

  it "this is a non-coverage-relevant patch" do
    expect(1).to eq 1
  end

  it "runs new and covered" do
    expect(Run.new_and_covered).to eq :ok

    expect(RunTwo.covered).to eq 1
  end

  it "covers new method" do
    expect(RunTwo.new_and_covered).to eq 1
  end
end
