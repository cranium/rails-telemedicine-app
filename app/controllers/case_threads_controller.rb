class CaseThreadsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_case_thread, only: [:show, :edit, :update, :destroy]

  # GET /thread
  # GET /thread.json
  def index
    @case_thread = current_user.case_threads
  end

  # GET /thread/1
  # GET /thread/1.json
  def show
  end

  # GET /thread/new
  def new
    @case_thread = CaseThread.new
    @post = Post.new
  end

  # GET /thread/1/edit
  def edit
  end

  # POST /thread
  # POST /thread.json
  def create
    @case_thread = CaseThread.new(case_thread_params)

    respond_to do |format|
      if @case_thread.save
        format.html { redirect_to @case_thread, notice: 'thread was successfully created.' }
        format.json { render :show, status: :created, location: @case_thread }
      else
        format.html { render :new }
        format.json { render json: @case_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thread/1
  # PATCH/PUT /thread/1.json
  def update
    respond_to do |format|
      if @case_thread.update(case_thread_params)
        format.html { redirect_to @case_thread, notice: 'thread was successfully updated.' }
        format.json { render :show, status: :ok, location: @case_thread }
      else
        format.html { render :edit }
        format.json { render json: @case_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thread/1
  # DELETE /thread/1.json
  def destroy
    @case_thread.destroy
    respond_to do |format|
      format.html { redirect_to case_threads_url, notice: 'thread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_thread
      @case_thread = CaseThread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_thread_params
      params.require(:case_thread).permit(:title, :user_id)
    end
end
