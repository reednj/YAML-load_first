#!/usr/bin/env ruby
require 'test/unit'
require 'yaml/load_first'

class LoadFirstTest < Test::Unit::TestCase
    def test_load_single_file
        data = YAML.load_first_file('test1.yaml')
        assert_not_nil data
        assert_equal data['name'], 'Nathan'
    end

    def test_load_first_file
        data = YAML.load_first_file(['test1.yaml', 'test2.yaml'])
        assert_not_nil data
        assert_equal data['name'], 'Nathan'
    end

    def test_load_second_file
        data = YAML.load_first_file(['does_not_exist.yaml', 'test1.yaml'])
        assert_not_nil data
        assert_equal data['name'], 'Nathan'
    end

    def test_load_invalid_file
        begin
            data = YAML.load_first_file(['test.invalid.yaml'])
            assert false, "expected exception not thrown"
        rescue
        end
    end
end

