class Address < ActiveHash::Base
  self.data = [
    { id: 1, address: '--' }, { id: 2, address: '北海道' }, { id: 3, address: '青森県' }, { id: 4, address: '岩手県' },
    { id: 5, address: '宮城県' }, { id: 6, address: '秋田県' }, { id: 7, address: '山形県' },
    { id: 8, address: '福島県' }, { id: 9, address: '茨城県' }, { id: 10, address: '栃木県' },
    { id: 11, address: '群馬県' }, { id: 12, address: '埼玉県' }, { id: 13, address: '千葉県' },
    { id: 14, address: '東京都' }, { id: 15, address: '神奈川県' }, { id: 16, address: '新潟県' },
    { id: 17, address: '富山県' }, { id: 18, address: '石川県' }, { id: 19, address: '福井県' },
    { id: 20, address: '山梨県' }, { id: 21, address: '長野県' }, { id: 22, address: '岐阜県' },
    { id: 23, address: '静岡県' }, { id: 24, address: '愛知県' }, { id: 25, address: '三重県' },
    { id: 26, address: '滋賀県' }, { id: 27, address: '京都府' }, { id: 28, address: '大阪府' },
    { id: 29, address: '兵庫県' }, { id: 30, address: '奈良県' }, { id: 31, address: '和歌山県' },
    { id: 32, address: '鳥取県' }, { id: 33, address: '島根県' }, { id: 34, address: '岡山県' },
    { id: 35, address: '広島県' }, { id: 36, address: '山口県' }, { id: 37, address: '徳島県' },
    { id: 38, address: '香川県' }, { id: 39, address: '愛媛県' }, { id: 40, address: '高知県' },
    { id: 41, address: '福岡県' }, { id: 42, address: '佐賀県' }, { id: 43, address: '長崎県' },
    { id: 44, address: '熊本県' }, { id: 45, address: '大分県' }, { id: 46, address: '宮崎県' },
    { id: 47, address: '鹿児島県' }, { id: 48, address: '沖縄県' }
  ]
end
