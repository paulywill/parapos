module PackersHelper
  def team_display(args)
    args[:boolStatus] ||= ''
    return_value = ''
    if args[:boolStatus] == true then
      return_value = 'ON TEAM'
    else
      return_value = 'OFF TEAM'
    end
    return return_value
  end



end
