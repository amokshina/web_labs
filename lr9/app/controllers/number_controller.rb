class NumberController < ApplicationController
  def input

  end

  def view
    input_number = params[:v1].to_i
    if /\A\d+\z/.match?(params[:v1]) && input_number.positive?
      @result = automorphic(input_number)
    else
      flash[:error] = "Введите положительное целое число."
      redirect_to action: :input
    end

    respond_to do |format|
      format.html
      format.json do
        render json:
                 {type: @result.class.to_s, value: @result}
      end
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
