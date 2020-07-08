require "application_system_test_case"

class ComunicadosTest < ApplicationSystemTestCase
  setup do
    @comunicado = comunicados(:one)
  end

  test "visiting the index" do
    visit comunicados_url
    assert_selector "h1", text: "Comunicados"
  end

  test "creating a Comunicado" do
    visit comunicados_url
    click_on "New Comunicado"

    fill_in "Informacoes", with: @comunicado.informacoes
    fill_in "Nome", with: @comunicado.nome
    fill_in "Telefone", with: @comunicado.telefone
    click_on "Create Comunicado"

    assert_text "Comunicado was successfully created"
    click_on "Back"
  end

  test "updating a Comunicado" do
    visit comunicados_url
    click_on "Edit", match: :first

    fill_in "Informacoes", with: @comunicado.informacoes
    fill_in "Nome", with: @comunicado.nome
    fill_in "Telefone", with: @comunicado.telefone
    click_on "Update Comunicado"

    assert_text "Comunicado was successfully updated"
    click_on "Back"
  end

  test "destroying a Comunicado" do
    visit comunicados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comunicado was successfully destroyed"
  end
end
