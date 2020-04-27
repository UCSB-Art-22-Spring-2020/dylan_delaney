int[] evens = new int[20];
int[] odds = new int[20];

void setup() {

  for (int i = 0; i < 20; i++) {
      evens[i] = 2 * i;
      odds[i] = 2 * i + 1;
  }
  
  println("evens");
  printArray(evens);
  
  println("odds");
  printArray(odds);
}
