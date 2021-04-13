class ContentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_content, only: [:show, :edit, :update, :destroy]
  def index
    @contents = current_user.contents
  end

  def new
    @content = Content.new
  end

  def create
    @content = current_user.contents.build(content_params)
    # a linha a cima é o mesmo que as duas linhas abaixo
    # @content = Content.new(content_params)
    # @content.user = current_user

    if @content.save
      redirect_to contents_path, notice: 'Content successfully created!'
    else
      # byebug
      render :new
    end
  end

  def edit
    # @content = Content.find(params[:id])
  end

  def update
    # byebug
    # @content = Content.find(params[:id])
    if @content.update(content_params)
      redirect_to contents_path, notice: 'Content successfully updated!'
    else
      render :edit
    end
  end

  def show
    # @content = Content.find(params[:id])
  end

  def destroy
    # byebug
    # @content = Content.find(params[:id])
    @content.destroy
    redirect_to contents_path, notice: 'Content successfully destroyed!'
  end

  private

  def set_content
    @content = Content.find(params[:id])
  end

  def content_params
    params.require(:content).permit(:title, :description)
  end
end