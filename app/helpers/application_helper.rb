module ApplicationHelper
  def flash_class(type)
    case type
      when :success then "success"
      when :error   then "danger"
      when :alert   then "warning"
      when :notice  then "info"
      else "info"
    end
  end
end
