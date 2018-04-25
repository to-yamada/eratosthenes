class Eratosthenes
  def self.each(upper_bound)
    prime_list = []

    # 探索リストに2からxまでの整数を昇順で入れる
    search_list = (2..upper_bound).to_a
    
    # 振い落とし操作を探索リストの先頭値がxの平方根に達するまで行う。
    2.upto(Integer.sqrt(upper_bound)) do |n|
      # 探索リストの先頭の数を素数リストに移動し、
      # その倍数を探索リストから篩い落とす。
      if search_list.include?(n)
        prime_list << n
        search_list.delete_if{|x| x % n == 0}
      end
    end

    # 探索リストに残った数を素数リストに移動して終了
    prime_list.concat(search_list)
  end
end

if $0 == __FILE__
  if ARGV.size == 1
    puts Eratosthenes.each(ARGV[0].to_i).join(", ")
  else
    puts "#{$0} 整数 の形で実行してください。"
  end
end
