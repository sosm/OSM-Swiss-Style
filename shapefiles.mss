

#world {
  [zoom >= 0][zoom < 10] {
    polygon-fill: @land;
  }
}

#coast-poly {
  [zoom >= 10] {
    polygon-fill: @land;
  }
}

