require 'test_helper'

class VocabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vocab = vocabs(:one)
  end

  test "should get index" do
    get vocabs_url
    assert_response :success
  end

  test "should get new" do
    get new_vocab_url
    assert_response :success
  end

  test "should create vocab" do
    assert_difference('Vocab.count') do
      post vocabs_url, params: { vocab: {  } }
    end

    assert_redirected_to vocab_url(Vocab.last)
  end

  test "should show vocab" do
    get vocab_url(@vocab)
    assert_response :success
  end

  test "should get edit" do
    get edit_vocab_url(@vocab)
    assert_response :success
  end

  test "should update vocab" do
    patch vocab_url(@vocab), params: { vocab: {  } }
    assert_redirected_to vocab_url(@vocab)
  end

  test "should destroy vocab" do
    assert_difference('Vocab.count', -1) do
      delete vocab_url(@vocab)
    end

    assert_redirected_to vocabs_url
  end
end
