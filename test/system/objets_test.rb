require "application_system_test_case"

class ObjetsTest < ApplicationSystemTestCase
  setup do
    @objet = objets(:one)
  end

  test "visiting the index" do
    visit objets_url
    assert_selector "h1", text: "Objets"
  end

  test "creating a Objet" do
    visit objets_url
    click_on "New Objet"

    fill_in "Content", with: @objet.content
    fill_in "Price", with: @objet.price
    fill_in "Title", with: @objet.title
    click_on "Create Objet"

    assert_text "Objet was successfully created"
    click_on "Back"
  end

  test "updating a Objet" do
    visit objets_url
    click_on "Edit", match: :first

    fill_in "Content", with: @objet.content
    fill_in "Price", with: @objet.price
    fill_in "Title", with: @objet.title
    click_on "Update Objet"

    assert_text "Objet was successfully updated"
    click_on "Back"
  end

  test "destroying a Objet" do
    visit objets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Objet was successfully destroyed"
  end
end
