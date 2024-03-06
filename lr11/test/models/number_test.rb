require "test_helper"

class NumberTest < ActiveSupport::TestCase
  test 'creates a new record' do
    number = Number.create(val: 12, res: ActiveSupport::JSON.encode([0, 1, 5, 6]))
    assert number.valid?
    assert_equal 12, number.val
    assert_equal ActiveSupport::JSON.encode([0, 1, 5, 6]), number.res
  end

  test 'finds an existing record' do
    number = Number.create(val: 12, res: ActiveSupport::JSON.encode([0, 1, 5, 6]))
    found_number = Number.find_by(val: 12)
    assert found_number.present?
    assert_equal 12, found_number.val
    assert_equal ActiveSupport::JSON.encode([0, 1, 5, 6]), found_number.res
  end

  test 'does not allow duplicate results' do
    first_number = Number.create(val: 12, res: ActiveSupport::JSON.encode([0, 1, 5, 6]))
    second_number = Number.new(val: 12, res: ActiveSupport::JSON.encode([0, 1, 5, 6]))
    assert_not second_number.save, 'Сохранение второй записи с одинаковыми результатами должно быть невозможным'
  end
end

