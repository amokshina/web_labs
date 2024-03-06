# frozen_string_literal: true

require './main'

require 'minitest/autorun'

class WordCountTest < Minitest::Test
  def test_а
    file_path = 'f.txt'

    file_content = 'hahahaha'

    output_file = 'h.txt'

    File.write(file_path, file_content)

    process_file(file_path, output_file)

    assert_match('hhhh', File.read(output_file))

    file_content = 'fagajka'

    File.write(file_path, file_content)

    process_file(file_path, output_file)

    assert_match('fgk', File.read(output_file))

    file_content = ''

    File.write(file_path, file_content)

    process_file(file_path, output_file)

    assert_match('', File.read(output_file))
  end
end
