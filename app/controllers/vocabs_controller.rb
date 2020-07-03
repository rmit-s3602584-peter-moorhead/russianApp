class VocabsController < ApplicationController
  before_action :set_vocab, only: [:show, :edit, :update, :destroy]

  # GET /vocabs
  # GET /vocabs.json
  def index
    @vocabs = Vocab.paginate(page: params[:page], per_page: 100)
    #@vocabs = Vocab.all
  end

  # GET /vocabs/1
  # GET /vocabs/1.json
  def show
  end

  # GET /vocabs/new
  def new
    @vocab = Vocab.new
  end

  # GET /vocabs/1/edit
  def edit
  end

  # POST /vocabs
  # POST /vocabs.json
  def create
    @vocab = Vocab.new(vocab_params)

    respond_to do |format|
      if @vocab.save
        format.html { redirect_to @vocab, notice: 'Vocab was successfully created.' }
        format.json { render :show, status: :created, location: @vocab }
      else
        format.html { render :new }
        format.json { render json: @vocab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vocabs/1
  # PATCH/PUT /vocabs/1.json
  def update
    respond_to do |format|
      if @vocab.update(vocab_params)
        format.html { redirect_to @vocab, notice: 'Vocab was successfully updated.' }
        format.json { render :show, status: :ok, location: @vocab }
      else
        format.html { render :edit }
        format.json { render json: @vocab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vocabs/1
  # DELETE /vocabs/1.json
  def destroy
    @vocab.destroy
    respond_to do |format|
      format.html { redirect_to vocabs_url, notice: 'Vocab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vocab
      @vocab = Vocab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vocab_params
      params.fetch(:vocab, {})
    end
end
