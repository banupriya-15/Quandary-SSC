
int isPrime(int x) {
  /*if (x != 2 && isOdd(x) == 0) return 0;*/
  mutable int i = 2;
  while (i < x) {
    if (isNil(divides(x, i)) == 0)
      return 0;
    i = i + 1;
  }
  return 1;
}

Q main(int arg) {
  mutable int n = arg;
  mutable Ref list = nil;
  while (n > 1) {
    if (isPrime(n) != 0)
      list = n . list;
    n = n - 1;
  }
  return list . length(list);
}

int length(Ref c) {
  if (isAtom(c) != 0) return 0;
  return 1 + length((Ref)right(c));
}

Q divides(mutable int x, int y) {
  while (x > 0) {
    x = x - y;
  }
  if (x == 0) {
    return nil . nil;
  }
  return nil;
}
