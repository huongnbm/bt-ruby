class PhuongTrinhBacHai
	def initialize(a,b,c)
		@a=a
		@b=b
		@c=c
	end
	private
		def tinh_delta
			@delta = @b*@b - 4*@a*@c
		end
	public
		def giai_pt
			delta = send :tinh_delta
			if @a != 0 then
				if delta > 0  then
					x1 = (-@b + Math.sqrt(delta))/(@a*2)
					x2 = (-@b - Math.sqrt(delta))/(@a*2)
					puts "x1: #{x1} - x2: #{x2}"
				else 
					if delta == 0 then
						x = -@b/(@a*2)
						puts "PT nghiệm kép x1 = x2 = : #{x}"
					else
						puts "vo nghiem"
					end
				end
			else
				puts "khong phai pt bac hai"
			end
		end
end

puts "nhap 3 so a, b, c:"
a = gets()
a = a.to_i
b = gets()
b = b.to_i
c = gets()
c = c.to_i
run = PhuongTrinhBacHai.new(a,b,c)
run.giai_pt