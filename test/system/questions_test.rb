require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'p', text: 'Ask your coach anything'
    take_screenshot
  end

  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    click_on 'Ask'
    take_screenshot

    assert_text 'I don\'t care, get dressed and go to work!'
  end

  test 'asking a question yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Can i go shopping?'
    click_on 'Ask'
    take_screenshot

    assert_text 'Silly question, get dressed and go to work!'
  end

  test 'saying i\'m going to work yields a nice response from the coach' do
    visit ask_url
    fill_in 'question', with: 'I am going to work'
    click_on 'Ask'
    take_screenshot

    assert_text 'Great!'
  end
end
