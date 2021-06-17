text = <<TEXT

I love Ruby and PHP.
Python and Perl is a great.
Java and JavaScript are different.
TEXT

p text.scan(/[A-Z][A-Za-z]+/)


text = <<TEXT

私の郵便番号は9876543です。
My address is 3679833, Tokyo metro Hachioji city Nibukata town 34345.
TEXT

puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')