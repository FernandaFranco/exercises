require 'minitest/autorun'

require_relative 'text'

class TextTest < MiniTest::Test
  def setup
    #open
    @file = File.open('./sample_text.txt', 'r')
    @text = Text.new(@file.read)
    @expected_text = expected_text = <<~TEXT
    Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
    Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
    quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
    nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
    dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
    et verius meuris, et pheretre mi.
    TEXT
  end

  def test_swap
    actual_text = @text.swap('a', 'e')

    assert_equal(@expected_text, actual_text + "\n")
  end

  def test_word_count
    expected_count = @expected_text.split.count

    assert_equal(expected_count, @text.word_count)
  end

  def teardown
    #close
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
end