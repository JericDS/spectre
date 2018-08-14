%dw 1.0
%output application/java
---
(
	("off" when payload as :number == 1 otherwise "dual_off")
	when (lower flowVars.sms-message-string) contains "off"
	otherwise ("dual_on" when payload as :number == 1 otherwise "on") 
)