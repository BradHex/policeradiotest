Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if(IsControlJustPressed(1, 19)) then
			local ped = GetPlayerPed( -1 )
			if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
				RequestAnimDict( "random@arrests" )
				while ( not HasAnimDictLoaded( "random@arrests" ) ) do 
					Citizen.Wait( 100 )
				end
					if IsEntityPlayingAnim(ped, "random@arrests", "generic_radio_chatter", 3) then
						ClearPedSecondaryTask(ped)
						SetCurrentPedWeapon(ped, GetHashKey("GENERIC_RADIO_CHATTER"), true)
					else
						TaskPlayAnim(ped, "random@arrests", "generic_radio_chatter", 8.0, 2.5, -1, 49, 0, 0, 0, 0 )
						SetCurrentPedWeapon(ped, GetHashKey("GENERIC_RADIO_CHATTER"), true)
					end 
				
		end 
		
		if(IsControlJustReleased(1, 19)) then
			end
		end
	end
end)




--Ref--
-- line below is job code
-- if PlayerData.job.name ~= 'police' then
