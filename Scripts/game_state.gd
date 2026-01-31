extends Node

static var state: Dictionary = {
	"worldState": {
		"room": {
			"name": {},
			"npcCount": {},
			"canCommunicate": {},
			"roomObject": {
				"name": {}
			}
		},
		"time": {},
		"date": {}
	},
	"npc": {
		"name": {},
		"dialog": {
			# leave empty if line is not a conversation option
			"playerOptions": {}
		}
	}
}
