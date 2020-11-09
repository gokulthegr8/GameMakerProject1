{
  "spriteId": {
    "name": "spr_BatWakeUp",
    "path": "sprites/spr_BatWakeUp/spr_BatWakeUp.yy",
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
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_bat","path":"objects/obj_bat/obj_bat.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_bat","path":"objects/obj_bat/obj_bat.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":2,"collisionObjectId":null,"parent":{"name":"obj_bat","path":"objects/obj_bat/obj_bat.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":7,"eventType":7,"collisionObjectId":null,"parent":{"name":"obj_bat","path":"objects/obj_bat/obj_bat.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":1,"eventType":2,"collisionObjectId":null,"parent":{"name":"obj_bat","path":"objects/obj_bat/obj_bat.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"parent":{"name":"obj_bat","path":"objects/obj_bat/obj_bat.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":0,"value":"30","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"StopDistance","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [
    {"propertyId":{"name":"AgroRange","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"150","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"AgroFalloff","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"250","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Health","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"4","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Damage","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"15","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"AttackDuration","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":".2","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"AttackCooldown","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"3","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"MoveSpeed","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"2","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Range","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"30","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"AttackChance","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"5","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"FallSpeed","path":"objects/obj_enemie/obj_enemie.yy",},"objectId":{"name":"obj_enemie","path":"objects/obj_enemie/obj_enemie.yy",},"value":"0","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Enemies",
    "path": "folders/Objects/Enemies.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_bat",
  "tags": [],
  "resourceType": "GMObject",
}