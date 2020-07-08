require "application_system_test_case"

class AnimalsTest < ApplicationSystemTestCase
  setup do
    @animal = animals(:one)
  end

  test "visiting the index" do
    visit animals_url
    assert_selector "h1", text: "Animals"
  end

  test "creating a Animal" do
    visit animals_url
    click_on "New Animal"

    fill_in "Cidade desap", with: @animal.cidade_desap
    fill_in "Foto", with: @animal.foto
    fill_in "Idade", with: @animal.idade
    fill_in "Informacoes", with: @animal.informacoes
    fill_in "Nome", with: @animal.nome
    fill_in "Status", with: @animal.status
    fill_in "Uf desap", with: @animal.uf_desap
    click_on "Create Animal"

    assert_text "Animal was successfully created"
    click_on "Back"
  end

  test "updating a Animal" do
    visit animals_url
    click_on "Edit", match: :first

    fill_in "Cidade desap", with: @animal.cidade_desap
    fill_in "Foto", with: @animal.foto
    fill_in "Idade", with: @animal.idade
    fill_in "Informacoes", with: @animal.informacoes
    fill_in "Nome", with: @animal.nome
    fill_in "Status", with: @animal.status
    fill_in "Uf desap", with: @animal.uf_desap
    click_on "Update Animal"

    assert_text "Animal was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal" do
    visit animals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal was successfully destroyed"
  end
end
