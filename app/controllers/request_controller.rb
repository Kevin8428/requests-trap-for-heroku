class RequestController < ApplicationController
  def index
    render 'index'
  end

  def create
    @test = Request.new
    render 'create'
  end

  def update
    render 'update'
  end

  def destroy
    render 'destroy'
  end

  def new
    @test = Request.new
    @test.req_date = Time.now
    @test.string = request.env["QUERY_STRING"]
    @test.remote_ip = request.remote_ip
    @test.request_method = request.env["REQUEST_METHOD"]
    @test.scheme = request.env["rack.url_scheme"]
    @test.query_string = request.env["QUERY_STRING"]
    @test.query_params = request.env["action_dispatch.request.query_parameters"]
    # @test.cookies = request.env["HTTP_COOKIE"]
    @test.headers = request.env["Content-Type"]
    render json: @test, status: :ok
    @test.response = response.inspect
    @test.save
  end

  def show
    @all = Request.all
    render 'show'
  end

  def edit
    render 'edit'
  end

  def single
    @single = Request.find(params[:id])
    render json: @single, :except=> [:response], status: :ok
  end
end
