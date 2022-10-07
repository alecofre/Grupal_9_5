require "test_helper"

class ArticuloTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "create a new Articulo" do
    @article = Articulo.new
    res = @article.valid?
    assert_equal "false", res, "DT3. No se definen todos los campos"
    # assert_not @article.save    
  end
end
