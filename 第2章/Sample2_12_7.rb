# 組み込みライブラリでないクラスはそのままでは使用できない
# puts Date.today


require 'date'
puts Date.today #20XX-XX-XX

# 自身で作成したRubyプログラムなどを読み込む場合もrequireを使用(1度しか読み込めない)
# require './sample.rb'

# 複数回読み込む必要がある場合はloadを使用(.rbは省略不可)
# load './sample.rb'