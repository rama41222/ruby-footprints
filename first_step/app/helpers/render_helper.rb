module RenderHelper
  def render_success(message, status, data)
    render(json: base_response(message, status, data), status: :ok)
  end

  def render_error(message, status, data)
    render(json: base_response(message, status, data), status: 400)
  end

  private
  def base_response(message, status, data)
    {
        message: message,
        status: status,
        data: data
    }
  end
end
