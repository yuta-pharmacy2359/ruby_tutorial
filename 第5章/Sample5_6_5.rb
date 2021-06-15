def buy_smartphone(kind, options = {})
  puts options
end

buy_smartphone('iphone12_mini', { cases: true, films: false })
# {:cases=>true, :films=>false}

buy_smartphone('iphone12_mini', cases: true, films: false)
# {:cases=>true, :films=>false}

def buy_smartphone(options = {}, kind)
  puts options
end

buy_smartphone({ cases: true, films: false }, 'iphone12_mini')
# {:cases=>true, :films=>false}

buy_smartphone(cases: true, films: false, 'iphone12_mini')
# エラー発生(最後の引数がハッシュでない場合は、ハッシュリテラル{}を省略できない)