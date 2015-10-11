ActiveAdmin.register Institution do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

permit_params do
  [:name, :mep_number, :province, :canton, :district, :village]
end


end
