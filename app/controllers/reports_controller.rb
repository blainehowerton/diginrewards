class ReportsController < ApplicationController
  def index

  end

  def payout
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    @cause_ids_in_range = Transaction.select(:cause_id).where("created_at >= '#{@start_date}' and created_at <= '#{@end_date}'").distinct.pluck(:cause_id)
    

  end
end
