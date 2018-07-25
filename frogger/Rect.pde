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
    return false;
  }
  
}
