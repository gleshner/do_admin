require 'test_helper'

class PresentersControllerTest < ActionController::TestCase
  setup do
    @presenter = presenters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presenters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create presenter" do
    assert_difference('Presenter.count') do
      post :create, presenter: { bio: @presenter.bio, email: @presenter.email, facebook: @presenter.facebook, fetlife: @presenter.fetlife, google: @presenter.google, image: @presenter.image, nameAlias: @presenter.nameAlias, nameFirst: @presenter.nameFirst, nameLast: @presenter.nameLast, new: @presenter.new, phone: @presenter.phone, privateEmail: @presenter.privateEmail, shirtSize: @presenter.shirtSize, shortDescrip: @presenter.shortDescrip, twitter: @presenter.twitter, website: @presenter.website }
    end

    assert_redirected_to presenter_path(assigns(:presenter))
  end

  test "should show presenter" do
    get :show, id: @presenter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @presenter
    assert_response :success
  end

  test "should update presenter" do
    put :update, id: @presenter, presenter: { bio: @presenter.bio, email: @presenter.email, facebook: @presenter.facebook, fetlife: @presenter.fetlife, google: @presenter.google, image: @presenter.image, nameAlias: @presenter.nameAlias, nameFirst: @presenter.nameFirst, nameLast: @presenter.nameLast, new: @presenter.new, phone: @presenter.phone, privateEmail: @presenter.privateEmail, shirtSize: @presenter.shirtSize, shortDescrip: @presenter.shortDescrip, twitter: @presenter.twitter, website: @presenter.website }
    assert_redirected_to presenter_path(assigns(:presenter))
  end

  test "should destroy presenter" do
    assert_difference('Presenter.count', -1) do
      delete :destroy, id: @presenter
    end

    assert_redirected_to presenters_path
  end
end
