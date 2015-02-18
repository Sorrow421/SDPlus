;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname SLD_TIF_PCSubCold03 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Actor kSlave = game.GetPlayer()

	int randomVar = Utility.RandomInt( 0, 10 ) 
	 
	If (randomVar >= 9  )
		Debug.Notification( "Your mouth is held open as you are forced to swallow..." )
		Debug.Notification( "..some Skooma!" )
		kSlave.AddItem( Skooma, 1, True )
		kSlave.EquipItem( Skooma, True, True )

		Utility.Wait(3.0)
	 	DruggedEffect.Cast( kSlave, kSlave)

		If (Utility.RandomInt( 0, 100 ) > 80)
			Debug.Notification( "In a stupor you start dancing for no reason..." )
			; StorageUtil.SetFormValue( Game.getPlayer() , "_SD_TempAggressor", akSpeaker)
 			akSpeaker.SendModEvent("PCSubEntertain") ; Dance
 		EndIf

	ElseIf (randomVar >= 8  )
		Debug.Notification( "Your mouth is held open as you are forced to swallow..." )
		Debug.Notification( "..some Mead!" )
		kSlave.AddItem( Ale, 1, True )
		kSlave.EquipItem( Ale, True, True )

		Utility.Wait(3.0)
	 	DruggedEffect.Cast( kSlave, kSlave)

	ElseIf (randomVar >= 2  )
		Debug.Notification( "Your owner hands you something to wear" )
		StorageUtil.SetIntValue( Game.GetPlayer(), "_SD_iEnableClothingEquip", 1)
		kSlave.AddItem( _SD_SlaveRags, 1, True )
		kSlave.EquipItem( _SD_SlaveRags, True, True )

	Else
		akSpeaker.SendModEvent("PCSubSex") ; Sex

	EndIf

;	While ( Utility.IsInMenuMode() )
;	EndWhile
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property DruggedEffect  Auto  
SPELL Property DrunkEffect  Auto  

Potion Property Ale  Auto  

Potion Property Skooma  Auto  

Armor  Property _SD_SlaveRags  Auto  
