;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 5
Scriptname _sdtif_reenslave_01 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_4
Function Fragment_4(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Actor kPlayer = _SDRAP_player.GetReference() as Actor


;_SDSP_freedom.RemoteCast( kPlayer, kPlayer, kPlayer )

_SDGVP_demerits.SetValue( -25.0 )
_SDKP_enslave.SendStoryEvent( akLoc = akSpeakerRef.GetCurrentLocation(), akRef1 = akSpeakerRef, akRef2 = kPlayer, aiValue1 = _SDGVP_demerits.GetValueInt(), aiValue2 = 0 )
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

_SDQS_functions Property funct  Auto

FormList Property _SDFLP_sex_items  Auto
FormList Property _SDFLP_punish_items  Auto
Spell Property _SDSP_freedom  Auto  

GlobalVariable Property _SDGVP_buyoutEarned  Auto  
GlobalVariable Property _SDGVP_demerits  Auto  
Keyword Property _SDKP_enslave  Auto  
ReferenceAlias Property _SDRAP_player  Auto  
