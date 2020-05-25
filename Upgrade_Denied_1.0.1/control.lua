print("Congratulations.")
print("The October labor lottery is complete. Your name was pulled.")
print("For immediate placement, report to the Ministry of Admission at Grestin Border Checkpoint.")
print("An apartment will be provided for you and your family in East Grestin. Expect a Class-8 dwelling.")
print("Glory to Arstotzka.")
script.on_event(defines.events.on_marked_for_upgrade,
        function(event)
            if(event.entity.force.recipes[event.target.name]) then
                if(event.entity.force.recipes[event.target.name].enabled) == false then
                    event.entity.cancel_upgrade(event.entity.force)
                end
            end
        end
)

