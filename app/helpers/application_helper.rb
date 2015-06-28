module ApplicationHelper

  def title(title = nil)
    if title.present?
      content_for :title, title
    else
      content_for?(:title) ? APP_CONFIG['meta_title'] + ' | ' + content_for(:title) : APP_CONFIG['meta_title']
    end
  end

  def meta_description(description = nil)
    if description.present?
      content_for :description, description
    else
      content_for?(:description) ? content_for(:description) : APP_CONFIG['meta_description']
    end
  end

  def meta_image(image = nil)
    if image.present?
      content_for :image, image
    else
      content_for?(:image) ? content_for(:image) : APP_CONFIG['meta_image']
    end
  end
end
