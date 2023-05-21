t=0
cls()
function TIC()
	for y=1,5 do
		for x=1,5 do
			circ(
				math.sin(math.min(x,y)*t/x)*16+47*x-22.5,
				math.sin(math.min(x,y)*t/y-11)*16+45*y-22.5,
				1,
        (x*3+y+math.min(x,y)*t/math.pi/2)%9+1)
		end
	end
	t=t+math.pi/120
end
-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>

