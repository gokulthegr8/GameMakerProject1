{
  "spriteId": {
    "name": "spr_TreeStanding",
    "path": "sprites/spr_TreeStanding/spr_TreeStanding.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_enemie",
    "path": "objects/obj_enemie/obj_enemie.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_TreeGuy","path":"objects/obj_TreeGuy/obj_TreeGuy.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_TreeGuy","path":"objects/obj_TreeGuy/obj_TreeGuy.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":7,"eventType":7,"collisionObjectId":null,"parent":{"name":"obj_TreeGuy","path":"objects/obj_TreeGuy/obj_TreeGuy.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"parent":{"name":"obj_TreeGuy","path":"objects/obj_TreeGuy/obj_TreeGuy.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":2,"collisionObjectId":null,"parent":{"name":"obj_TreeGuy","path":"objects/obj_TreeGuy/obj_TreeGuy.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [],
  "overriddenProperties": [
    {"propertyId":{"name":"FallSpeed","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"3","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Gravity","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":".2","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"AttackChance","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"1","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Range","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"5","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"MoveSpeed","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"2","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"AttackCooldown","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"3","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"AttackDuration","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"2","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Damage","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"25","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Health","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"6","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"AgroFalloff","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"150","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"AgroRange","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"60","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Enemies",
    "path": "folders/Objects/Enemies.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_TreeGuy",
  "tags": [],
  "resourceType": "GMObject",
}