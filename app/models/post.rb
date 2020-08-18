class Post < ApplicationRecord
  has_attached_file :image,
   styles: { medium: "300x300>", thumb: "100x100>" },
   default_url: "/images/:style/missing.png",
   storage: :s3,
   :s3_host_name => 's3-eu-central-1.amazonaws.com',
   s3_permissions: "private" # private/ public-read

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
