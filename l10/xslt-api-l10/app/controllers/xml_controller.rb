# frozen_string_literal: true

class XmlController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  before_action :parse_params, only: :index
  def index
    vlues = find_values(@x_param)

    data = if vlues.nil?
             { message: "Неверные параметры запроса (number = #{@x_param})" }
           else vlues.map { |elem| { step: vlues.find_index(elem) + 1, value: elem } }
           end
    respond_to do |format|
      format.html { render inline: data.to_s }
      format.xml { render xml: data.to_xml }
      format.rss { render xml: data.to_xml }
    end
  end

  protected

  def parse_params
    @x_param = params[:x_param].to_i
  end

  private

  def find_values(x_param)
    return nil if x_param.to_i.negative?
    return [0] if x_param.to_i == 0

    x = x_param.to_i if x_param.positive?
    x_i = 1
    x_i1 = 0
    values = []
    while ((x_i1**2 - x) / x).abs >= 0.001
      x_i1 = 0.5 * (x_i + (x / x_i))
      x_i = x_i1
      values.push(x_i1.ceil(2))
    end
    result = values
  end
end
