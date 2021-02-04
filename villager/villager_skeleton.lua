
local S = minetest.get_translator("skeletons");
  
  -- node box {x=0, y=0, z=0}
local node_box_bottom = {
    type = "fixed",
    fixed = {
      {-0.1875,-0.5,-0.25,-0.125,-0.4375,0.0625},
      {0.125,-0.5,-0.25,0.1875,-0.4375,0.0625},
      {-0.25,-0.5,-0.1875,-0.1875,-0.4375,0.0625},
      {0.1875,-0.5,-0.1875,0.25,-0.4375,0.0625},
      {-0.4375,0.0625,-0.125,-0.375,0.25,0.125},
      {0.375,0.0625,-0.125,0.4375,0.25,0.125},
      {-0.25,-0.4375,-0.0625,-0.125,-0.0625,0.0625},
      {0.125,-0.4375,-0.0625,0.25,-0.0625,0.0625},
      {-0.3125,-0.0625,-0.0625,-0.25,0.0,0.0},
      {-0.125,-0.0625,-0.0625,-0.0625,0.0,0.0},
      {0.0625,-0.0625,-0.0625,0.125,0.0,0.0},
      {0.25,-0.0625,-0.0625,0.3125,0.0,0.0},
      {-0.4375,0.0,-0.0625,-0.375,0.0625,0.125},
      {-0.25,0.0,-0.0625,-0.125,0.1875,0.0625},
      {0.125,0.0,-0.0625,0.25,0.1875,0.0625},
      {0.375,0.0,-0.0625,0.4375,0.0625,0.125},
      {-0.25,0.1875,-0.0625,-0.1875,0.25,0.0625},
      {0.1875,0.1875,-0.0625,0.25,0.25,0.0625},
      {-0.4375,0.25,-0.0625,-0.375,0.5,0.0625},
      {-0.1875,0.25,-0.0625,-0.125,0.3125,0.0625},
      {0.125,0.25,-0.0625,0.1875,0.3125,0.0625},
      {0.375,0.25,-0.0625,0.4375,0.5,0.0625},
      {-0.4375,-0.0625,0.0,-0.375,0.0,0.0625},
      {-0.25,-0.0625,0.0,-0.125,0.0,0.0625},
      {0.125,-0.0625,0.0,0.25,0.0,0.0625},
      {0.375,-0.0625,0.0,0.4375,0.0,0.0625},
      {-0.0625,0.25,0.0,0.0625,0.3125,0.0625},
      {-0.1875,0.3125,0.0,-0.0625,0.4375,0.0625},
      {0.0625,0.3125,0.0,0.1875,0.4375,0.0625},
      {-0.25,0.375,0.0,-0.1875,0.5,0.0625},
      {0.1875,0.375,0.0,0.25,0.5,0.0625},
      {-0.3125,0.4375,0.0,-0.25,0.5,0.0625},
      {-0.1875,0.4375,0.0,-0.125,0.5,0.0625},
      {-0.0625,0.4375,0.0,0.0625,0.5,0.125},
      {0.125,0.4375,0.0,0.1875,0.5,0.0625},
      {0.25,0.4375,0.0,0.3125,0.5,0.0625},
    },
  }
-- node box {x=0, y=1, z=0}
local node_box_top = {
    type = "fixed",
    fixed = {
      {-0.25,0.0,-0.25,0.25,0.0625,0.0},
      {-0.25,0.0625,-0.25,-0.0625,0.25,-0.1875},
      {0.0625,0.0625,-0.25,0.25,0.25,-0.1875},
      {-0.0625,0.125,-0.25,0.0625,0.1875,-0.1875},
      {-0.25,0.25,-0.25,-0.1875,0.5,0.25},
      {-0.0625,0.25,-0.25,0.0625,0.5,-0.1875},
      {0.1875,0.25,-0.25,0.25,0.5,0.25},
      {-0.1875,0.3125,-0.25,-0.0625,0.5,-0.1875},
      {0.0625,0.3125,-0.25,0.1875,0.5,-0.1875},
      {-0.0625,-0.4375,-0.1875,0.0625,-0.125,-0.125},
      {-0.125,-0.375,-0.1875,-0.0625,-0.25,-0.125},
      {0.0625,-0.375,-0.1875,0.1875,-0.25,-0.125},
      {-0.25,-0.3125,-0.1875,-0.125,-0.25,-0.125},
      {0.1875,-0.3125,-0.1875,0.25,-0.25,0.125},
      {-0.25,-0.1875,-0.1875,-0.0625,-0.125,-0.125},
      {0.0625,-0.1875,-0.1875,0.25,-0.125,-0.125},
      {-0.25,0.0625,-0.1875,-0.1875,0.25,0.0},
      {0.1875,0.0625,-0.1875,0.25,0.25,0.0},
      {-0.1875,0.4375,-0.1875,0.1875,0.5,0.25},
      {-0.1875,-0.375,-0.125,-0.125,-0.3125,0.0},
      {0.125,-0.375,-0.125,0.1875,-0.3125,0.0},
      {-0.25,-0.3125,-0.125,-0.1875,-0.25,0.125},
      {-0.25,-0.1875,-0.125,-0.1875,-0.125,0.0},
      {0.1875,-0.1875,-0.125,0.25,-0.125,0.0},
      {-0.4375,-0.5,-0.0625,-0.375,-0.4375,0.0625},
      {0.375,-0.5,-0.0625,0.4375,-0.4375,0.0625},
      {-0.4375,-0.375,-0.0625,-0.375,-0.125,0.0625},
      {0.375,-0.375,-0.0625,0.4375,-0.125,0.0625},
      {-0.375,-0.125,-0.0625,-0.25,-0.0625,0.0625},
      {0.25,-0.125,-0.0625,0.375,-0.0625,0.0625},
      {-0.25,-0.5,0.0,-0.1875,-0.4375,0.0625},
      {0.1875,-0.5,0.0,0.25,-0.4375,0.0625},
      {-0.4375,-0.4375,0.0,-0.375,-0.375,0.125},
      {-0.1875,-0.4375,0.0,-0.125,-0.375,0.125},
      {-0.0625,-0.4375,0.0,0.0625,-0.375,0.125},
      {0.125,-0.4375,0.0,0.1875,-0.375,0.125},
      {0.375,-0.4375,0.0,0.4375,-0.375,0.125},
      {-0.0625,-0.3125,0.0,0.0625,-0.25,0.125},
      {-0.0625,-0.1875,0.0,0.0625,-0.125,0.125},
      {-0.25,-0.125,0.0,-0.0625,-0.0625,0.125},
      {0.0625,-0.125,0.0,0.25,-0.0625,0.125},
      {-0.0625,-0.0625,0.0,0.0625,0.0,0.125},
      {-0.125,0.0,0.0,-0.0625,0.0625,0.25},
      {0.0625,0.0,0.0,0.125,0.0625,0.25},
      {-0.0625,0.0625,0.0,0.0625,0.125,0.125},
      {-0.25,0.125,0.0,-0.1875,0.25,0.25},
      {0.1875,0.125,0.0,0.25,0.25,0.25},
      {-0.125,-0.4375,0.0625,-0.0625,-0.375,0.125},
      {0.0625,-0.4375,0.0625,0.125,-0.375,0.125},
      {-0.1875,-0.3125,0.0625,-0.0625,-0.25,0.125},
      {0.0625,-0.3125,0.0625,0.1875,-0.25,0.125},
      {-0.25,0.0,0.0625,-0.125,0.0625,0.25},
      {0.125,0.0,0.0625,0.25,0.0625,0.25},
      {-0.25,0.0625,0.0625,-0.1875,0.125,0.25},
      {0.1875,0.0625,0.0625,0.25,0.125,0.25},
      {-0.0625,0.0,0.125,0.0625,0.0625,0.25},
      {-0.1875,0.0625,0.1875,0.1875,0.4375,0.25},
    },
  }

-- node box {x=0, y=0, z=0}
local node_box_front = {
    type = "fixed",
    fixed = {
      {-0.25,-0.5,-0.5,-0.125,-0.25,-0.4375},
      {0.125,-0.5,-0.5,0.25,-0.25,-0.4375},
      {-0.1875,-0.25,-0.5,-0.125,-0.1875,-0.4375},
      {0.125,-0.25,-0.5,0.1875,-0.1875,-0.4375},
      {-0.25,-0.5,-0.4375,-0.125,-0.375,-0.0625},
      {0.125,-0.5,-0.4375,0.25,-0.375,-0.0625},
      {-0.25,-0.5,-0.0625,-0.125,-0.4375,0.0},
      {0.125,-0.5,-0.0625,0.25,-0.4375,0.0},
      {-0.4375,-0.4375,-0.0625,-0.375,-0.375,0.5},
      {-0.3125,-0.4375,-0.0625,-0.25,-0.375,0.0},
      {-0.125,-0.4375,-0.0625,-0.0625,-0.375,0.0},
      {0.0625,-0.4375,-0.0625,0.125,-0.375,0.0},
      {0.25,-0.4375,-0.0625,0.3125,-0.375,0.0},
      {0.375,-0.4375,-0.0625,0.4375,-0.375,0.5},
      {-0.4375,-0.5,0.0,-0.375,-0.4375,0.25},
      {0.375,-0.5,0.0,0.4375,-0.4375,0.25},
      {-0.25,-0.4375,0.0,-0.125,-0.3125,0.1875},
      {0.125,-0.4375,0.0,0.25,-0.3125,0.1875},
      {-0.4375,-0.375,0.0,-0.375,-0.3125,0.5},
      {0.375,-0.375,0.0,0.4375,-0.3125,0.5},
      {-0.4375,-0.3125,0.0625,-0.375,-0.25,0.25},
      {0.375,-0.3125,0.0625,0.4375,-0.25,0.25},
      {-0.25,-0.4375,0.1875,-0.1875,-0.3125,0.25},
      {0.1875,-0.4375,0.1875,0.25,-0.3125,0.25},
      {-0.1875,-0.4375,0.25,-0.125,-0.3125,0.3125},
      {-0.0625,-0.4375,0.25,0.0625,-0.375,0.3125},
      {0.125,-0.4375,0.25,0.1875,-0.3125,0.3125},
      {-0.1875,-0.4375,0.3125,-0.0625,-0.375,0.4375},
      {0.0625,-0.4375,0.3125,0.1875,-0.375,0.4375},
      {-0.25,-0.4375,0.375,-0.1875,-0.375,0.5},
      {0.1875,-0.4375,0.375,0.25,-0.375,0.5},
      {-0.0625,-0.5,0.4375,0.0625,-0.375,0.5},
      {-0.3125,-0.4375,0.4375,-0.25,-0.375,0.5},
      {-0.1875,-0.4375,0.4375,-0.125,-0.375,0.5},
      {0.125,-0.4375,0.4375,0.1875,-0.375,0.5},
      {0.25,-0.4375,0.4375,0.3125,-0.375,0.5},
    },
  }
-- node box {x=0, y=0, z=1}
local node_box_back = {
    type = "fixed",
    fixed = {
      {-0.4375,-0.4375,-0.5,-0.375,-0.3125,-0.4375},
      {-0.25,-0.4375,-0.5,-0.1875,-0.375,-0.4375},
      {0.1875,-0.4375,-0.5,0.25,-0.375,-0.4375},
      {0.375,-0.4375,-0.5,0.4375,-0.3125,-0.4375},
      {-0.4375,-0.5,-0.4375,-0.375,-0.375,-0.375},
      {-0.1875,-0.5,-0.4375,0.1875,-0.4375,-0.375},
      {0.375,-0.5,-0.4375,0.4375,-0.375,-0.375},
      {-0.1875,-0.4375,-0.4375,-0.125,-0.375,-0.375},
      {-0.0625,-0.4375,-0.4375,0.0625,-0.375,-0.375},
      {0.125,-0.4375,-0.4375,0.1875,-0.375,-0.375},
      {-0.0625,-0.25,-0.4375,0.0625,-0.1875,-0.1875},
      {-0.4375,-0.4375,-0.375,-0.375,-0.3125,-0.25},
      {0.375,-0.4375,-0.375,0.4375,-0.3125,-0.25},
      {-0.1875,-0.375,-0.375,-0.125,-0.25,-0.3125},
      {0.125,-0.375,-0.375,0.1875,-0.25,-0.3125},
      {-0.125,-0.25,-0.375,-0.0625,-0.1875,-0.25},
      {0.0625,-0.25,-0.375,0.125,-0.1875,-0.25},
      {-0.25,-0.5,-0.3125,0.25,-0.4375,-0.25},
      {-0.25,-0.4375,-0.3125,-0.1875,-0.1875,-0.25},
      {-0.0625,-0.4375,-0.3125,0.0625,-0.375,-0.25},
      {0.1875,-0.4375,-0.3125,0.25,-0.1875,-0.25},
      {-0.1875,-0.25,-0.3125,-0.125,-0.1875,-0.25},
      {0.125,-0.25,-0.3125,0.1875,-0.1875,-0.25},
      {-0.4375,-0.375,-0.25,-0.375,-0.25,-0.125},
      {0.375,-0.375,-0.25,0.4375,-0.25,-0.125},
      {-0.0625,-0.4375,-0.1875,0.0625,-0.3125,-0.125},
      {-0.25,-0.3125,-0.1875,-0.1875,-0.125,-0.125},
      {0.1875,-0.3125,-0.1875,0.25,-0.125,-0.125},
      {-0.1875,-0.1875,-0.1875,0.1875,-0.125,-0.125},
      {-0.25,-0.4375,-0.125,-0.0625,-0.3125,-0.0625},
      {0.0625,-0.4375,-0.125,0.25,-0.3125,-0.0625},
      {-0.375,-0.375,-0.125,-0.25,-0.25,-0.0625},
      {0.25,-0.375,-0.125,0.375,-0.25,-0.0625},
      {-0.0625,-0.375,-0.0625,0.0625,-0.25,0.0},
      {-0.25,-0.5,0.0,0.25,-0.375,0.0625},
      {-0.25,-0.375,0.0,-0.0625,-0.3125,0.0625},
      {0.0625,-0.375,0.0,0.25,-0.3125,0.0625},
      {-0.125,-0.3125,0.0,-0.0625,0.0,0.0625},
      {0.0625,-0.3125,0.0,0.125,0.0,0.0625},
      {-0.25,-0.25,0.0,-0.125,0.0,0.0625},
      {-0.0625,-0.25,0.0,0.0625,0.0,0.0625},
      {0.125,-0.25,0.0,0.25,0.0,0.0625},
      {-0.25,-0.5,0.0625,0.25,-0.4375,0.5},
      {-0.25,-0.4375,0.0625,-0.1875,-0.3125,0.5},
      {0.1875,-0.4375,0.0625,0.25,-0.3125,0.5},
      {-0.0625,-0.375,0.0625,0.0625,-0.25,0.125},
      {-0.25,-0.25,0.0625,-0.1875,0.0,0.5},
      {0.1875,-0.25,0.0625,0.25,0.0,0.5},
      {-0.1875,-0.0625,0.0625,-0.0625,0.0,0.25},
      {0.0625,-0.0625,0.0625,0.1875,0.0,0.25},
      {-0.25,-0.3125,0.125,-0.1875,-0.25,0.5},
      {0.1875,-0.3125,0.125,0.25,-0.25,0.5},
      {-0.0625,-0.0625,0.125,0.0625,0.0,0.1875},
      {-0.0625,-0.0625,0.25,0.0625,0.0,0.5},
      {-0.1875,-0.0625,0.3125,-0.0625,0.0,0.5},
      {0.0625,-0.0625,0.3125,0.1875,0.0,0.5},
      {-0.1875,-0.4375,0.4375,0.1875,-0.0625,0.5},
    },
  }

skeletons.register_skeleton("villager_skeleton_bottom", S("part of villager skeleton"), node_box_bottom)
skeletons.register_skeleton("villager_skeleton_top", S("part of villager skeleton"), node_box_top)

skeletons.register_skeleton("villager_skeleton_front", S("part of villager lying skeleton"), node_box_front)
skeletons.register_skeleton("villager_skeleton_back", S("part of villager lying skeleton"), node_box_back)

skeletons.register_skeleton_transform("villager_skeleton_bottom", "villager_skeleton_front", true)
skeletons.register_skeleton_transform("villager_skeleton_top", "villager_skeleton_back", true)

