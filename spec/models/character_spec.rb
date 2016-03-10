require 'spec_helper'

describe Character do

  it { should have_valid(:story_id).when(1) }
  it { should_not have_valid(:story_id).when(nil,'') }

  it { should have_valid(:character_name).when("pants") }
  it { should_not have_valid(:character_name).when(nil,'')}

  it { should have_valid(:death).when("yes", "no") }
  it { should_not have_valid(:death).when("maybe", nil, '') }

  it {should have_valid(:description).when("she died this way") }
  it {should_not have_valid(:description).when(nil, '')}

end
