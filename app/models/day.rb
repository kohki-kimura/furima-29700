class Day < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1~2日で配送' },
    { id: 3, name: '2~3日で配送' },
    { id: 4, name: '3~4日で配送' }
  ]
end
