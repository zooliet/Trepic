module BooksHelper
  def image_from_amazon(amazon_id)
    if amazon_id.present?
      image_tag "http://images.amazon.com/images/P/#{amazon_id}.01.ZTZZZZZZ.jpg"
    else
      image_tag "", width: '107px', height: '160px'
    end
  end
end
