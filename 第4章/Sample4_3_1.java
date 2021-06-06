public class Sample4_3_1 {
  public static void main(String[] args) {
    int numbers[] = {2, 3, 5, 7};
    int sum = 0;
    for (int i = 0; i < numbers.length; i++) {
      sum += numbers[i];
    }
    int numbers2[] = {12, 23, 34, 45, 56};
    int sum2 = 0;
    for (int n: numbers2) {
      sum2 += n;
    }
    System.out.println(sum);
    System.out.println(sum2);
  }
}
