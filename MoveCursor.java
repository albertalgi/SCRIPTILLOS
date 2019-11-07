import java.awt.*;
import java.util.Random;

public class MoveCursor {
    public static void main(String[] args) {
        int i =-1;
                        
        //Obtenim la mida de la pantallqa principal
        GraphicsDevice gd = GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice();
        int width = gd.getDisplayMode().getWidth();
        int height = gd.getDisplayMode().getHeight();
        while(i < 1000000) {
            i++;
            try {
                //Ho fem aleatori
                Random rand = new Random();
                int alcadaRandom = rand.nextInt(height);
                int ampladaRandom = rand.nextInt(width);

                // These coordinates are screen coordinates
                int xCoord = alcadaRandom;
                int yCoord = ampladaRandom;
            
                // Move the cursor
                Robot robot = new Robot();
                robot.mouseMove(xCoord, yCoord);
                } catch (AWTException e) {
                    e.printStackTrace();
                }
                System.out.println(i);
        }
    }

}