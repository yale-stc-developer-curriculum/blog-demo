require 'spec_helper'

describe UsersController, focus: true do
  before(:each) do
    @user = FactoryGirl.create(:user)
    controller.stub(:current_user)
  end

  describe 'GET index' do
    before(:each) do
      get :index
    end
    it { should render_template(:index) }
    it { should respond_with(:success) }
    it 'should set @users to User.all' do
      expect(assigns(:users)).to eq(User.all)
    end
  end

  describe 'GET show' do
    before(:each) do
      get :show, id: @user.id
    end
    it 'should set the current user' do
      expect(assigns(:user)).to eq(@user)
    end
    it { should render_template(:show) }
    it { should respond_with(:success) }
  end

  describe 'GET new' do
    before(:each) do
      get :new
    end
    it { should render_template(:new) }
    it { should respond_with(:success) }
    it 'should set @user to a new user record' do
      assigns(:user).should be_new_record
      assigns(:user).kind_of?(User).should be_true
    end
  end

  describe 'GET edit' do
    before(:each) do
      get :edit, id: @user.id
    end
    it { should render_template(:edit) }
    it { should respond_with(:success) }
    it 'should set the current user' do
      expect(assigns(:user)).to eq(@user)
    end
  end

  describe 'POST create' do
    it 'should create a new user' do
      expect{
        post :create, user: FactoryGirl.attributes_for(:user)
      }.to change(User, :count).by(1)
    end
    it 'should redirect to last user created' do
      post :create, user: FactoryGirl.attributes_for(:user)
      response.should redirect_to User.last
    end
  end

  describe 'PUT update' do
    before(:each) do
      put :update, id: @user.id, user: FactoryGirl.attributes_for(:user, first_name: "New", last_name: "Name")
    end
    it 'should set the current user' do
      expect(assigns(:user)).to eq(@user)
    end
    it 'should update the user attributes in the database' do
      @user.reload
      @user.first_name.should eq("New")
      @user.last_name.should eq("Name")
    end
    it { should redirect_to(@user) }
  end

  describe 'DELETE destroy' do
    it 'should remove @user from the database' do
      expect{
        delete :destroy, id: @user.id
      }.to change(User, :count).by(-1)
    end
    it 'should redirect to the user index page' do
      delete :destroy, id: @user.id
      response.should redirect_to users_path
    end
  end
end
