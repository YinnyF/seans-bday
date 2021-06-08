require 'sean'
require 'timecop'

describe Sean do

  it 'loves green unit test results' do
    expect(subject.ask_how_he_feels_about_TDD).to be true
  end

  it 'has an age' do
    expect(subject).to respond_to(:age)
  end

  it 'has a birthday' do
    expect(subject).to respond_to(:birthday)
  end

  context '#birthday' do
    # This test only works on his bday! Uncomment line 20 - 22 for time travel!
    # before do
    #   Timecop.freeze(Time.local(2021,6,9))
    # end

    before do
      subject.birthday
    end

    it 'it is his birthday today!' do
      expect{subject.birthday}.not_to raise_error
    end

    it '↖️ years old today :)' do
        expect(subject.age).not_to eq 0
        puts subject.age
    end

    context '#birthday_song' do
      it '🎉Happy Birthday to you,🎉' do
        expect(subject.birthday).to be true
      end

      it '🎉Happy Birthday to you,🎉' do
        expect(subject.birthday).to be true
      end

      it '🎉Happy Birthday dear Sean~🎉' do
        expect(subject.birthday).to be true
      end

      it '🎉Happy Birthday to you!🎉' do
        expect(subject.birthday).to be true
      end
    end
  end
end