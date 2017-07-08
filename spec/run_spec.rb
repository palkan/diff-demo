require 'spec_helper'

describe Run do
  it "runs" do
    # expect(Run.this_is_covered).to eq 1
    expect(Run.another_method).to eq "yo"
  end
end
