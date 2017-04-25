// Gear/star generator
// Uses a list comprehension taking a list of radii to generate a star shape
module Star(num, radii) {
  function r(a) = (floor(a / 10) % 2) ? 10 : 8;
  polygon([for (i=[0:num-1], a=i*360/num, r=radii[i%len(radii)]) [ r*cos(a), r*sin(a) ]]);
}
