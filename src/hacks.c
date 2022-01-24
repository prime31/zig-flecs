#include "../flecs/flecs.h"

FLECS_API ecs_entity_t _ogNewComponent(ecs_world_t *world, const char *name, size_t size, size_t alignment)
{
    return ecs_component_init(world, &(ecs_component_desc_t){
                                         .entity.name = name,
                                         .size = size,
                                         .alignment = alignment,
                                     });
}

FLECS_API ecs_entity_t _ogNewSystem(ecs_world_t *world, const char *name, ecs_entity_t phase, const char *expr, ecs_iter_action_t action)
{

    return ecs_system_init(world, &(ecs_system_desc_t){
                                      .entity.name = name,
                                      .entity.add = phase,
                                      .query.filter.expr = expr,
                                      .callback = action,
                                  });
}

FLECS_API ecs_entity_t _ogNewType(ecs_world_t *world, ecs_entity_t entity, const char *expr)
{
    return ecs_type_init(world, &(ecs_type_desc_t){
                                    .entity = entity,
                                    .ids_expr = expr});
}
