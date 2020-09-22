class Day < ActiveHash::Base
self.data = [
  { id: 1, day: '--' },
  { id: 2, day: '1~2日で配送' },
  { id: 3, day: '2~3日で配送' },
  { id: 4, day: '3~4日で配送' }
]
end