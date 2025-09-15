import java.util.Scanner;

public class Tennis{
    public static void main(String[] args)
    {
        Scanner input = new Scanner(System.in);

        System.out.println("There are 5 Sets");
        

        int[] playerOne = new int[5];
        int[] playerTwo = new int[5];

        int P1Score = 0;
        int P2Score = 0;
        int Tie = 0;

        for (int i = 0; i < 5; i++)
        {
            System.out.print("Enter Score for Player 1 Set-" + (i + 1) + ": ");
            String score1 = input.nextLine();

            System.out.print("Enter Score for Player 2 Set-" + (i + 1) + ": ");
            String score2 = input.nextLine();

            if ((!score1.matches("\\d+")) || (!score2.matches("\\d+")))
            {
                System.out.println("Enter Valid integer");
                return;
            }
            else
            {
                playerOne[i] = Integer.parseInt(score1);
                playerTwo[i] = Integer.parseInt(score2);
                if (playerOne[i] > 7 || playerTwo[i] > 7)
                {
                    playerOne[i] = 0;
                    playerTwo[i] = 0;
                }
            }
            
        }
        for(int i = 0; i < 5; i++)
        {
            if(playerOne[i] > playerTwo[i])
            {
                P1Score++;
            }
            else if (playerOne[i] < playerTwo[i])
            {
                P2Score++;
            }
            else
            {
                Tie++;
            }
        }
        System.out.println("````Summary````");
        System.out.println("Player 1 won total Sets: " + P1Score);
        System.out.println("Player 2 won total Sets: " + P2Score);
        System.out.println("Ties: " + Tie);
        System.out.println("Won :" + (P1Score > P2Score ? "Player 1 " : "Player 2"));
    }
}