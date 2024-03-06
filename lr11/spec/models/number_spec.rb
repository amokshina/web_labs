require 'rails_helper'

RSpec.describe Number, type: :model do
  describe 'add and find data' do
    it 'creates a new record' do
      # Создаем новую запись
      number = Number.create(val: 12, res: ActiveSupport::JSON.encode([0, 1, 5, 6]))

      # Проверяем, что запись была успешно создана
      expect(number).to be_valid
      expect(number.val).to eq(42)
      expect(number.res).to eq(ActiveSupport::JSON.encode([0, 1, 5, 6]))
    end

    it 'finds an existing record' do
      # Создаем запись для тестирования поиска
      number = Number.create(val: 12, res: ActiveSupport::JSON.encode([0, 1, 5, 6]))
      # Ищем созданную запись
      found_number = Number.find_by_val(12)
      # Проверяем, что запись была успешно найдена
      expect(found_number).to be_present
      expect(found_number.val).to eq(12)
      expect(found_number.res).to eq(ActiveSupport::JSON.encode([0, 1, 5, 6]))
    end
  end
end
