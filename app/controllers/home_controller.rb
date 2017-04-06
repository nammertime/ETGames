class HomeController < ApplicationController

  before_action :set_upload, only: [:show, :edit, :update, :destroy]

  def index

    session['_my_session'] = "test";



@upload = Upload.new
#@game = Game.all();
@genre = GameGenre.all();

@game = Game.all().page(params[:page]).per(6)

  @cart = ShoppingCart.last;


@items = ShoppingCartItem.where('owner_id = '+ @cart.id.to_s);






  end

def checkout
    @genre = GameGenre.all();
  @cart = ShoppingCart.last;


@items = ShoppingCartItem.where('owner_id = '+ @cart.id.to_s);

end

def update


end




def sale
  @cart = ShoppingCart.last;


@items = ShoppingCartItem.where('owner_id = '+ @cart.id.to_s);
  @genre = GameGenre.all();
    @game = Game.where("ProductPrice < 25").page(params[:page]).per(6)
end

def recent
  @cart = ShoppingCart.last;


@items = ShoppingCartItem.where('owner_id = '+ @cart.id.to_s);
  @genre = GameGenre.all();
  #@game = Game.all()
    @game = Game.order(id: :desc).limit(6).page(params[:page]).per(6)
    #.where("created_at > 2017-03-01 00:00:00.000000").page(params[:page]).per(6)
end

  def detail

@params = params[:id]



    @game = Game.where('ProductID =' + @params);
@genre = GameGenre.all();

@cart = ShoppingCart.last;


@items = ShoppingCartItem.where('owner_id = '+ @cart.id.to_s);



  end

  def genre

    @params = params[:genre]

    @game = Game.where(:ProductGenreID => @params)
    @genre = GameGenre.all();
    @cart = ShoppingCart.last;


  @items = ShoppingCartItem.where('owner_id = '+ @cart.id.to_s);
  end

  def about
    @cart = ShoppingCart.last;
  @genre = GameGenre.all();

  @items = ShoppingCartItem.where('owner_id = '+ @cart.id.to_s);
    @content = About.all
  end

  def contact
    @upload = Upload.new
    @content = Contact.all
    @cart = ShoppingCart.last;

  @genre = GameGenre.all();
  @items = ShoppingCartItem.where('owner_id = '+ @cart.id.to_s);
  end


  def search
    @cart = ShoppingCart.last;


  @items = ShoppingCartItem.where('owner_id = '+ @cart.id.to_s);
    @params = params[:q]

  #  @game = Game.where(:ProductGenreID => @params)
    @game = Game.where("ProductName like ?", "%"+@params+"%").page(params[:page]).per(6)
    #('ProductName LIKE #{@params}%')
  #  .where("name like ?", "%yson%")
    #Game.find_by(ProductName: @params)
    #.where('ProductName LIKE '+ @params+'%')
#@game = Game.where(:ProductName => @params+"%")


@genreParams = params['genre']

if @genreParams == "Genre"
  @game = Game.where("ProductName like ?", "%"+@params+"%").page(params[:page]).per(6)
else
   @game = Game.where("ProductName like ? AND ProductGenreID like ?", "%"+@params+"%", "%"+@genreParams+"%").page(params[:page]).per(6)
end


#@game = Game.where("ProductName like ? AND ProductGenreID like ?", "%"+@params+"%", "%"+@genreParams+"%")



    @genre = GameGenre.all();

  end




  # GET /uploads/1
   def show
   end

   # GET /uploads/new
   def new
     @upload = Upload.new
   end

   # GET /uploads/1/edit
   def edit
   end

   # POST /uploads
   def create
     @upload = Upload.new(post_upload_params)

     if @upload.save
       redirect_to @upload, notice: 'Upload was successfully created.'
     else
       render :new
     end
   end

   # PATCH/PUT /uploads/1
   def update

   end




end
