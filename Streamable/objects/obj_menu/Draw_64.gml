/// @description Draw Options
/*
if !surface_exists(draw_surf)
{
	draw_surf = surface_create(image_xscale, image_yscale);
}

surface_set_target(draw_surf);
*/

var bounding_x_start = 0 + x;
var bounding_x_end = width + x; 
var bounding_y_start = 0 + y;
var bounding_y_end = height + y;
var num_options = ds_list_size(options);
var radius = 10;
var pressing = mouse_check_button(mb_left);
draw_set_font(fnt_segoe);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw the menu edges:
draw_set_color(menu_color);
draw_roundrect_ext(
	bounding_x_start, 
	bounding_y_start, 
	bounding_x_end + 2.0 * padding, 
	bounding_y_start + height * num_options + 2.0 * padding, 
	radius, radius, false);

bounding_y_start += padding;
bounding_y_end += padding;


for (var i = 0; i < num_options; i++)
{
	var option = options[| i];
	
	if hovered == i
	{
		draw_set_color(hover_color);
		draw_rectangle(bounding_x_start + 1, bounding_y_start, bounding_x_end + 2 * padding - 1, bounding_y_end, false);
	}

	if pressing and hovered == i and is_in {
		draw_set_color(c_gray);
	}
	else
	{
		draw_set_color(c_white);
	}
	
	draw_text(bounding_x_start + padding, bounding_y_start, option.name);
	
	bounding_y_start += height;
	bounding_y_end += height;
}
/*
surface_reset_target();

draw_set_alpha(animation);
draw_surface_stretched(draw_surf, x, y, image_xscale * animation, image_yscale * animation);
draw_set_alpha(1);
*/