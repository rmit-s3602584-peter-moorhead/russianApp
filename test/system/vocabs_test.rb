require "application_system_test_case"

class VocabsTest < ApplicationSystemTestCase
  setup do
    @vocab = vocabs(:one)
  end

  test "visiting the index" do
    visit vocabs_url
    assert_selector "h1", text: "Vocabs"
  end

  test "creating a Vocab" do
    visit vocabs_url
    click_on "New Vocab"

    click_on "Create Vocab"

    assert_text "Vocab was successfully created"
    click_on "Back"
  end

  test "updating a Vocab" do
    visit vocabs_url
    click_on "Edit", match: :first

    click_on "Update Vocab"

    assert_text "Vocab was successfully updated"
    click_on "Back"
  end

  test "destroying a Vocab" do
    visit vocabs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vocab was successfully destroyed"
  end
end
