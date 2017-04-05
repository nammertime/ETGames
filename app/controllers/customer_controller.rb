class CustomerController < ApplicationController
    def show
      @user = Customer.find(params[:id])
    end

    def new
    @genre = GameGenre.all();
      @user = Customer.new

      @provinces = Province.all


    end

    def create
    @genre = GameGenre.all();

      #@user = Customer.new(CustomerID: "1", FirstName: params[:session][:FirstName])


    #  @user = Customer.create(CustomerID:, FirstName:, LastName:, UserName:, Password:, Address:, City:, PostalCode:, Phone:, Email:, Province:)
      @province = params[:Province]
      @user = Customer.create(user_params)
    #  Customer.create(CustomerID: '', FirstName: , LastName: 'M', UserName: 'Prey', Password: 'Prey', Address: "@", City: "", PostalCode: '8', Phone: "1234567890", Email: "123@yahoo.ca", Province: "3" )


      if @user.save
        flash[:success] = "Welcome to the Sample App!"
        log_in @user
        redirect_to root_path
      else
          render 'new'
      end

end






def user_params
    params.require(:customer).permit(:CustomerID, :FirstName, :LastName, :UserName, :Password, :Address, :City, :PostalCode, :Phone, :Email, :Province)


end


end
