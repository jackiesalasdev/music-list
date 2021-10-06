class MusicsController < ApplicationController
  before_action :set_music, only: [ :show, :edit, :update, :destroy ]

  
  def index
    @music = Music.all
  end

  
  def show
  end

  
  def new
    @music = Music.new
  end

  
  def edit
  end

  
  def create
    @music = Music.new(music_params)

   
      if @music.save
        flash[:notice] = "Music was successfully created." 
       redirect_to @music
      else
        render 'new'
      end
    
  end

  
  def update
 
      if @music.update(music_params)
        flash[:notice] = "Music was successfully updated." 
        redirect_to @music 
      else
        render 'edit'
      end
  
  end

  
  def destroy
    @music.destroy
    flash[:notice] = "Music was successfully deleted." 
    redirect_to musics_path
    
  end

  private
    def set_music
      @music = Music.find(params[:id])
    end

    def music_params
      params.require(:music).permit(:title, :artist , :videoURL)
    end
  end
