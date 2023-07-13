# config/initializers/default_meta.rb

# Initialize default meta tags.
DEFAULT_META = YAML.safe_load(
  File.read(Rails.root.join("config/meta.yml")),
  [Date]
)
