class Project < ApplicationRecord
  # エリアの選択肢リストを定数として定義
  AREAS = [
    "奥多摩・秩父",
    "丹沢・箱根",
    "八ヶ岳",
    "北アルプス",
    "南アルプス",
    "中央アルプス",
    "富士山",
    "北海道"
  ].freeze

  has_one_attached :image
  
  # バリデーション（必須項目チェック）
  validates :title, presence: true
  validates :area, presence: true, inclusion: { in: AREAS }
  validates :event_date, presence: true
  validates :description, presence: true
end
