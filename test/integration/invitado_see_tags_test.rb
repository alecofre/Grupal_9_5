require "test_helper"

class InvitadoSeeTagsTest < ActionDispatch::IntegrationTest
    # Test propio caso 6
    test "Invitado See Tags" do
        get "/tags"
        assert_response :success
        # assert assigns (:tags)
    end
end
