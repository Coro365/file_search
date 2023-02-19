# frozen_string_literal: true

require_relative "./test_helper"

class FileSearchTest < Test::Unit::TestCase
  test "VERSION" do
    assert do
      ::FileSearch.const_defined?(:VERSION)
    end
  end

  test "something useful" do
    expected = ['test_helper.rb', 'file_search_test.rb'].sort

    file_paths = ['./test'].file_search
    file_names = file_paths.map { |f| File.basename(f) }

    assert_equal(expected, file_names.sort)
  end
end
