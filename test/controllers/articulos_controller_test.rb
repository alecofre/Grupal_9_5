require "test_helper"

class ArticulosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articulo = articulos(:one)
  end

  # test "should get index" do
  #   get articulos_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get new_articulo_url
  #   assert_response :success
  # end

  # test "should create articulo" do
  #   assert_difference("Articulo.count") do
  #     post articulos_url, params: { articulo: { condicion: @articulo.condicion, descripcion: @articulo.descripcion, marca_id: @articulo.marca_id, nombre: @articulo.nombre, precio: @articulo.precio, user_id: @articulo.user_id } }
  #   end

  #   assert_redirected_to articulo_url(Articulo.last)
  # end

  # test "should show articulo" do
  #   get articulo_url(@articulo)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_articulo_url(@articulo)
  #   assert_response :success
  # end

  # Test propios caso 7
  test "should update articulo" do
    patch articulo_url(@articulo), params: { articulo: { condicion: @articulo.condicion, descripcion: @articulo.descripcion, marca_id: @articulo.marca_id, nombre: @articulo.nombre, precio: @articulo.precio, user_id: @articulo.user_id } }
    assert_redirected_to articulo_url(@articulo)
  end
  # este test da failure porque el proyecto requiere que haya un user conectado para mostrar el artículo, y no sabemos cómo hacer la conexion del usuario por código

  # test "should destroy articulo" do
  #   assert_difference("Articulo.count", -1) do
  #     delete articulo_url(@articulo)
  #   end

  #   assert_redirected_to articulos_url
  # end

  # Test propios caso 4
  test "should exist other user articles in database" do
    @articulos = Articulo.where.not(:user => :one)
    assert_not_equal "@articulos.count",0
  end

  # Test propios caso 5
  test "should exist availables articles in database" do
    @articulos = Articulo.where(:available => true)
    assert_not_equal "@articulos.count",0
  end

  # Test propios caso 7
  # test "should modify article in database" do
  #   antes = articulos(:one)
  #   despues = articulos(:one)
  #   despues.nombre = 'OtherString'
  #   assert_not_equal antes,despues
  # end

end
