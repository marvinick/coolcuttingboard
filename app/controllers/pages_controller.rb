class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)

    if @page.save
    redirect_to pages_path(@pages)
    else
      render :new
    end
  end

  def show
    @page = Page.find(params[:id])
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    if @page.update(page_params)
      redirect_to pages_path(@pages)
    else
      render :edit
    end
  end


  private

  def page_params
    params.require(:page).permit(:title, :description)
  end

end