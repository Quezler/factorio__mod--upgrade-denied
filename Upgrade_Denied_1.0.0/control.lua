script.on_event(defines.events.on_marked_for_upgrade,
        function(event)
            if(event.entity.force.recipes[event.target.name]) then
                if(event.entity.force.recipes[event.target.name].enabled) == false then
                    event.entity.cancel_upgrade(event.entity.force)
                end
            end
        end
)
