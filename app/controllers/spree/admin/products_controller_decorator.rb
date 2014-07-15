Spree::Admin::ProductsController.class_eval do
  def update
    if params[:product][:taxon_ids].present?
      params[:product][:taxon_ids] = params[:product][:taxon_ids].split(',')
    end
    if params[:product][:option_type_ids].present?
      params[:product][:option_type_ids] = params[:product][:option_type_ids].split(',')
    end
    if params[:product][:tags].present?
      params[:product][:tags] = params[:product][:tags].split(',')
    end
    super
  end
end