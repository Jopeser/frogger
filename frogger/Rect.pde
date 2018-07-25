class Rect {
  
  float x, y, w, h;
  
  Rect (float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  boolean collides (Rect other) {
    
    float bottom = y;
    float top = y - h;
    float left = x;
    float right = x + w;
    
    float obottom = other.y;
    float otop = other.y - other.h;
    float oleft = other.x;
    float oright = other.x + other.w;
    
    return false;
  }
  
}
