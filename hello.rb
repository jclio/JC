class Hello
  puts "你好, 世界!";
end

print <<EOF
    这是第一种创建here document
多行字符串

EOF

print <<"EOF"; # 与上面相同
  这是第二种创建here document
多行字符串
EOF

print <<`EOF`
  这是第三种创建here document
多行字符串
EOF


print <<"foo", <<"bar"
      I said foo
foo
      I said bar.
bar

BEGIN {
  print "在程序运行之前被调用\n";
}

END {
  print "在程序的结尾被调用\n"
}