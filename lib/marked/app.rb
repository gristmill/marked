class App < Sinatra::Base
  get "/" do
    erb :index
  end

  get "/preview" do
    @document = params[:document][:contents]

    erb :show
  end

  get "/:id" do
    @document = Document.find(params[:id]) || halt(404)

    erb :show
  end

  post "/documents" do
    @document = Document.create(params[:document])
    redirect "/#{@document.id}"
  end
end
