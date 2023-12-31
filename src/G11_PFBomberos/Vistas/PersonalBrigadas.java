package G11_PFBomberos.Vistas;


import G11_PFBomberos.AccesoADatos.BomberoData;
import G11_PFBomberos.AccesoADatos.BrigadaData;
import G11_PFBomberos.AccesoADatos.CuartelData;
import G11_PFBomberos.Entidades.Bombero;
import G11_PFBomberos.Entidades.Brigada;
import G11_PFBomberos.Entidades.Cuartel;
import java.awt.Color;
import java.util.ArrayList;
import java.util.List;
import javax.swing.table.DefaultTableModel;

public class PersonalBrigadas extends javax.swing.JInternalFrame {

    private Brigada brigada = new Brigada();
    private BrigadaData brigadaData = new BrigadaData();
    private List<Brigada> listarBrigada = brigadaData.ListarBrigada();

    private Bombero bombero = new Bombero();
    private BomberoData bomberoData = new BomberoData();
    private List<Bombero> listarBombero = bomberoData.ListarBomberos();

    private Cuartel cuartel = new Cuartel();
    private CuartelData cuartelData = new CuartelData();
    private List<Cuartel> listarCuartel = cuartelData.ListarCuarteles();

    private DefaultTableModel modelo = new DefaultTableModel();

    public PersonalBrigadas() {
        initComponents();
        llenarComboBox();
        armarCabeceras();
        cambiarColor();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        JCBPersonalEnBrigada = new javax.swing.JComboBox<>();
        jLabel3 = new javax.swing.JLabel();
        JBSalir = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        JTablaBomberos = new javax.swing.JTable();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setTitle("Personal en Brigadas");

        JCBPersonalEnBrigada.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                JCBPersonalEnBrigadaActionPerformed(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Tahoma", 3, 12)); // NOI18N
        jLabel3.setText("Elegir la Brigada para ver el personal ");

        JBSalir.setFont(new java.awt.Font("Tahoma", 3, 12)); // NOI18N
        JBSalir.setIcon(new javax.swing.ImageIcon(getClass().getResource("/G11_PFBomberos/Imagenes/JBSalir.png.jpg"))); // NOI18N
        JBSalir.setText("Salir");
        JBSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                JBSalirActionPerformed(evt);
            }
        });

        JTablaBomberos.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null, null}
            },
            new String [] {
                "ID Bombero", "Nombre", "Apellido", "DNI", "Fecha Nacimiento", "Grupo Sanguineo", "ID Brigada", "Celular", "Estado", "Nombre Clave"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.Integer.class, java.lang.String.class, java.lang.Boolean.class, java.lang.String.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        jScrollPane2.setViewportView(JTablaBomberos);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 840, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(JCBPersonalEnBrigada, javax.swing.GroupLayout.PREFERRED_SIZE, 670, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(363, 363, 363)
                        .addComponent(JBSalir, javax.swing.GroupLayout.PREFERRED_SIZE, 116, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(24, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(JCBPersonalEnBrigada, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(JBSalir)
                .addContainerGap(43, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void JBSalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_JBSalirActionPerformed
        this.dispose();
    }//GEN-LAST:event_JBSalirActionPerformed

    private void JCBPersonalEnBrigadaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_JCBPersonalEnBrigadaActionPerformed
        Brigada brig = (Brigada) JCBPersonalEnBrigada.getSelectedItem();
        if (brig != null) {
            llenarTabla(brig);
        }
    }//GEN-LAST:event_JCBPersonalEnBrigadaActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton JBSalir;
    private javax.swing.JComboBox<Brigada> JCBPersonalEnBrigada;
    private javax.swing.JTable JTablaBomberos;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JScrollPane jScrollPane2;
    // End of variables declaration//GEN-END:variables

    private void llenarComboBox() {
        JCBPersonalEnBrigada.removeAllItems();

        for (Brigada listarBrigada : listarBrigada) {
            JCBPersonalEnBrigada.addItem(listarBrigada);
        }
    }

    private void armarCabeceras() {
        modelo.setColumnCount(0);

        modelo.addColumn("ID Bombero");
        modelo.addColumn("Nombre");
        modelo.addColumn("Apellido");
        modelo.addColumn("DNI");
        modelo.addColumn("Fecha de Nacimiento");
        modelo.addColumn("Grupo Sanguineo");
        modelo.addColumn("ID Brigada");
        modelo.addColumn("Celular");
        modelo.addColumn("Estado");
        modelo.addColumn("Nombre Clave");

        JTablaBomberos.setModel(modelo);
    }

    private void llenarTabla(Brigada brigada) {
        if (brigada != null) {
            modelo.setRowCount(0);
            List<Bombero> bomberos = bomberoData.ListarBomberosPorBrigada(brigada.getId_brigada());

            for (Bombero bombero : bomberos) {
                modelo.addRow(new Object[]{
                    bombero.getId_bombero(),
                    bombero.getNombre(),
                    bombero.getApellido(),
                    bombero.getDni(),
                    bombero.getFecha_nacimiento(),
                    bombero.getGrupo_sanguineo(),
                    bombero.getBrigada().getId_brigada(),
                    bombero.getCelular(),
                    bombero.isEstado(),
                    bombero.getNombre_clave()
                });
            }
        }
    }

    private void cambiarColor() {

        this.getContentPane().setBackground(new Color(74, 84, 89));

        jLabel3.setForeground(new Color(200, 214, 214));

        JBSalir.setBackground(new Color(74, 84, 89));
        JBSalir.setForeground(new Color(200, 214, 214));

    }

}
