require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ContactFeewisesController do

  # This should return the minimal set of attributes required to create a valid
  # ContactFeewise. As you add validations to ContactFeewise, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContactFeewisesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all contact_feewises as @contact_feewises" do
      contact_feewise = ContactFeewise.create! valid_attributes
      get :index, {}, valid_session
      assigns(:contact_feewises).should eq([contact_feewise])
    end
  end

  describe "GET show" do
    it "assigns the requested contact_feewise as @contact_feewise" do
      contact_feewise = ContactFeewise.create! valid_attributes
      get :show, {:id => contact_feewise.to_param}, valid_session
      assigns(:contact_feewise).should eq(contact_feewise)
    end
  end

  describe "GET new" do
    it "assigns a new contact_feewise as @contact_feewise" do
      get :new, {}, valid_session
      assigns(:contact_feewise).should be_a_new(ContactFeewise)
    end
  end

  describe "GET edit" do
    it "assigns the requested contact_feewise as @contact_feewise" do
      contact_feewise = ContactFeewise.create! valid_attributes
      get :edit, {:id => contact_feewise.to_param}, valid_session
      assigns(:contact_feewise).should eq(contact_feewise)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ContactFeewise" do
        expect {
          post :create, {:contact_feewise => valid_attributes}, valid_session
        }.to change(ContactFeewise, :count).by(1)
      end

      it "assigns a newly created contact_feewise as @contact_feewise" do
        post :create, {:contact_feewise => valid_attributes}, valid_session
        assigns(:contact_feewise).should be_a(ContactFeewise)
        assigns(:contact_feewise).should be_persisted
      end

      it "redirects to the created contact_feewise" do
        post :create, {:contact_feewise => valid_attributes}, valid_session
        response.should redirect_to(ContactFeewise.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contact_feewise as @contact_feewise" do
        # Trigger the behavior that occurs when invalid params are submitted
        ContactFeewise.any_instance.stub(:save).and_return(false)
        post :create, {:contact_feewise => {}}, valid_session
        assigns(:contact_feewise).should be_a_new(ContactFeewise)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ContactFeewise.any_instance.stub(:save).and_return(false)
        post :create, {:contact_feewise => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested contact_feewise" do
        contact_feewise = ContactFeewise.create! valid_attributes
        # Assuming there are no other contact_feewises in the database, this
        # specifies that the ContactFeewise created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ContactFeewise.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => contact_feewise.to_param, :contact_feewise => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested contact_feewise as @contact_feewise" do
        contact_feewise = ContactFeewise.create! valid_attributes
        put :update, {:id => contact_feewise.to_param, :contact_feewise => valid_attributes}, valid_session
        assigns(:contact_feewise).should eq(contact_feewise)
      end

      it "redirects to the contact_feewise" do
        contact_feewise = ContactFeewise.create! valid_attributes
        put :update, {:id => contact_feewise.to_param, :contact_feewise => valid_attributes}, valid_session
        response.should redirect_to(contact_feewise)
      end
    end

    describe "with invalid params" do
      it "assigns the contact_feewise as @contact_feewise" do
        contact_feewise = ContactFeewise.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ContactFeewise.any_instance.stub(:save).and_return(false)
        put :update, {:id => contact_feewise.to_param, :contact_feewise => {}}, valid_session
        assigns(:contact_feewise).should eq(contact_feewise)
      end

      it "re-renders the 'edit' template" do
        contact_feewise = ContactFeewise.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ContactFeewise.any_instance.stub(:save).and_return(false)
        put :update, {:id => contact_feewise.to_param, :contact_feewise => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested contact_feewise" do
      contact_feewise = ContactFeewise.create! valid_attributes
      expect {
        delete :destroy, {:id => contact_feewise.to_param}, valid_session
      }.to change(ContactFeewise, :count).by(-1)
    end

    it "redirects to the contact_feewises list" do
      contact_feewise = ContactFeewise.create! valid_attributes
      delete :destroy, {:id => contact_feewise.to_param}, valid_session
      response.should redirect_to(contact_feewises_url)
    end
  end

end
