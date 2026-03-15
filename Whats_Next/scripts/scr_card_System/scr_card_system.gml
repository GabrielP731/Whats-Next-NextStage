// 1. Define the Constructor with a sprite parameter
function Card(_name, _desc, _tier, _stat, _mult, _sprite) constructor {
    name = _name;
    desc = _desc;
    tier = _tier;
    stat = _stat;
    mult = _mult;
    sprite = _sprite; // This stores the actual sprite asset name
}

// 2. The Card Pool (Assigning your sprites to the tiers)
global.card_pool = [
    // COMMON (Sky Sprite)
    new Card("Sharpen", "Damage +10%", "Common", "damage", 1.10, spr_card_sky),
    new Card("Warm up", "Atk Speed +10%", "Common", "speed", 1.10, spr_card_sky),
    new Card("Thick Skin", "Endurance +10%", "Common", "endurance", 1.10, spr_card_sky),
    
    // RARE (Electric Sprite)
    new Card("Heavy Ammo", "Damage +25%", "Rare", "damage", 1.25, spr_card_electric),
    new Card("Overload", "Atk Speed +25%", "Rare", "speed", 1.25, spr_card_electric),
    new Card("Unstoppable", "Endurance +25%", "Rare", "endurance", 1.25, spr_card_electric),
    
    // EPIC (Blood Sprite)
    new Card("Giant Slayer", "Damage +50%", "Epic", "damage", 1.50, spr_card_blood),
    new Card("Hyperdrive", "Atk Speed +50%", "Epic", "speed", 1.50, spr_card_blood),
    new Card("God's Will", "Endurance +50%", "Epic", "endurance", 1.50, spr_card_blood)
];