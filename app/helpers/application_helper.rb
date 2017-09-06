module ApplicationHelper
  def remaining_days
    days = ((current_user.created_at + 14.days).to_date - Date.today).round

    if days == 0
      current_user.trial = false
    end

    return days
  end
end
