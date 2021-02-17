# frozen_string_literal: true

require 'test_helper'

class ArticleTest < ActionController::TestCase
  def setup
    @controller = HtmlController.new
  end
  test 'should get index' do
    get :index
    assert_response :success
  end

  test 'should calculate' do
    get :calculate, params: { 'x' => '6' }
    assert_response :success
    assert_select '#1', '2.45'
  end
end
