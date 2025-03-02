local mod_name = "classic_coaches_generic_livery_pack"

local S = minetest.get_translator(mod_name)

local default_seat_alpha = 245
local default_wall_alpha = 253

-- The following variables may need to be overriden per template based on
-- future contributions. Currently, these values are the same for all livery
-- templates defined in this mod.
local template_designer = "Marnack"
local texture_license = "CC-BY-SA-3.0"
local texture_creator = "Marnack"

-- Define all of the livery tempalte names.  These will be used when creating
-- livery templates for each of the wagon types.
local livery_template_names = {
	  [1] =	{name = S("Generic - Stripe"),					notes = "The livery features a medium width stripe.  A narrow divider stripe can be added."},
	  [2] =	{name = S("Generic - Intercity Stripe"),		notes = "The livery features a medium width stripe with the word, 'intercity'.  The side doors are colored differently by default."},
	  [3] =	{name = S("Generic - Edged Stripe"),			notes = "The livery features a medium width stripe.  The stripe's edges are colored differently by default."},
	  [4] =	{name = S("Generic - Tricolor"),				notes = "The livery can have different colors for the upper and lower halves of it sides and well as a window band.  The window band can also be trimmed in a different color."},
	  [5] =	{name = S("Generic - Double Bands and Stripe"),	notes = "This livery features color trim along the top and bottom of the sides, a window band, a wide band along the bottom half of the sides and a stripe separating the upper and lower halves of the sides."},
	  [6] =	{name = S("Generic - Window Band and Stripe"),	notes = "This livery features independent colors for the upper and lower halves of the sides, a window band and a narrow stripe near the middle."},
	  [7] =	{name = S("Generic - Window Stripes"),			notes = "In addition to a window band, the livery features a narrow strips above the windows and two adjacent stripes just below the windows."},
	  [8] =	{name = S("Generic - Arrows and Rail"),			notes = "This livery features stylized arrow heads and a section of train track on the lower half of the wagon's sides"},
	  [9] =	{name = S("Generic - Arrows and Line"),			notes = "This livery features decorative arrows and lines on the lower half of the wagon's sides"},
	 [10] =	{name = S("Generic - Slanted Bands"),			notes = "This livery features slanted vertical bands left of center plus an optional thin horizontal stripe"},
}

local livery_templates = {
	["classic_coaches:corridor_coach_class1"] = {
		[1] = {
			base_texture = mod_name.."_corridor_coach_class1_001.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_001_class1_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_001_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Stripe Divider"),		texture = mod_name.."_overlay_001_stripe_divider.png"},
				[4] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[2] = {
			base_texture = mod_name.."_corridor_coach_class1_002.png",
			overlays = {
				[1] = {name = S("Exterior Walls"),		texture = mod_name.."_overlay_002_class1_exterior_walls.png",		alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_002_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Service Stripe"),		texture = "classic_coaches_overlay_service_stripe.png"},
				[4] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[3] = {
			base_texture = mod_name.."_corridor_coach_class1_003.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_003_side_walls.png",					alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_003_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Stripe Edges"),		texture = mod_name.."_overlay_003_stripe_edges.png"},
				[4] = {name = S("Seats"),				texture = "classic_coaches_overlay_seats.png",						alpha = default_seat_alpha},
				[5] = {name = S("End Doors"),			texture = "classic_coaches_overlay_end_doors.png"},
			},
		},
		[4] = {
			base_texture = mod_name.."_corridor_coach_class1_004.png",
			overlays = {
				[1] = {name = S("Upper Side Walls"),	texture = mod_name.."_overlay_004_upper_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Lower Side Walls"),	texture = mod_name.."_overlay_004_lower_side_walls.png",			alpha = default_wall_alpha},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_004_class1_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Window Band Trim"),	texture = mod_name.."_overlay_004_window_band_trim.png"},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[5] = {
			base_texture = mod_name.."_corridor_coach_class1_005.png",
			overlays = {
				[1] = {name = S("Upper Trim"),			texture = mod_name.."_overlay_005_upper_trim.png",					alpha = default_wall_alpha},
				[2] = {name = S("Window Band"),			texture = mod_name.."_overlay_005_class1_window_band.png",			alpha = default_wall_alpha},
				[3] = {name = S("Middle Stripe"),		texture = mod_name.."_overlay_005_middle_stripe.png",				alpha = default_wall_alpha},
				[4] = {name = S("Lower Band"),			texture = mod_name.."_overlay_005_lower_band.png",					alpha = default_wall_alpha},
				[5] = {name = S("Lower Trim"),			texture = mod_name.."_overlay_005_lower_trim.png",					alpha = default_wall_alpha},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[6] = {
			base_texture = mod_name.."_corridor_coach_class1_006.png",
			overlays = {
				[1] = {name = S("Upper Side Walls"),	texture = mod_name.."_overlay_006_upper_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Lower Side Walls"),	texture = mod_name.."_overlay_006_lower_side_walls.png",			alpha = default_wall_alpha},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_006_class1_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Stripe"),				texture = mod_name.."_overlay_006_stripe.png",						alpha = default_wall_alpha},
				[5] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[7] = {
			base_texture = mod_name.."_corridor_coach_class1_007.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_007_side_walls.png",					alpha = default_wall_alpha},
				[2] = {name = S("Upper Stripe"),		texture = mod_name.."_overlay_007_upper_stripe.png"},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_007_class1_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Middle Stripe"),		texture = mod_name.."_overlay_007_middle_stripe.png",				alpha = default_wall_alpha},
				[5] = {name = S("Lower Stripe"),		texture = mod_name.."_overlay_007_lower_stripe.png",				alpha = default_wall_alpha},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[8] = {
			base_texture = mod_name.."_corridor_coach_class1_008.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_008_side_walls.png",					alpha = default_wall_alpha},
				[2] = {name = S("Decoration Arrows"),	texture = mod_name.."_overlay_008_decoration_arrows.png",			alpha = default_wall_alpha},
				[3] = {name = S("Track Rails"),			texture = mod_name.."_overlay_008_track_rails.png",					alpha = default_wall_alpha},
				[4] = {name = S("Track Ties"),			texture = mod_name.."_overlay_008_track_ties.png",					alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
				[6] = {name = S("Window Band"),			texture = mod_name.."_overlay_008_class1_window_band.png",			alpha = default_wall_alpha},
			},
		},
		[9] = {
			base_texture = mod_name.."_corridor_coach_class1_009.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_009_class1_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Decoration Arrows"),	texture = mod_name.."_overlay_009_decoration_arrows.png",			alpha = default_wall_alpha},
				[3] = {name = S("Decoration Line"),		texture = mod_name.."_overlay_009_decoration_line.png",				alpha = default_wall_alpha},
				[4] = {name = S("Trim"),				texture = mod_name.."_overlay_009_trim.png",						alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[10] = {
			base_texture = mod_name.."_corridor_coach_class1_010.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_010_class1_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Left Slanted Band"),	texture = mod_name.."_overlay_010-class1_left_band.png",			alpha = default_wall_alpha},
				[3] = {name = S("Middle Slanted Band"),	texture = mod_name.."_overlay_010-class1_middle_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Right Slanted Band"),	texture = mod_name.."_overlay_010-right_band.png",					alpha = default_wall_alpha},
				[5] = {name = S("Stripe"),				texture = mod_name.."_overlay_010-stripe.png",},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
	},
	["classic_coaches:corridor_coach_class2"] = {
		[1] = {
			base_texture = mod_name.."_corridor_coach_class2_001.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_001_class2_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_001_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Stripe Divider"),		texture = mod_name.."_overlay_001_stripe_divider.png"},
				[4] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[2] = {
			base_texture = mod_name.."_corridor_coach_class2_002.png",
			overlays = {
				[1] = {name = S("Exterior Walls"),		texture = mod_name.."_overlay_002_class2_exterior_walls.png",		alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_002_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Service Stripe"),		texture = "classic_coaches_overlay_service_stripe.png"},
				[4] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[3] = {
			base_texture = mod_name.."_corridor_coach_class2_003.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_003_side_walls.png",					alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_003_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Stripe Edges"),		texture = mod_name.."_overlay_003_stripe_edges.png"},
				[4] = {name = S("Seats"),				texture = "classic_coaches_overlay_seats.png",						alpha = default_seat_alpha},
				[5] = {name = S("End Doors"),			texture = "classic_coaches_overlay_end_doors.png"},
			},
		},
		[4] = {
			base_texture = mod_name.."_corridor_coach_class2_004.png",
			overlays = {
				[1] = {name = S("Upper Side Walls"),	texture = mod_name.."_overlay_004_upper_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Lower Side Walls"),	texture = mod_name.."_overlay_004_lower_side_walls.png",			alpha = default_wall_alpha},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_004_class2_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Window Band Trim"),	texture = mod_name.."_overlay_004_window_band_trim.png"},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[5] = {
			base_texture = mod_name.."_corridor_coach_class2_005.png",
			overlays = {
				[1] = {name = S("Upper Trim"),			texture = mod_name.."_overlay_005_upper_trim.png",					alpha = default_wall_alpha},
				[2] = {name = S("Window Band"),			texture = mod_name.."_overlay_005_class2_window_band.png",			alpha = default_wall_alpha},
				[3] = {name = S("Middle Stripe"),		texture = mod_name.."_overlay_005_middle_stripe.png",				alpha = default_wall_alpha},
				[4] = {name = S("Lower Band"),			texture = mod_name.."_overlay_005_lower_band.png",					alpha = default_wall_alpha},
				[5] = {name = S("Lower Trim"),			texture = mod_name.."_overlay_005_lower_trim.png",					alpha = default_wall_alpha},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[6] = {
			base_texture = mod_name.."_corridor_coach_class2_006.png",
			overlays = {
				[1] = {name = S("Upper Side Walls"),	texture = mod_name.."_overlay_006_upper_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Lower Side Walls"),	texture = mod_name.."_overlay_006_lower_side_walls.png",			alpha = default_wall_alpha},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_006_class2_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Stripe"),				texture = mod_name.."_overlay_006_stripe.png",						alpha = default_wall_alpha},
				[5] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[7] = {
			base_texture = mod_name.."_corridor_coach_class2_007.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_007_side_walls.png",					alpha = default_wall_alpha},
				[2] = {name = S("Upper Stripe"),		texture = mod_name.."_overlay_007_upper_stripe.png"},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_007_class2_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Middle Stripe"),		texture = mod_name.."_overlay_007_middle_stripe.png",				alpha = default_wall_alpha},
				[5] = {name = S("Lower Stripe"),		texture = mod_name.."_overlay_007_lower_stripe.png",				alpha = default_wall_alpha},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[8] = {
			base_texture = mod_name.."_corridor_coach_class2_008.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_008_side_walls.png",					alpha = default_wall_alpha},
				[2] = {name = S("Decoration Arrows"),	texture = mod_name.."_overlay_008_decoration_arrows.png",			alpha = default_wall_alpha},
				[3] = {name = S("Track Rails"),			texture = mod_name.."_overlay_008_track_rails.png",					alpha = default_wall_alpha},
				[4] = {name = S("Track Ties"),			texture = mod_name.."_overlay_008_track_ties.png",					alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
				[6] = {name = S("Window Band"),			texture = mod_name.."_overlay_008_class2_window_band.png",			alpha = default_wall_alpha},
			},
		},
		[9] = {
			base_texture = mod_name.."_corridor_coach_class2_009.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_009_class2_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Decoration Arrows"),	texture = mod_name.."_overlay_009_decoration_arrows.png",			alpha = default_wall_alpha},
				[3] = {name = S("Decoration Line"),		texture = mod_name.."_overlay_009_decoration_line.png",				alpha = default_wall_alpha},
				[4] = {name = S("Trim"),				texture = mod_name.."_overlay_009_trim.png",						alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[10] = {
			base_texture = mod_name.."_corridor_coach_class2_010.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_010_class2_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Left Slanted Band"),	texture = mod_name.."_overlay_010-class2_left_band.png",			alpha = default_wall_alpha},
				[3] = {name = S("Middle Slanted Band"),	texture = mod_name.."_overlay_010-class2_middle_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Right Slanted Band"),	texture = mod_name.."_overlay_010-right_band.png",					alpha = default_wall_alpha},
				[5] = {name = S("Stripe"),				texture = mod_name.."_overlay_010-stripe.png",},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
	},
	["classic_coaches:open_coach_class1"] = {
		[1] = {
			base_texture = mod_name.."_open_coach_class1_001.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_001_class1_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_001_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Stripe Divider"),		texture = mod_name.."_overlay_001_stripe_divider.png"},
				[4] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[2] = {
			base_texture = mod_name.."_open_coach_class1_002.png",
			overlays = {
				[1] = {name = S("Exterior Walls"),		texture = mod_name.."_overlay_002_class1_exterior_walls.png",		alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_002_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Service Stripe"),		texture = "classic_coaches_overlay_service_stripe.png"},
				[4] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[3] = {
			base_texture = mod_name.."_open_coach_class1_003.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_003_side_walls.png",					alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_003_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Stripe Edges"),		texture = mod_name.."_overlay_003_stripe_edges.png"},
				[4] = {name = S("Seats"),				texture = "classic_coaches_overlay_seats.png",						alpha = default_seat_alpha},
				[5] = {name = S("End Doors"),			texture = "classic_coaches_overlay_end_doors.png"},
			},
		},
		[4] = {
			base_texture = mod_name.."_open_coach_class1_004.png",
			overlays = {
				[1] = {name = S("Upper Side Walls"),	texture = mod_name.."_overlay_004_upper_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Lower Side Walls"),	texture = mod_name.."_overlay_004_lower_side_walls.png",			alpha = default_wall_alpha},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_004_class1_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Window Band Trim"),	texture = mod_name.."_overlay_004_window_band_trim.png"},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[5] = {
			base_texture = mod_name.."_open_coach_class1_005.png",
			overlays = {
				[1] = {name = S("Upper Trim"),			texture = mod_name.."_overlay_005_upper_trim.png",					alpha = default_wall_alpha},
				[2] = {name = S("Window Band"),			texture = mod_name.."_overlay_005_class1_window_band.png",			alpha = default_wall_alpha},
				[3] = {name = S("Middle Stripe"),		texture = mod_name.."_overlay_005_middle_stripe.png",				alpha = default_wall_alpha},
				[4] = {name = S("Lower Band"),			texture = mod_name.."_overlay_005_lower_band.png",					alpha = default_wall_alpha},
				[5] = {name = S("Lower Trim"),			texture = mod_name.."_overlay_005_lower_trim.png",					alpha = default_wall_alpha},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[6] = {
			base_texture = mod_name.."_open_coach_class1_006.png",
			overlays = {
				[1] = {name = S("Upper Side Walls"),	texture = mod_name.."_overlay_006_upper_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Lower Side Walls"),	texture = mod_name.."_overlay_006_lower_side_walls.png",			alpha = default_wall_alpha},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_006_class1_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Stripe"),				texture = mod_name.."_overlay_006_stripe.png",						alpha = default_wall_alpha},
				[5] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[7] = {
			base_texture = mod_name.."_open_coach_class1_007.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_007_side_walls.png",					alpha = default_wall_alpha},
				[2] = {name = S("Upper Stripe"),		texture = mod_name.."_overlay_007_upper_stripe.png"},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_007_class1_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Middle Stripe"),		texture = mod_name.."_overlay_007_middle_stripe.png",				alpha = default_wall_alpha},
				[5] = {name = S("Lower Stripe"),		texture = mod_name.."_overlay_007_lower_stripe.png",				alpha = default_wall_alpha},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[8] = {
			base_texture = mod_name.."_open_coach_class1_008.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_008_side_walls.png",					alpha = default_wall_alpha},
				[2] = {name = S("Decoration Arrows"),	texture = mod_name.."_overlay_008_decoration_arrows.png",			alpha = default_wall_alpha},
				[3] = {name = S("Track Rails"),			texture = mod_name.."_overlay_008_track_rails.png",					alpha = default_wall_alpha},
				[4] = {name = S("Track Ties"),			texture = mod_name.."_overlay_008_track_ties.png",					alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
				[6] = {name = S("Window Band"),			texture = mod_name.."_overlay_008_class1_window_band.png",			alpha = default_wall_alpha},
			},
		},
		[9] = {
			base_texture = mod_name.."_open_coach_class1_009.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_009_class1_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Decoration Arrows"),	texture = mod_name.."_overlay_009_decoration_arrows.png",			alpha = default_wall_alpha},
				[3] = {name = S("Decoration Line"),		texture = mod_name.."_overlay_009_decoration_line.png",				alpha = default_wall_alpha},
				[4] = {name = S("Trim"),				texture = mod_name.."_overlay_009_trim.png",						alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
		[10] = {
			base_texture = mod_name.."_open_coach_class1_010.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_010_class1_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Left Slanted Band"),	texture = mod_name.."_overlay_010-class1_left_band.png",			alpha = default_wall_alpha},
				[3] = {name = S("Middle Slanted Band"),	texture = mod_name.."_overlay_010-class1_middle_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Right Slanted Band"),	texture = mod_name.."_overlay_010-right_band.png",					alpha = default_wall_alpha},
				[5] = {name = S("Stripe"),				texture = mod_name.."_overlay_010-stripe.png",},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class1_class_number.png"},
			},
		},
	},
	["classic_coaches:open_coach_class2"] = {
		[1] = {
			base_texture = mod_name.."_open_coach_class2_001.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_001_class2_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_001_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Stripe Divider"),		texture = mod_name.."_overlay_001_stripe_divider.png"},
				[4] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[2] = {
			base_texture = mod_name.."_open_coach_class2_002.png",
			overlays = {
				[1] = {name = S("Exterior Walls"),		texture = mod_name.."_overlay_002_class2_exterior_walls.png",		alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_002_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Service Stripe"),		texture = "classic_coaches_overlay_service_stripe.png"},
				[4] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[3] = {
			base_texture = mod_name.."_open_coach_class2_003.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_003_side_walls.png",					alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_003_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Stripe Edges"),		texture = mod_name.."_overlay_003_stripe_edges.png"},
				[4] = {name = S("Seats"),				texture = "classic_coaches_overlay_seats.png",						alpha = default_seat_alpha},
				[5] = {name = S("End Doors"),			texture = "classic_coaches_overlay_end_doors.png"},
			},
		},
		[4] = {
			base_texture = mod_name.."_open_coach_class2_004.png",
			overlays = {
				[1] = {name = S("Upper Side Walls"),	texture = mod_name.."_overlay_004_upper_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Lower Side Walls"),	texture = mod_name.."_overlay_004_lower_side_walls.png",			alpha = default_wall_alpha},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_004_class2_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Window Band Trim"),	texture = mod_name.."_overlay_004_window_band_trim.png"},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[5] = {
			base_texture = mod_name.."_open_coach_class2_005.png",
			overlays = {
				[1] = {name = S("Upper Trim"),			texture = mod_name.."_overlay_005_upper_trim.png",					alpha = default_wall_alpha},
				[2] = {name = S("Window Band"),			texture = mod_name.."_overlay_005_class2_window_band.png",			alpha = default_wall_alpha},
				[3] = {name = S("Middle Stripe"),		texture = mod_name.."_overlay_005_middle_stripe.png",				alpha = default_wall_alpha},
				[4] = {name = S("Lower Band"),			texture = mod_name.."_overlay_005_lower_band.png",					alpha = default_wall_alpha},
				[5] = {name = S("Lower Trim"),			texture = mod_name.."_overlay_005_lower_trim.png",					alpha = default_wall_alpha},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[6] = {
			base_texture = mod_name.."_open_coach_class2_006.png",
			overlays = {
				[1] = {name = S("Upper Side Walls"),	texture = mod_name.."_overlay_006_upper_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Lower Side Walls"),	texture = mod_name.."_overlay_006_lower_side_walls.png",			alpha = default_wall_alpha},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_006_class2_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Stripe"),				texture = mod_name.."_overlay_006_stripe.png",						alpha = default_wall_alpha},
				[5] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[7] = {
			base_texture = mod_name.."_open_coach_class2_007.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_007_side_walls.png",					alpha = default_wall_alpha},
				[2] = {name = S("Upper Stripe"),		texture = mod_name.."_overlay_007_upper_stripe.png"},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_007_class2_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Middle Stripe"),		texture = mod_name.."_overlay_007_middle_stripe.png",				alpha = default_wall_alpha},
				[5] = {name = S("Lower Stripe"),		texture = mod_name.."_overlay_007_lower_stripe.png",				alpha = default_wall_alpha},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[8] = {
			base_texture = mod_name.."_open_coach_class2_008.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_008_side_walls.png",					alpha = default_wall_alpha},
				[2] = {name = S("Decoration Arrows"),	texture = mod_name.."_overlay_008_decoration_arrows.png",			alpha = default_wall_alpha},
				[3] = {name = S("Track Rails"),			texture = mod_name.."_overlay_008_track_rails.png",					alpha = default_wall_alpha},
				[4] = {name = S("Track Ties"),			texture = mod_name.."_overlay_008_track_ties.png",					alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
				[6] = {name = S("Window Band"),			texture = mod_name.."_overlay_008_class2_window_band.png",			alpha = default_wall_alpha},
			},
		},
		[9] = {
			base_texture = mod_name.."_open_coach_class2_009.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_009_class2_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Decoration Arrows"),	texture = mod_name.."_overlay_009_decoration_arrows.png",			alpha = default_wall_alpha},
				[3] = {name = S("Decoration Line"),		texture = mod_name.."_overlay_009_decoration_line.png",				alpha = default_wall_alpha},
				[4] = {name = S("Trim"),				texture = mod_name.."_overlay_009_trim.png",						alpha = default_wall_alpha},
				[5] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
		[10] = {
			base_texture = mod_name.."_open_coach_class2_010.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_010_class2_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Left Slanted Band"),	texture = mod_name.."_overlay_010-class2_left_band.png",			alpha = default_wall_alpha},
				[3] = {name = S("Middle Slanted Band"),	texture = mod_name.."_overlay_010-class2_middle_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Right Slanted Band"),	texture = mod_name.."_overlay_010-right_band.png",					alpha = default_wall_alpha},
				[5] = {name = S("Stripe"),				texture = mod_name.."_overlay_010-stripe.png",},
				[6] = {name = S("Class Number"),		texture = "classic_coaches_overlay_class2_class_number.png"},
			},
		},
	},
	["classic_coaches:bistro_coach"] = {
		[1] = {
			base_texture = mod_name.."_bistro_coach_001.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_001_bistro_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_001_bistro_stripe.png",				alpha = default_wall_alpha},
				[3] = {name = S("Stripe Divider"),		texture = mod_name.."_overlay_001_bistro_stripe_divider.png"},
				[4] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[5] = {name = S("Galley"),				texture = "classic_coaches_overlay_bistro_galley.png"},
			},
		},
		[2] = {
			base_texture = mod_name.."_bistro_coach_002.png",
			overlays = {
				[1] = {name = S("Exterior Walls"),		texture = mod_name.."_overlay_002_bistro_exterior_walls.png",		alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_002_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Service Stripe"),		texture = "classic_coaches_overlay_service_stripe.png"},
				[4] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[5] = {name = S("Bistro Label"),		texture = "classic_coaches_overlay_bistro_label_5.png"},
			},
		},
		[3] = {
			base_texture = mod_name.."_bistro_coach_003.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_003_bistro_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Stripe"),				texture = mod_name.."_overlay_003_stripe.png",						alpha = default_wall_alpha},
				[3] = {name = S("Stripe Edges"),		texture = mod_name.."_overlay_003_stripe_edges.png"},
				[4] = {name = S("Seats"),				texture = "classic_coaches_overlay_bistro_seats.png",				alpha = default_seat_alpha},
				[5] = {name = S("End Doors"),			texture = "classic_coaches_overlay_end_doors.png"},
				[6] = {name = S("Bistro Label"),		texture = "classic_coaches_overlay_bistro_label_1.png",				alpha = default_wall_alpha},
			},
		},
		[4] = {
			base_texture = mod_name.."_bistro_coach_004.png",
			overlays = {
				[1] = {name = S("Upper Side Walls"),	texture = mod_name.."_overlay_004_upper_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Lower Side Walls"),	texture = mod_name.."_overlay_004_bistro_lower_side_walls.png",		alpha = default_wall_alpha},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_004_bistro_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Window Band Trim"),	texture = mod_name.."_overlay_004_bistro_window_band_trim.png"},
				[5] = {name = S("Bistro Label"),		texture = "classic_coaches_overlay_bistro_label_2.png"},
				[6] = {name = S("Galley"),				texture = "classic_coaches_overlay_bistro_galley.png"},
			},
		},
		[5] = {
			base_texture = mod_name.."_bistro_coach_005.png",
			overlays = {
				[1] = {name = S("Upper Trim"),			texture = mod_name.."_overlay_005_upper_trim.png",					alpha = default_wall_alpha},
				[2] = {name = S("Window Band"),			texture = mod_name.."_overlay_005_bistro_window_band.png",			alpha = default_wall_alpha},
				[3] = {name = S("Middle Stripe"),		texture = mod_name.."_overlay_005_middle_stripe.png",				alpha = default_wall_alpha},
				[4] = {name = S("Lower Band"),			texture = mod_name.."_overlay_005_lower_band.png",					alpha = default_wall_alpha},
				[5] = {name = S("Lower Trim"),			texture = mod_name.."_overlay_005_lower_trim.png",					alpha = default_wall_alpha},
				[6] = {name = S("Bistro Label"),		texture = "classic_coaches_overlay_bistro_label_3.png"},
			},
		},
		[6] = {
			base_texture = mod_name.."_bistro_coach_006.png",
			overlays = {
				[1] = {name = S("Upper Side Walls"),	texture = mod_name.."_overlay_006_upper_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Lower Side Walls"),	texture = mod_name.."_overlay_006_bistro_lower_side_walls.png",		alpha = default_wall_alpha},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_006_bistro_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Stripe"),				texture = mod_name.."_overlay_006_stripe.png",						alpha = default_wall_alpha},
				[5] = {name = S("Side Doors"),			texture = "classic_coaches_overlay_side_doors.png",					alpha = default_wall_alpha},
				[6] = {name = S("Bistro Label"),		texture = "classic_coaches_overlay_bistro_label_4.png"},
			},
		},
		[7] = {
			base_texture = mod_name.."_bistro_coach_007.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_007_bistro_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Upper Stripe"),		texture = mod_name.."_overlay_007_bistro_upper_stripe.png"},
				[3] = {name = S("Window Band"),			texture = mod_name.."_overlay_007_bistro_window_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Middle Stripe"),		texture = mod_name.."_overlay_007_bistro_middle_stripe.png",		alpha = default_wall_alpha},
				[5] = {name = S("Lower Stripe"),		texture = mod_name.."_overlay_007_lower_stripe.png",				alpha = default_wall_alpha},
				[6] = {name = S("Bistro Label"),		texture = "classic_coaches_overlay_bistro_label_4.png"},
			},
		},
		[8] = {
			base_texture = mod_name.."_bistro_coach_008.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_008_bistro_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Decoration Arrows"),	texture = mod_name.."_overlay_008_decoration_arrows.png",			alpha = default_wall_alpha},
				[3] = {name = S("Track Rails"),			texture = mod_name.."_overlay_008_track_rails.png",					alpha = default_wall_alpha},
				[4] = {name = S("Track Ties"),			texture = mod_name.."_overlay_008_track_ties.png",					alpha = default_wall_alpha},
				[5] = {name = S("Bistro Label"),		texture = "classic_coaches_overlay_bistro_label_5.png"},
				[6] = {name = S("Window Band"),			texture = mod_name.."_overlay_008_bistro_window_band.png",			alpha = default_wall_alpha},
			},
		},
		[9] = {
			base_texture = mod_name.."_bistro_coach_009.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_009_bistro_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Decoration Arrows"),	texture = mod_name.."_overlay_009_decoration_arrows.png",			alpha = default_wall_alpha},
				[3] = {name = S("Decoration Line"),		texture = mod_name.."_overlay_009_decoration_line.png",				alpha = default_wall_alpha},
				[4] = {name = S("Trim"),				texture = mod_name.."_overlay_009_trim.png",						alpha = default_wall_alpha},
				[5] = {name = S("Bistro Label"),		texture = "classic_coaches_overlay_bistro_label_5.png"},
			},
		},
		[10] = {
			base_texture = mod_name.."_bistro_coach_010.png",
			overlays = {
				[1] = {name = S("Side Walls"),			texture = mod_name.."_overlay_010_bistro_side_walls.png",			alpha = default_wall_alpha},
				[2] = {name = S("Left Slanted Band"),	texture = mod_name.."_overlay_010-bistro_left_band.png",			alpha = default_wall_alpha},
				[3] = {name = S("Middle Slanted Band"),	texture = mod_name.."_overlay_010-bistro_middle_band.png",			alpha = default_wall_alpha},
				[4] = {name = S("Right Slanted Band"),	texture = mod_name.."_overlay_010-right_band.png",					alpha = default_wall_alpha},
				[5] = {name = S("Stripe"),				texture = mod_name.."_overlay_010-stripe.png"},
				[6] = {name = S("Bistro Label"),		texture = "classic_coaches_overlay_bistro_label_1.png"},
			},
		},
	},
}

-- Define groups of wagon types that will share predefined liveries.
local wagon_types = {
	common_coaches = {
		"classic_coaches:corridor_coach_class1",
		"classic_coaches:corridor_coach_class2",
		"classic_coaches:open_coach_class1",
		"classic_coaches:open_coach_class2",
	},
	bistro_coaches = {
		"classic_coaches:bistro_coach",
	},
}

local predefined_liveries = {
	{
		name = S("Generic - Ocean View"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Double Bands and Stripe"),
			overlays = {
				[1] = {id = 1,	color = "#000040"},	-- "Upper Trim"
				[2] = {id = 2,	color = "#87CEEB"},	-- "Window Band"
				[3] = {id = 3,	color = "#4682B4"},	-- "Middle Stripe"
				[4] = {id = 4,	color = "#4682B4"},	-- "Lower Band"
				[5] = {id = 5,	color = "#000040"},	-- "Lower Trim"
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"
			},
		},
	},
	{
		name = S("Generic - Ocean View"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Double Bands and Stripe"),
			overlays = {
				[1] = {id = 1,	color = "#000040"},	-- "Upper Trim"
				[2] = {id = 2,	color = "#87CEEB"},	-- "Window Band"
				[3] = {id = 3,	color = "#4682B4"},	-- "Middle Stripe"
				[4] = {id = 4,	color = "#4682B4"},	-- "Lower Band"
				[5] = {id = 5,	color = "#000040"},	-- "Lower Trim"
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label"
			},
		},
	},
	{
		name = S("Generic - Desert Flyer"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Double Bands and Stripe"),
			overlays = {
				[1] = {id = 1,	color = "#F5DEB3"},	-- "Upper Trim"
				[2] = {id = 2,	color = "#DAA520"},	-- "Window Band"
				[3] = {id = 3,	color = "#F5DEB3"},	-- "Middle Stripe"
				[4] = {id = 4,	color = "#F5DEB3"},	-- "Lower Band"
				[5] = {id = 5,	color = "#DAA520"},	-- "Lower Trim"
				[6] = {id = 6,	color = "#F5DEB3"},	-- "Class Number"
			},
		},
	},
	{
		name = S("Generic - Desert Flyer"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Double Bands and Stripe"),
			overlays = {
				[1] = {id = 1,	color = "#F5DEB3"},	-- "Upper Trim"
				[2] = {id = 2,	color = "#DAA520"},	-- "Window Band"
				[3] = {id = 3,	color = "#F5DEB3"},	-- "Middle Stripe"
				[4] = {id = 4,	color = "#F5DEB3"},	-- "Lower Band"
				[5] = {id = 5,	color = "#DAA520"},	-- "Lower Trim"
				[6] = {id = 6,	color = "#DAA520"},	-- "Bistro Label"
			},
		},
	},
	{
		name = S("Generic - Woodland Safari"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Double Bands and Stripe"),
			overlays = {
				[1] = {id = 1,	color = "#003200"},	-- "Upper Trim"
				[2] = {id = 2,	color = "#006400"},	-- "Window Band"
				[3] = {id = 3,	color = "#7EA24E"},	-- "Middle Stripe"
				[4] = {id = 4,	color = "#006400"},	-- "Lower Band"
				[5] = {id = 5,	color = "#003200"},	-- "Lower Trim"
				[6] = {id = 6,	color = "#7EA24E"},	-- "Class Number"
			},
		},
	},
	{
		name = S("Generic - Woodland Safari"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Double Bands and Stripe"),
			overlays = {
				[1] = {id = 1,	color = "#003200"},	-- "Upper Trim"
				[2] = {id = 2,	color = "#006400"},	-- "Window Band"
				[3] = {id = 3,	color = "#7EA24E"},	-- "Middle Stripe"
				[4] = {id = 4,	color = "#006400"},	-- "Lower Band"
				[5] = {id = 5,	color = "#003200"},	-- "Lower Trim"
				[6] = {id = 6,	color = "#7EA24E"},	-- "Bistro Label"
			},
		},
	},
	{
		name = S("Generic - Artic Dawn"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Window Band and Stripe"),
			overlays = {
				[1] = {id = 1,	color = "#C0C0C0"},	-- "Upper Side Walls"
				[2] = {id = 2,	color = "#C0C0C0"},	-- "Lower Side Walls"
				[3] = {id = 3,	color = "#800000"},	-- "Window Band"
				[4] = {id = 4,	color = "#323232"},	-- "Stripe"
				[5] = {id = 5,	color = "#C0C0C0"},	-- "Side Doors"
				[6] = {id = 6,	color = "#C0C0C0"},	-- "Class Number"
			},
		},
	},
	{
		name = S("Generic - Artic Dawn"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Window Band and Stripe"),
			overlays = {
				[1] = {id = 1,	color = "#C0C0C0"},	-- "Upper Side Walls"
				[2] = {id = 2,	color = "#C0C0C0"},	-- "Lower Side Walls"
				[3] = {id = 3,	color = "#800000"},	-- "Window Band"
				[4] = {id = 4,	color = "#323232"},	-- "Stripe"
				[5] = {id = 5,	color = "#C0C0C0"},	-- "Side Doors"
				[6] = {id = 6,	color = "#808080"},	-- "Bistro Label"
			},
		},
	},
	{
		name = S("Generic - Savanna Zepher"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Window Band and Stripe"),
			overlays = {
				[1] = {id = 1,	color = "#F5DEB3"},	-- "Upper Side Walls"
				[2] = {id = 2,	color = "#D2B48C"},	-- "Lower Side Walls"
				[3] = {id = 3,	color = "#DAA520"},	-- "Window Band"
				[4] = {id = 4,	color = "#006400"},	-- "Stripe"
--				[5] = {id = 5,	color = "#000000"},	-- "Side Doors"
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"
			},
		},
	},
	{
		name = S("Generic - Savanna Zepher"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Window Band and Stripe"),
			overlays = {
				[1] = {id = 1,	color = "#F5DEB3"},	-- "Upper Side Walls"
				[2] = {id = 2,	color = "#D2B48C"},	-- "Lower Side Walls"
				[3] = {id = 3,	color = "#DAA520"},	-- "Window Band"
				[4] = {id = 4,	color = "#006400"},	-- "Stripe"
--				[5] = {id = 5,	color = "#000000"},	-- "Side Doors"
				[6] = {id = 6,	color = "#F5DEB3"},	-- "Bistro Label"
			},
		},
	},
	{
		name = S("Generic - Autum Sunrise"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Window Stripes"),
			overlays = {
				[1] = {id = 1,	color = "#D2691E"},	-- "Side Walls"
				[2] = {id = 2,	color = "#D2B48C"},	-- "Upper Stripe"
				[3] = {id = 3,	color = "#4B4B4B"},	-- "Window Band"
				[4] = {id = 4,	color = "#D2B48C"},	-- "Middle Stripe"
				[5] = {id = 5,	color = "#DAA520"},	-- "Lower Stripe"
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"
			},
		},
	},
	{
		name = S("Generic - Autum Sunrise"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Window Stripes"),
			overlays = {
				[1] = {id = 1,	color = "#D2691E"},	-- "Side Walls"
				[2] = {id = 2,	color = "#D2B48C"},	-- "Upper Stripe"
				[3] = {id = 3,	color = "#4B4B4B"},	-- "Window Band"
				[4] = {id = 4,	color = "#D2B48C"},	-- "Middle Stripe"
				[5] = {id = 5,	color = "#DAA520"},	-- "Lower Stripe"
				[6] = {id = 6,	color = "#D2B48C"},	-- "Bistro Label"
			},
		},
	},
	{
		name = S("Generic - Frontier Sunbeam"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Arrows and Rail"),
			overlays = {
				[1] = {id = 1,	color = "#FFD700"},	-- "Side Walls"
				[2] = {id = 2,	color = "#006400"},	-- "Decoration Arrows"
				[3] = {id = 3,	color = "#006400"},	-- "Track Rails"
				[4] = {id = 4,	color = "#FFD700"},	-- "Track Ties"
--				[5] = {id = 5,	color = "#000000"},	-- "Class Number"
--				[6] = {id = 6,	color = "#000000"},	-- "Window Band"
			},
		},
	},
	{
		name = S("Generic - Frontier Sunbeam"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Arrows and Rail"),
			overlays = {
				[1] = {id = 1,	color = "#FFD700"},	-- "Side Walls"
				[2] = {id = 2,	color = "#006400"},	-- "Decoration Arrows"
				[3] = {id = 3,	color = "#006400"},	-- "Track Rails"
				[4] = {id = 4,	color = "#FFD700"},	-- "Track Ties"
				[5] = {id = 5,	color = "#006400"},	-- "Bistro Label"
--				[6] = {id = 6,	color = "#000000"},	-- "Window Band"
			},
		},
	},
	{
		name = S("Generic - Midnight Rambler"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Arrows and Rail"),
			overlays = {
				[1] = {id = 1,	color = "#141414"},	-- "Side Walls"
				[2] = {id = 2,	color = "#FFFFF0"},	-- "Decoration Arrows"
				[3] = {id = 3,	color = "#C0C0C0"},	-- "Track Rails"
				[4] = {id = 4,	color = "#141414"},	-- "Track Ties"
				[5] = {id = 5,	color = "#FFFFF0"},	-- "Class Number"
				[6] = {id = 6,	color = "#141414"},	-- "Window Band"
			},
		},
	},
	{
		name = S("Generic - Midnight Rambler"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Arrows and Rail"),
			overlays = {
				[1] = {id = 1,	color = "#141414"},	-- "Side Walls"
				[2] = {id = 2,	color = "#FFFFF0"},	-- "Decoration Arrows"
				[3] = {id = 3,	color = "#C0C0C0"},	-- "Track Rails"
				[4] = {id = 4,	color = "#141414"},	-- "Track Ties"
				[5] = {id = 5,	color = "#FFFFF0"},	-- "Bistro Label"
				[6] = {id = 6,	color = "#141414"},	-- "Window Band"
			},
		},
	},
	{
		name = S("Generic - Dawn to Dusk"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Arrows and Line"),
			overlays = {
				[1] = {id = 1,	color = "#FF8C00"},	-- "Side Walls"
				[2] = {id = 2,	color = "#FF8C00"},	-- "Decoration Arrows"
				[3] = {id = 3,	color = "#F5DEB3"},	-- "Decoration Line"
				[4] = {id = 4,	color = "#F5DEB3"},	-- "Trim"
				[5] = {id = 5,	color = "#FFFFF0"},	-- "Class Number"
			},
		},
	},
	{
		name = S("Generic - Dawn to Dusk"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Arrows and Line"),
			overlays = {
				[1] = {id = 1,	color = "#FF8C00"},	-- "Side Walls"
				[2] = {id = 2,	color = "#FF8C00"},	-- "Decoration Arrows"
				[3] = {id = 3,	color = "#F5DEB3"},	-- "Decoration Line"
				[4] = {id = 4,	color = "#F5DEB3"},	-- "Trim"
				[5] = {id = 5,	color = "#FFFFF0"},	-- "Bistro Label"
			},
		},
	},
	{
		name = S("Generic - Retro Runner"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Slanted Bands"),
			overlays = {
				[1] = {id = 1,	color = "#2E8B57"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FAF0E6"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#2E8B57"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FAF0E6"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#3C9864"},	-- "Stripe",
				[6] = {id = 6,	color = "#181818"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Generic - Retro Runner"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Slanted Bands"),
			overlays = {
				[1] = {id = 1,	color = "#2E8B57"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FAF0E6"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#2E8B57"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FAF0E6"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#3C9864"},	-- "Stripe",
				[6] = {id = 6,	color = "#FAF0E6"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Generic - Moonbeams"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Slanted Bands"),
			overlays = {
				[1] = {id = 1,	color = "#000080"},	-- "Side Walls",
				[2] = {id = 2,	color = "#000090"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#0000A4"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#0000C0"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#0000B0"},	-- "Stripe",
				[6] = {id = 6,	color = "#0000FF"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Generic - Moonbeams"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Slanted Bands"),
			overlays = {
				[1] = {id = 1,	color = "#000080"},	-- "Side Walls",
				[2] = {id = 2,	color = "#000090"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#0000A4"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#0000C0"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#0000B0"},	-- "Stripe",
				[6] = {id = 6,	color = "#0000FF"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Generic - Terra Tones"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Slanted Bands"),
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#DAA520"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#D2691E"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#D2691E"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#8B4513"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Generic - Terra Tones"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = S("Generic - Slanted Bands"),
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#DAA520"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#D2691E"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#D2691E"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#8B4513"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
}

-- This mod needs to register itself with the livery database in order to be
-- allowed to add livery templates and predefined liveries. It does not need
-- to register itself with the livery designer tool, however, since it is will
-- not be registering any wagons.
advtrains_livery_database.register_mod(mod_name)

-- The following is "boilerplate" code for registering the preceding livery
-- template information with the livery database. It is suitable for basic
-- livery templates such as those defined in this mod. Using some of the more
-- advanced features that are possible with livery templates will likely
-- require modifications to this code. Such advanced features include adding
-- support for models that use multiple texture slots or liveries that require
-- callback function in support of more complex visual features.

-- Register this mod's livery templates with the livery database.
for wagon_type, wagon_livery_templates in pairs(livery_templates) do
	for livery_template_id, livery_template in pairs(wagon_livery_templates) do
		local livery_template_name = livery_template_names[livery_template_id].name
		if livery_template_name then
			advtrains_livery_database.add_livery_template(
				wagon_type,
				livery_template_name,
				{livery_template.base_texture},
				mod_name,
				(livery_template.overlays and #livery_template.overlays) or 0,
				livery_template.designer or template_designer,
				livery_template.texture_license or texture_license,
				livery_template.texture_creator or texture_creator,
				livery_template_names[livery_template_id].notes
			)
			if livery_template.overlays then
				for overlay_id, overlay in ipairs(livery_template.overlays) do
					advtrains_livery_database.add_livery_template_overlay(
						wagon_type,
						livery_template_name,
						overlay_id,
						overlay.name,
						1,					-- Texture slot index
						overlay.texture,
						overlay.alpha
					)
				end
			end
		end
	end
end

-- Register this mod's predefined wagon liveries with the advtrains_livery_designer tool.
for _, predefined_livery in pairs(predefined_liveries) do
	-- Each predefined livery will specify the wagon types to which it applies.
	for _, wagon_type in pairs(predefined_livery.wagon_types) do
		local livery_design = predefined_livery.livery_design
		livery_design.wagon_type = wagon_type
		advtrains_livery_database.add_predefined_livery(predefined_livery.name, livery_design, mod_name, predefined_livery.notes)
	end
end
