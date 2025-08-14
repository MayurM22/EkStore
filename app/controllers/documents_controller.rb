class DocumentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_document, only: [:destroy, :show]

  def index
    @documents = current_user.documents
  end

  def new
    @document = Document.new
  end

  def create
    @document = current_user.documents.build(document_params)

    if @document.save
      redirect_to documents_path, notice: "File uploaded successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @document.destroy
    redirect_to documents_path, notice: "Document deleted successfully."
  end

  private

  def set_document
    @document = current_user.documents.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:title, :description, :file)
  end
end
