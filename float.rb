#bits = eval("0x" + [0.15625].pack('g').unpack('H16')[0]).to_s(2).rjust(32,"0")
#=> "00111110001000000000000000000000"
# these are the bits of 0.15625 represented as a single precision float
#sign = bits[0]
#=> "0"
#exponent = bits[1..8]
#=> "01111100"
#mantissa = bits[9..32]
#=> "01000000000000000000000"
#sign = sign.to_i == 0 ? 1 : -1
#=> 1
#exponent = 2**(eval("0b"+exponent)-127)
#=> (1/8)
#mantissa_sum = 1
#=> 1
#mantissa.each_char.each_with_index {|bit, index| mantissa_sum += bit.to_i*2**(-index-1)}
#=> "01000000000000000000000"
#output = (sign*exponent*mantissa_sum).to_f
#=> 0.15625

class Float
  def to_bits
    eval("0x" + [self].pack('g').unpack('H16')[0]).to_s(2).rjust(32,"0")
  end
end
