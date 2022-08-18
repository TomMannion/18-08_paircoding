require 'diary_entry'

RSpec.describe DiaryEntry do 
  it "constructs" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end

  it "returns the number of words in the contents" do
    diary_entry = DiaryEntry.new("my_title", "some contents here")
    expect(diary_entry.count_words).to eq 3
  end

  it "returns the number of words in the contents" do
    diary_entry = DiaryEntry.new("my_title", "")
    expect(diary_entry.count_words).to eq 0
  end

  it "returns the time taken to read" do
    diary_entry = DiaryEntry.new("my_title", "1 2 3 4 5 6 7 8")
    expect(diary_entry.reading_time(4)).to eq 2
  end

  it "returns the time taken to read" do
    diary_entry = DiaryEntry.new("my_title", "1 2 3 4 5 6 7")
    expect(diary_entry.reading_time(4)).to eq 2
  end

  it "returns the time taken to read" do
    diary_entry = DiaryEntry.new("my_title", "1 2 3 4 5")
    expect(diary_entry.reading_time(4)).to eq 2
  end

  it "returns the string read in the amount of time given" do
    diary_entry = DiaryEntry.new("my_title", "1 2 3 4 5 6 7 8")
    diary_entry.reading_chunk(2, 2)
    diary_entry.reading_chunk(2, 2)
    expect(diary_entry.reading_chunk(2, 2)).to eq "1 2 3 4"
  end

  it "returns the string read in the amount of time given" do
    diary_entry = DiaryEntry.new("my_title", "1 2 3 4 5 6 7")
    diary_entry.reading_chunk(2, 2)
    expect(diary_entry.reading_chunk(2, 2)).to eq "5 6 7"
  end
end