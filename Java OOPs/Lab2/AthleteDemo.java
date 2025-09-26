import java.util.Random;

class Athlete extends Thread {
    String name;
    int distanceCovered = 0;
    static volatile boolean hasWon = false; // volatile for thread visibility
    static Object lock = new Object(); // for synchronization
    Random rand = new Random();

    Athlete(String name) {
        this.name = name;
    }

    public void run() {
        for (int i = 0; i < 15; i++) {
            if (hasWon) break;

            int randomDistance = rand.nextInt(10) + 1;
            distanceCovered += randomDistance;

            System.out.println(name + " ran " + randomDistance + " meters. Total: " + distanceCovered);

            if (distanceCovered >= 100) {
                synchronized (lock) {
                    if (!hasWon) {
                        hasWon = true;
                        System.out.println(name + " has won the marathon! 🏆");
                    }
                }
                break;
            }

            try {
                Thread.sleep(100); // simulate time between runs
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}

public class AthleteDemo {
    public static void main(String[] args) {
        Thread[] athletes = new Thread[10];
        for (int i = 0; i < 10; i++) {
            athletes[i] = new Athlete("Athlete " + (i + 1));
            athletes[i].start();
        }
    }
}
