require 'hashtag'

describe 'hashtag' do
  it 'returns word prefixed with "#"' do
    expect(hashtag('hello #world')).to match_array(["world"])
  end

  it 'returns words prefixed with "#" in array' do
    expect(hashtag('where #are the #cookies')).to match_array(["are","cookies"])
  end

  it 'should not apply to "#" alone' do
    expect(hashtag('# # # #')).to match_array([])
  end

  it 'only counts last hashtag for words preceded by more than one "#"' do
    expect(hashtag('goodbye ##world')).to match_array(["world"])
  end

  it 'should not apply to "#"s found in middle of word' do
    expect(hashtag('this #is #not sp#arta')).to match_array(["is","not"])
  end

  it 'should only apply to "#" preceding alphabetical characters' do
    expect(hashtag('this is #not #31928 #sparta is it')).to match_array(["not","sparta"])
  end

  it 'should not apply to words which have non alphabetical characters in them' do
    expect(hashtag('#where#is#my#iphone')).to match_array([])
  end
  
end
