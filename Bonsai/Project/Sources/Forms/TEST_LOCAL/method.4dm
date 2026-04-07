var $event : Object
$event:=FORM Event:C1606

Case of 
	: ($event.code=On Load:K2:1)
		
		If (Not:C34(OB Instance of:C1731(Form:C1466; cs:C1710._Agent)))
			OBJECT SET VISIBLE:C603(*; "@"; False:C215)
			return 
		End if 
		
		Form:C1466.systemPrompt:="You are a helpful assistant."
		Form:C1466.userPrompt:="Who is the best French painter? Answer in one short sentence."
		Form:C1466.focusUserPrompt().clearConversation()
		
	: ($event.code=On After Edit:K2:43)
		
		Form:C1466.onAfterEdit()
		
	: ($event.code=On Unload:K2:2)
		
End case 