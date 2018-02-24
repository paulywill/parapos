module PackersHelper
  def packer_status_display(args)
    args[:boolStatus] ||= ''
    return_value = ''
    if args[:boolStatus] == true then
      return_value = 'ON TEAM'
    else
      return_value = 'OFF TEAM'
    end
    return return_value
  end


  def datepicker_input form, field
    content_tag :td, :data => {:provide => 'datepicker', 'date-format' => 'yyyy-mm-dd', 'date-autoclose' => 'true'} do
      form.text_field field, class: 'datepicker', placeholder: 'YYYY-MM-DD'
    end
  end

end
