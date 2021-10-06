class PacketsController < ApplicationController
  before_action :set_packet, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /packets or /packets.json
  def index
    @packets = Packet.all
  end

  # GET /packets/1 or /packets/1.json
  def show
    redirect_to packets_path
  end

  # GET /packets/new
  def new
    @packet = Packet.new
  end

  # GET /packets/1/edit
  def edit
  end

  # POST /packets or /packets.json
  def create
    @packet = Packet.new(packet_params)
    @packet.deliverer = current_user
    respond_to do |format|
      if @packet.save
        format.html { redirect_to @packet, notice: "Packet was successfully created." }
        format.json { render :show, status: :created, location: @packet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @packet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /packets/1 or /packets/1.json
  def update
    respond_to do |format|
      if @packet.update(packet_params)
        format.html { redirect_to @packet, notice: "Packet was successfully updated." }
        format.json { render :show, status: :ok, location: @packet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @packet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packets/1 or /packets/1.json
  def destroy
    @packet.destroy
    respond_to do |format|
      format.html { redirect_to packets_url, notice: "Packet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_packet
      @packet = Packet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def packet_params
      params.require(:packet).permit(:name, :weight, :status)
    end
end
