require 'walk'

describe 'tenminuteswalk' do 
  it 'brings me back where I need' do 
    app = App.new
    expect(app.tenminuteswalk(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])).to be true
  end

  it 'does not bring me back where I started' do 
    app = App.new
    expect(app.tenminuteswalk(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'])).to be false
  end

  it 'does not bring me back where I started' do 
    app = App.new
    expect(app.tenminuteswalk(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n'])).to be false
  end

  it 'does not take enough time' do
    app = App.new
    expect(app.tenminuteswalk(['w', 's'])).to be false
  end
end