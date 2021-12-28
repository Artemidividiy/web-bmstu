# frozen_string_literal: true

MSG_NOT_ACCEPTABLE = '406: Not Acceptable: This page is only available in XML format'

# armstrong numbers controller
class ArmstrongController < ApplicationController
  def input; end

  def gen_armstrong_nums(n_value)
    (10**(n_value - 1)...10**n_value).filter { |x_value| armstrong?(x_value) }
  end

  def armstrong?(x_value)
    x_str = x_value.to_s
    x_value == x_str.chars.sum { |digit| digit.to_i**x_str.size }
  end

  def malformed
    respond_to do |format|
      format.html { render html: 'Malformed request!', status: 500 }
    end
  end

  def data
    respond_to do |format|
      format.xml { render xml: Result.all.map(&:serializable_hash) }
    end
  end

  def output
    @number = params['number'].to_i || 1
    if ( cached = Result.find_by(number: @number))
      @rows = cached.value[1..cached.value.length() - 2].split(",")        
    else 
      @rows = gen_armstrong_nums(@number)
      Result.create value: @rows.to_json, number: @number
    end
  end

  # def output
  #   n_value = params['number'].to_i
  #   if n_value <= 0 || n_value >= 8
  #     malformed
  #   else
  #     @results = gen_armstrong_nums(n_value)
  #   end
  # end

  # def view
  #   n_value = params['number'].to_i
  #   if n_value <= 0 || n_value >= 8
  #     malformed
  #   else
  #     result = gen_armstrong_nums(n_value)
  #     respond_to do |format|
  #       format.xml { render xml: result }
  #       format.rss { render xml: result }
  #       format.all do
  #         render html: MSG_NOT_ACCEPTABLE, status: :not_acceptable
  #       end
  #     end
  #   end
  # end
end
