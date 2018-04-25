require File.expand_path(File.dirname(__FILE__) + '/../eratosthenes')

describe Eratosthenes do
  describe '.each' do
    it '与えられた引数までの素数を返す(引数の数自体を含む)' do
      expect(Eratosthenes.each(5)).to eq [2, 3, 5]
    end

    it '与えられた引数までの素数を返す(引数の数は含まない)' do
      expect(Eratosthenes.each(30)).to eq [
        2, 3, 5, 7, 11, 13, 17, 19, 23, 29
      ]
    end

    it '与えられた引数までの素数を返す(Wikipediaの例)' do
      expect(Eratosthenes.each(120)).to eq [
          2,   3,   5,   7,  11,  13,  17,  19,  23,  29,
         31,  37,  41,  43,  47,  53,  59,  61,  67,  71,
         73,  79,  83,  89,  97, 101, 103, 107, 109, 113
      ]
    end
  end
end

