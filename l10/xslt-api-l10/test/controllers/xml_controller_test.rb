# frozen_string_literal: true

require 'test_helper'

class XmlControllerTest < ActionDispatch::IntegrationTest
  # Проверяем, какой формат получили от контроллера при запросе в RSS.
  test 'check rss format' do
    get '/', params: { x_param: 100, format: :rss }
    # Проверили, что получили статус ответа 200 OK
    assert_response :success
    # Тип ответа лежит в его заголовках, поэтому смотрим туда.
    assert_includes @response.headers['Content-Type'], 'application/rss'
  end
end
