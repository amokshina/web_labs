class NumbersController < ApplicationController
  def index
  end
  def show_xml_data
    @data = Number.all
    respond_to do |format|
      format.xml do
        xml_data = @data.as_json(only: [:val, :res])
        xml_data.each { |item| item['res'] = ActiveSupport::JSON.decode(item['res']) }
        render xml: { numbers: xml_data }.to_xml(root: 'numbers')
      end
    end
  end

  def view
    input_number = params[:v1].to_i
    if /\A\d+\z/.match?(params[:v1]) && input_number.positive?
      if res_ob = Number.find_by_val(input_number)
        @result = ActiveSupport::JSON.decode(res_ob.res)
        Rails.logger.info('обращение к бд')
      else
        @result = automorphic(input_number)
        res_ob = Number.create(val: input_number, res: ActiveSupport::JSON.encode(@result))
        res_ob.save
        Rails.logger.info('создание нового объекта бд')
      end
    else
        flash[:error] = "Введите положительное целое число."
        redirect_to action: :index
    end
  end

  private

  def automorphic(n)
    res = []
    (n+1).times do |i|
      kv_str = (i*i).to_s
      i_str = i.to_s
      if kv_str.delete_suffix!(i_str)
        res << i
      end
    end
    res
  end
end

