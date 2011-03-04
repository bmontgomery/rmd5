require 'digest/md5'

input_file = ARGV[0]
input_md5 = ARGV[1]

digest = Digest::MD5.hexdigest(File.open(input_file, "rb") { |f| f.read })

if input_md5 then
  if digest.downcase == input_md5.downcase then
    puts "match"
  else
    puts "no match!"
    puts "file digest #{digest}"
    puts "input digest #{input_md5}"
  end
else
  puts digest
end
