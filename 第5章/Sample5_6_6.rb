def buy_smartphone(options = {}, kind)
  puts options
end

# buy_smartphone { cases: true, films: false }, 'iphone12_mini'
# 第1引数がハッシュの場合は()を省略できない

def buy_smartphone(kind, options = {})
  puts options
end

buy_smartphone 'iphone12_pro', { cases: false, films: true }
# {:cases=>false, :films=>true}

buy_smartphone 'iphone12_pro_max', cases: true, films: true
# {:cases=>true, :films=>true}