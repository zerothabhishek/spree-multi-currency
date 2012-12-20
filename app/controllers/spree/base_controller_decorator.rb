Spree::BaseController.class_eval do
  before_filter :set_currency

  private

  def set_currency
    if session[:currency_id].present? && (@currency = Spree::Currency.find_by_char_code(session[:currency_id]))
      Spree::Currency.current!(@currency)
    end
  end

  def change_currency(currency_code)
    @currency = Spree::Currency.find_by_char_code(currency_code.to_s.upcase)
    session[:currency_id] = currency_code.to_s.upcase.to_sym
    Spree::Currency.current!(@currency)
  end

end
