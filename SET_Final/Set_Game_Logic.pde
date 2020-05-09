boolean sameColor(Card a, Card b, Card c) {
  if (allEqual(a, b, c)) {
    return true;
  }
  else if (a.sameColor(b) && b.sameColor(c)){
    return true;
  }
  else {
    return false;
  }
}

boolean sameShape(Card a, Card b, Card c) {
  if (allEqual(a, b, c)) {
    return true;
  }
  else if (a.sameShape(b) && b.sameShape(c)){
    return true;
  }
  else {
    return false;
  }
}

boolean sameFill(Card a, Card b, Card c) {
  if (allEqual(a, b, c)) {
    return true;
  }
  else if (a.sameFill(b) && b.sameFill(c)){
    return true;
  }
  else {
    return false;
  }
}

boolean sameCount(Card a, Card b, Card c) {
  if (allEqual(a, b, c)) {
    return true;
  }
  else if (a.sameCount(b) && b.sameCount(c)){
    return true;
  }
  else {
    return false;
  }
}

boolean diffColor(Card a, Card b, Card c) {
  if (allDifferent(a, b, c)) {
    return true;
  }
  else if (!a.sameColor(b) && !b.sameColor(c) && !a.sameColor(c)){
    return true;
  }
  else {
    return false;
  }
}

boolean diffShape(Card a, Card b, Card c) {
  if (allDifferent(a, b, c)) {
    return true;
  }
  else if (!a.sameShape(b) && !b.sameShape(c) && !a.sameShape(c)){
    return true;
  }
  else {
    return false;
  }
}

boolean diffFill(Card a, Card b, Card c) {
  if (allDifferent(a, b, c)) {
    return true;
  }
  else if (!a.sameFill(b) && !b.sameFill(c) && !a.sameFill(c)){
    return true;
  }
  else {
    return false;
  }
}

boolean diffCount(Card a, Card b, Card c) {
  if (allDifferent(a, b, c)) {
    return true;
  }
  else if (!a.sameCount(b) && !b.sameCount(c) && !a.sameCount(c)){
    return true;
  }
  else {
    return false;
  }
}  

boolean isSet(Card a, Card b, Card c) {
  if ((sameCount(a, b, c) || diffCount(a, b, c)) && (sameFill(a, b, c) || diffFill(a, b, c)) && (sameShape(a, b, c) || diffShape(a, b, c)) && (sameColor(a, b, c) || diffColor(a, b, c))) {
    return true;
  }
  else {
    return false;
  }
}

boolean allEqual(Card a, Card b, Card c) {
  if (a.sameColor(b) && b.sameColor(c) &&
  a.sameFill(b) && b.sameFill(c) &&
  a.sameShape(b) && b.sameShape(c) &&
  a.sameShape(b) && b.sameShape(c)) {
    return true;
  }
  else {
    return false;
  }
}

boolean allDifferent(Card a, Card b, Card c) {
  if (!a.sameColor(b) && !b.sameColor(c) && !a.sameColor(c) &&
  !a.sameFill(b) && !b.sameFill(c) && !a.sameFill(c) &&
  !a.sameShape(b) && !b.sameShape(c) && !a.sameShape(c) &&
  !a.sameCount(b) && !b.sameCount(c) && !a.sameCount(c) ) {
    return true;
  }
  else {
    return false;
  }
}
