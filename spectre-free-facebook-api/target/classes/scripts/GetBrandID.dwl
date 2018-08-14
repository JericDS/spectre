%dw 1.0
%output application/java
---

(
	0 when (sizeOf payload.result) == 0 
	otherwise (
		1 when payload.result[0].brand_flag == 4
		otherwise payload.result[0].brand_flag
	)
)