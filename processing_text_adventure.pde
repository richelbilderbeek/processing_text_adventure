// Simple text adventure.
//
// I kept the code very simple and in one file.
// It may not be the smartest code,
// but most beginner programmers will be
// able to extend this game.
//
// Good luck making something cool out of this!


// Number of the room the player is in
int room = 1;

final int font_size = 26; //pixels
final int border = 10; //pixels

void setup()
{
  size(640, 400);
  textSize(font_size);
}

// Draws the current room
void draw_room()
{
  // All rooms have a black background
  background(0);
  
  // Redirect code to the correct function
  if (room == 1) { draw_room_1(); return; }
  if (room == 2) { draw_room_2(); return; }
  if (room == 3) { draw_room_3(); return; }
  if (room == 4) { draw_room_4(); return; }

  text("You are in        ", border, border + (1 * font_size));
  text("an unknown room.  ", border, border + (2 * font_size));
  text("                  ", border, border + (3 * font_size));
  text("CHECK YOUR CODE   ", border, border + (4 * font_size));
}

void draw_room_1()
{
  text("You are in room 1.", border, border + (1 * font_size));
  text("You can do this:  ", border, border + (2 * font_size));
  text("1) Go left        ", border, border + (3 * font_size));
  text("2) Go right       ", border, border + (4 * font_size));
}

void draw_room_2()
{
  text("You are in room 2.", border, border + (1 * font_size));
  text("You can do this:  ", border, border + (2 * font_size));
  text("1) Go up          ", border, border + (3 * font_size));
  text("2) Go down        ", border, border + (4 * font_size));
}

void draw_room_3()
{
  text("You are in room 3.", border, border + (1 * font_size));
  text("You die.          ", border, border + (2 * font_size));
  text("                  ", border, border + (3 * font_size));
  text("GAME OVER         ", border, border + (4 * font_size));
}

void draw_room_4()
{
  text("You are in room 4.", border, border + (1 * font_size));
  text("You escaped!      ", border, border + (2 * font_size));
  text("                  ", border, border + (3 * font_size));
  text("GAME WON          ", border, border + (4 * font_size));
}

// Processes the key presses
void process_keys()
{
  // No key pressed? Then there is nothing to do here :-)
  if (!keyPressed) return;
  
  // Process the pressed key
  if (room == 1 && key == '1') { room = 2; return; }
  if (room == 1 && key == '2') { room = 3; return; }
  if (room == 2 && key == '1') { room = 3; return; }
  if (room == 2 && key == '2') { room = 4; return; } 
}

void draw()
{
  draw_room();
  process_keys();
  delay(100);
}
