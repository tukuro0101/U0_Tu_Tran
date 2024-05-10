# Tran Minh Tu

subtotal_input = gets.chomp
sub_total = subtotal_input.to_f

GST = sub_total * 0.05
PST = sub_total * 0.07

grand_total = sub_total + GST + PST

puts "Subtotal: $#{'%.2f' % sub_total}"
puts "PST: $#{'%.2f' % PST} - #{(PST * 100 / sub_total).to_i}%"
puts "GST: $#{'%.2f' % GST} - #{(GST * 100 / sub_total).to_i}%"
puts "Grand Total: $#{'%.2f' % grand_total}"

# Print a short message based on the grand total
if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total > 5.00 && grand_total < 20.00
  puts "Wallet Time"
else
  puts "Charge It!"
end
