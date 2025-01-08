package aplikasi_warung_podomoro;
import java.awt.Frame;
import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet; 
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class loginyoba extends javax.swing.JFrame {
    Profile p;

    /**
     * Creates new form loginyoba
     */
    public loginyoba() {
        initComponents();
    }
     public loginyoba(Profile P) {
        initComponents();
        this.p = P;
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txtusername = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        txtpassword = new javax.swing.JPasswordField();
        btnlogin = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        jPanel1.setBackground(new java.awt.Color(0, 0, 0));
        jPanel1.setLayout(new java.awt.GridBagLayout());

        jPanel2.setBackground(new java.awt.Color(0, 0, 0));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("username");
        jPanel2.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, -1, -1));

        txtusername.setBackground(new java.awt.Color(0, 0, 0));
        txtusername.setForeground(new java.awt.Color(255, 255, 255));
        txtusername.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(255, 51, 0)));
        txtusername.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtusernameActionPerformed(evt);
            }
        });
        jPanel2.add(txtusername, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 40, 300, 30));

        jLabel2.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setText("password");
        jPanel2.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 80, -1, -1));

        txtpassword.setBackground(new java.awt.Color(0, 0, 0));
        txtpassword.setForeground(new java.awt.Color(255, 255, 255));
        txtpassword.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(255, 51, 51)));
        txtpassword.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtpasswordActionPerformed(evt);
            }
        });
        jPanel2.add(txtpassword, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 110, 300, 30));

        btnlogin.setBackground(new java.awt.Color(0, 0, 0));
        btnlogin.setForeground(new java.awt.Color(255, 255, 255));
        btnlogin.setText("Login");
        btnlogin.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(255, 51, 0)));
        btnlogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnloginActionPerformed(evt);
            }
        });
        jPanel2.add(btnlogin, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 160, 80, 30));

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 14;
        gridBagConstraints.ipady = 8;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(6, 100, 47, 0);
        jPanel1.add(jPanel2, gridBagConstraints);

        jLabel3.setFont(new java.awt.Font("Algerian", 1, 60)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 51, 0));
        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel3.setText("PODOMORO");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(7, 100, 0, 98);
        jPanel1.add(jLabel3, gridBagConstraints);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btnloginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnloginActionPerformed
            logindong();
//        String user = txtusername.getText();
//        String pass = new String(txtpassword.getPassword());
//        
//        try{
////            Connection K = Koneksi.Go();
////            Statement S = K.createStatement();            
////            String Q = "SELECT * FROM `users` WHERE username='"+user+"' AND password='"+pass+"';";
////            ResultSet R = S.executeQuery(Q);
////            int count = 0;
////            Profile P = new Profile();
////            while (R.next()) {                 
////                P.setId(R.getInt("id_id_user")); 
////                P.setusername(R.getString("ussername")); 
////                P.setpassword(R.getString("password")); 
////                P.setnama_user(R.getString("nama_user")); 
////                P.setlevel_id(R.getString("level_id")); 
////                count++;           
////          }
//
//         Connection K = Koneksi.Go();
//            String Q = "SELECT * FROM `tb_user` WHERE username=? AND password=?;";
//            PreparedStatement S = K.prepareStatement(Q);
//            S.setString(1, user);
//            S.setString(2, pass);
//            ResultSet R = S.executeQuery();
//            int count = 0;
//            Profile P = new Profile();
//            while (R.next()) {                 
//                P.setId(R.getInt("id_user")); 
//                P.setFullname(R.getString("fullname")); 
//                P.setUsername(R.getString("username")); 
//                P.setPassword(R.getString("password")); 
//                P.setLevel(R.getString("level_id")); 
//                count++;
//            }
//            
//            if(count > 0){
//                //JOptionPane.showMessageDialog(this, "Sukses Login");
//                if(P.getLevel().equals("kasir")){
//                    casirpage O = new casirpage();
//                    O.setExtendedState(Frame.MAXIMIZED_BOTH);
//                    this.setVisible(false); 
//                    O.setVisible(true);
//                }else if(P.getLevel().equals("owner")){
//                    ownerpage O = new ownerpage(P);
//                    O.setExtendedState(Frame.MAXIMIZED_BOTH);
//                    this.setVisible(false);
//                    O.setVisible(true);
//                }else if(P.getLevel().equals("admin")) {
//                    adminpage O = new adminpage(P);
//                    O.setExtendedState(Frame.MAXIMIZED_BOTH);
//                    this.setVisible(false);
//                    O.setVisible(true);
//             }
//            }else{
//                JOptionPane.showMessageDialog(this, "Invalid username/password");
//                txtusername.requestFocus();
//            }
//            
//        } catch (HeadlessException | SQLException e) {
//            System.err.println(e.getMessage());
//        }
           
        
      
         
    }//GEN-LAST:event_btnloginActionPerformed

    private void txtpasswordActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtpasswordActionPerformed
        // TODO add your handling code here:
        logindong();
    }//GEN-LAST:event_txtpasswordActionPerformed

    private void txtusernameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtusernameActionPerformed
        // TODO add your handling code here:
        txtpassword.requestFocus();
    }//GEN-LAST:event_txtusernameActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(loginyoba.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(loginyoba.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(loginyoba.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(loginyoba.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new loginyoba().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnlogin;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPasswordField txtpassword;
    private javax.swing.JTextField txtusername;
    // End of variables declaration//GEN-END:variables
    private void logindong(){
        String user = txtusername.getText();
        String pass = new String(txtpassword.getPassword());
        
        try{
//            Connection K = Koneksi.Go();
//            Statement S = K.createStatement();            
//            String Q = "SELECT * FROM `users` WHERE username='"+user+"' AND password='"+pass+"';";
//            ResultSet R = S.executeQuery(Q);
//            int count = 0;
//            Profile P = new Profile();
//            while (R.next()) {                 
//                P.setId(R.getInt("id_id_user")); 
//                P.setusername(R.getString("ussername")); 
//                P.setpassword(R.getString("password")); 
//                P.setnama_user(R.getString("nama_user")); 
//                P.setlevel_id(R.getString("level_id")); 
//                count++;           
//          }

         Connection K = Koneksi.Go();
            String Q = "SELECT * FROM `tb_user` WHERE username=? AND password=?;";
            PreparedStatement S = K.prepareStatement(Q);
            S.setString(1, user);
            S.setString(2, pass);
            ResultSet R = S.executeQuery();
            int count = 0;
            Profile P = new Profile();
            while (R.next()) {                 
                P.setId(R.getInt("id_user")); 
                P.setFullname(R.getString("fullname")); 
                P.setUsername(R.getString("username")); 
                P.setPassword(R.getString("password")); 
                P.setLevel(R.getString("level_id")); 
                count++;
            }
            
            if(count > 0){
                //JOptionPane.showMessageDialog(this, "Sukses Login");
                if(P.getLevel().equals("kasir")){
                    Kasir O = new Kasir(P);
                    O.setExtendedState(Frame.MAXIMIZED_BOTH);
                    this.setVisible(false); 
                    O.setVisible(true);
                }else if(P.getLevel().equals("owner")){                                                           
                    OwnerPage O = new OwnerPage(P);
                    O.setExtendedState(Frame.MAXIMIZED_BOTH);
                    this.setVisible(false);
                    O.setVisible(true);
                }else if(P.getLevel().equals("admin")) {
                    adminpage O = new adminpage(P);
                    O.setExtendedState(Frame.MAXIMIZED_BOTH);
                    this.setVisible(false);
                    O.setVisible(true);
             }
            }else{
                JOptionPane.showMessageDialog(this, "Invalid username/password");
                txtusername.requestFocus();
            }
            
        } catch (HeadlessException | SQLException e) {
            System.err.println(e.getMessage());
        }
    }
}
