class Api::V1::Transactions::FindController < ApplicationController

  def show
    render json: Transaction.find_by(transaction_params)
  end

  def index
    render json: Transaction.where(transaction_params)
  end

  private

  def transaction_params
    params.permit(:id, :result, :created_at, :updated_at)
  end
end