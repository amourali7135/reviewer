module QrcodeHelper
  require 'rqrcode'

  def render_qr_code text, size = 5
    return if text.to_s.empty?
    qr = RQRCode::QRCode.new(text)
    sizeStyle = "width: #{size}px; height: #{size}px;"

    content_tag :table, class: "qrcode pull-right" do
      qr.modules.each_index do |x|
        concat(content_tag(:tr) do
          qr.modules.each_index do |y|
            color = qr.qrcode.checked?(x, y) ? 'black' : 'white'
            concat content_tag(:td, nil, class: color, style: sizeStyle)
          end
        end)
      end
    end
  end
  # params_test = []

end


