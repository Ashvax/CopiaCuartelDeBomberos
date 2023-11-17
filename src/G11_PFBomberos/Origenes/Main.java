package G11_PFBomberos.Origenes;


import G11_PFBomberos.Vistas.MainGestionBomberos;
import java.time.LocalDate;
import java.util.List;
import javax.swing.JFrame;

public class Main {

    public static void main(String[] args) {
        
          MainGestionBomberos miapp=new MainGestionBomberos();
          miapp.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
          miapp.setLocationRelativeTo(null);
          miapp.setVisible(true);
    }
}
