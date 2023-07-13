# app/helpers/meta_tags_helper.rb

module MetaTagsHelper
  DEFAULT_META = YAML.load_file(Rails.root.join('config/meta.yml'))

  def meta_title
    content_for?(:meta_title) ? content_for(:meta_title) : DEFAULT_META["name"]
  end

  def meta_description
    content_for?(:meta_description) ? content_for(:meta_description) : DEFAULT_META["description"]
  end

  def meta_image
    meta_image = (content_for?(:meta_image) ? content_for(:meta_image) : DEFAULT_META["meta_image_path"])
    # little twist to make it work equally with an asset or a url
    meta_image.starts_with?("http") ? meta_image : image_url(meta_image)
  end

  def meta_target_audience
    DEFAULT_META["target_audience"]
  end

  def meta_pain_point
    DEFAULT_META["pain_point"]
  end

  def meta_solution
    DEFAULT_META["solution"]
  end

  def meta_originality
    DEFAULT_META["originality"]
  end

  def meta_keywords
    DEFAULT_META["keywords"].join(', ')
  end
end
