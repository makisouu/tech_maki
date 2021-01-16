require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production? # 本番環境の場合はS3へアップロード
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory  = 'rails-photo-maki8480' # バケット名
    config.fog_public = false
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIA3QTE2E35EZNW6YTG', # アクセスキー
      aws_secret_access_key: '1SO5DCoz/88g4nPkT6KgVtgfLo2gj8oIgf8ugiSp', # シークレットアクセスキー
      region: 'ap-northeast-1', # リージョン
      path_style: true
    }
  else # 本番環境以外の場合はアプリケーション内にアップロード
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end
end