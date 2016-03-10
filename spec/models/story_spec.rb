require 'spec_helper'

describe Story do
  it { should have_valid(:title).when("Blue is the warmest color") }
  it { should_not have_valid(:title).when(nil, '') }

  it { should have_valid(:synopsis).when("This movie is about...") }
  it { should_not have_valid(:synopsis).when(nil, '') }

  it { should have_valid(:year).when("1989") }
  it { should_not have_valid(:year).when(nil, 'dog') }

  it { should have_valid(:media_format).when("book") }
  it { should_not have_valid(:year).when(nil, 'glass') }

  it { should have_many(:characters) }

end
