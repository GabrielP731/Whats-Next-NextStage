function Card_system(){
	// color for each card
#macro COLOR_COMMON c_gray
#macro COLOR_RARE c_aqua  
#macro COLOR_EPIC c_red


//constructor
function Card(_name, _desc, _tier, _stat, _mult, _color) constructor {
    name = _name;
    desc = _desc;
    tier = _tier;
    stat = _stat;
    mult = _mult;
    color = _color;
}

// Create the 9 cards
global.card_pool = [
    // COMMON (10% boosts)
    new Card("Sharpen time", "Damage +10%", "Common", "damage", 1.10, COLOR_COMMON),
    new Card("Warm up", "Atk Speed +10%", "Common", "speed", 1.10, COLOR_COMMON),
    new Card("Long Barrel", "Range +10%", "Common", "range", 1.10, COLOR_COMMON),
    
    // RARE (25% boosts)
    new Card("Heavy Ammunition", "Damage +25%", "Rare", "damage", 1.25, COLOR_RARE),
    new Card("Overload", "Atk Speed +25%", "Rare", "speed", 1.25, COLOR_RARE),
    new Card("Already saw you", "Range +25%", "Rare", "range", 1.25, COLOR_RARE),
    
    // EPIC (50% boosts)
    new Card("Giant Slayer", "Damage +50%", "Epic", "damage", 1.50, COLOR_EPIC),
    new Card("Hyperdrive", "Atk Speed +50%", "Epic", "speed", 1.50, COLOR_EPIC),
    new Card("Telescope", "Range +50%", "Epic", "range", 1.50, COLOR_EPIC)
];

//card counter
global.cards_collected = 0;
//initial cost
global.base_card_cost = 10; 

}