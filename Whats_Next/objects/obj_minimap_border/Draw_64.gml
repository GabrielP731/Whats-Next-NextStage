var vp = 1;          // Viewport index (1 = minimap, 0 = main view)
var border = 5;      // Border thickness in pixels
var border_color = c_black; // Border color

/// --- Get viewport screen position and size --- ///
var x1 = view_xport[vp];
var y1 = view_yport[vp];
var x2 = x1 + view_wport[vp];
var y2 = y1 + view_hport[vp];

/// --- Draw the border using 4 filled rectangles --- ///
draw_set_color(border_color);

// Top
draw_rectangle(x1, y1, x2, y1 + border, false);

// Bottom
draw_rectangle(x1, y2 - border, x2, y2, false);

// Left
draw_rectangle(x1, y1, x1 + border, y2, false);

// Right
draw_rectangle(x2 - border, y1, x2, y2, false);