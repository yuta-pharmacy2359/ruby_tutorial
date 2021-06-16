def foo(a, b, c, d = 5, e = 7, *f, g, h, i: 'apple', j: 'iphone', **k, &l)
  "a: #{a}, b: #{b}, c: #{c}, d: #{d}, e: #{e}, f: #{f}, g: #{g}, h: #{h}, i: #{i}, j: #{j}, k: #{k}, #{l}"
end

puts foo(1, 2, 3, 5, 7, 8, 9, 10, 11, 12, i: 'sony', j: 'xperia', k1: 'ruby', k2: 'php', k3: 'java') { 'last' }
# a: 1, b: 2, c: 3, d: 5, e: 7, f: [8, 9, 10], g: 11, h: 12, i: sony, j: xperia, k: {:k1=>"ruby", :k2=>"php", :k3=>"java"}, #<Proc:0x00007fc3df17a160@Sample5_8_0_1.rb:5>