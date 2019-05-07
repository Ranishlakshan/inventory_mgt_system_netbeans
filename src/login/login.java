/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import com.sun.glass.events.KeyEvent;
import java.awt.Toolkit;
import java.sql.*;
import javax.swing.*;
import java.awt.event.WindowEvent;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author user
 */
public class login extends javax.swing.JFrame {
    
    
    /**
     * Creates new form login
     */
    public login() {
        initComponents();
    }
    public Connection getConnection(){
        Connection con = null;
        
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockmgt","root","");
            //JOptionPane.showMessageDialog(null, "connected");
            return con;
        } catch (SQLException ex) {
            Logger.getLogger(add_item.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "not connected");
            return null;
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        labelusername = new javax.swing.JLabel();
        labelpassword = new javax.swing.JLabel();
        txtusername = new javax.swing.JTextField();
        txtpassword = new javax.swing.JPasswordField();
        btnlogin = new javax.swing.JButton();
        btnclear = new javax.swing.JButton();
        btnexit = new javax.swing.JButton();
        labelusername1 = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        jSeparator2 = new javax.swing.JSeparator();
        jPanel2 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(34, 45, 67));
        jPanel1.setLayout(null);

        labelusername.setFont(new java.awt.Font("Century Gothic", 0, 36)); // NOI18N
        labelusername.setForeground(new java.awt.Color(204, 204, 204));
        labelusername.setText("Log In");
        jPanel1.add(labelusername);
        labelusername.setBounds(170, 30, 160, 50);

        labelpassword.setFont(new java.awt.Font("Century Gothic", 0, 20)); // NOI18N
        labelpassword.setForeground(new java.awt.Color(204, 204, 204));
        labelpassword.setText("Password    :");
        jPanel1.add(labelpassword);
        labelpassword.setBounds(40, 230, 160, 50);

        txtusername.setBackground(new java.awt.Color(34, 45, 67));
        txtusername.setFont(new java.awt.Font("Century Gothic", 0, 18)); // NOI18N
        txtusername.setForeground(new java.awt.Color(255, 255, 255));
        txtusername.setBorder(null);
        txtusername.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtusernameActionPerformed(evt);
            }
        });
        jPanel1.add(txtusername);
        txtusername.setBounds(40, 170, 340, 40);

        txtpassword.setBackground(new java.awt.Color(34, 45, 67));
        txtpassword.setFont(new java.awt.Font("Century Gothic", 0, 18)); // NOI18N
        txtpassword.setForeground(new java.awt.Color(255, 255, 255));
        txtpassword.setBorder(null);
        txtpassword.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtpasswordActionPerformed(evt);
            }
        });
        txtpassword.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtpasswordKeyPressed(evt);
            }
        });
        jPanel1.add(txtpassword);
        txtpassword.setBounds(40, 270, 340, 40);

        btnlogin.setBackground(new java.awt.Color(97, 212, 195));
        btnlogin.setFont(new java.awt.Font("Century Gothic", 0, 24)); // NOI18N
        btnlogin.setText("Log In");
        btnlogin.setActionCommand("btnlogin");
        btnlogin.setBorder(null);
        btnlogin.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        btnlogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnloginActionPerformed(evt);
            }
        });
        jPanel1.add(btnlogin);
        btnlogin.setBounds(330, 350, 110, 40);

        btnclear.setBackground(new java.awt.Color(97, 212, 195));
        btnclear.setFont(new java.awt.Font("Century Gothic", 0, 24)); // NOI18N
        btnclear.setText("Clear");
        btnclear.setActionCommand("btnclear");
        btnclear.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnclearActionPerformed(evt);
            }
        });
        jPanel1.add(btnclear);
        btnclear.setBounds(180, 350, 120, 39);

        btnexit.setBackground(new java.awt.Color(97, 212, 195));
        btnexit.setFont(new java.awt.Font("Century Gothic", 0, 24)); // NOI18N
        btnexit.setText("Exit");
        btnexit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnexitActionPerformed(evt);
            }
        });
        jPanel1.add(btnexit);
        btnexit.setBounds(40, 350, 110, 39);

        labelusername1.setFont(new java.awt.Font("Century Gothic", 0, 20)); // NOI18N
        labelusername1.setForeground(new java.awt.Color(204, 204, 204));
        labelusername1.setText("User Name :");
        jPanel1.add(labelusername1);
        labelusername1.setBounds(40, 130, 160, 40);
        jPanel1.add(jSeparator1);
        jSeparator1.setBounds(40, 310, 340, 40);
        jPanel1.add(jSeparator2);
        jSeparator2.setBounds(40, 210, 340, 40);

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 0, 480, 430));

        jPanel2.setBackground(new java.awt.Color(97, 212, 195));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel2.setFont(new java.awt.Font("Century Gothic", 0, 36)); // NOI18N
        jLabel2.setForeground(java.awt.Color.white);
        jLabel2.setText("Center");
        jPanel2.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 200, 170, 60));

        jLabel3.setFont(new java.awt.Font("Century Gothic", 0, 36)); // NOI18N
        jLabel3.setForeground(java.awt.Color.white);
        jLabel3.setText("Metro Trade ");
        jPanel2.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 140, 250, 60));

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 360, 430));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txtpasswordActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtpasswordActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtpasswordActionPerformed

    private void btnloginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnloginActionPerformed
        try{
                Connection con = getConnection();
                
                String sql = "select * from login where username=? and password=?";
                String sql1 = "select * from admin_login where username=? and password=?";
                PreparedStatement pst = con.prepareStatement(sql);
                PreparedStatement pst1 = con.prepareStatement(sql1);
                pst.setString(1,txtusername.getText());
                pst.setString(2,getMd5(txtpassword.getText()));
                
                pst1.setString(1,txtusername.getText());
                pst1.setString(2,getMd5(txtpassword.getText()));
                
                
                ResultSet rs = pst.executeQuery();
                ResultSet rs1 = pst1.executeQuery();
                
                if(rs1.next()){
                    close();
                    main mainpage = new main();
                    mainpage.setVisible(true);
                }
                else if(rs.next()){
                    close();
                    mainuser mainpage = new mainuser();
                    mainpage.setVisible(true);
                }
                //////////////////////////////////
                
                
                ///////////////////////////////////
                else{
                    JOptionPane.showMessageDialog(null, "Incorrect Password.Try again");
                    txtusername.setText(null);
                    txtpassword.setText(null);
                }
                
                //com.mysql.jdbc.PreparedStatement ps = (com.mysql.jdbc.PreparedStatement) con.prepareStatement("update products set price = '"+ans+"'where id ='"+value0+"'  ");
                
                
                //ps.executeUpdate();
                
           
        }
        catch(Exception ex){
                JOptionPane.showMessageDialog(null, ex.getMessage());
            }
    }//GEN-LAST:event_btnloginActionPerformed

    private void btnclearActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnclearActionPerformed
        txtusername.setText(null);
        txtpassword.setText(null);
    }//GEN-LAST:event_btnclearActionPerformed

    private void btnexitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnexitActionPerformed
        System.exit(0);
    }//GEN-LAST:event_btnexitActionPerformed

    private void txtusernameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtusernameActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtusernameActionPerformed

    private void txtpasswordKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtpasswordKeyPressed
        // TODO add your handling code here:
        if( evt.getKeyCode() == KeyEvent.VK_ENTER ){
            try{
                Connection con = getConnection();
                
                String sql = "select * from login where username=? and password=?";
                String sql1 = "select * from admin_login where username=? and password=?";
                PreparedStatement pst = con.prepareStatement(sql);
                PreparedStatement pst1 = con.prepareStatement(sql1);
                pst.setString(1,txtusername.getText());
                pst.setString(2,getMd5(txtpassword.getText()));
                
                pst1.setString(1,txtusername.getText());
                pst1.setString(2,getMd5(txtpassword.getText()));
                
                
                ResultSet rs = pst.executeQuery();
                ResultSet rs1 = pst1.executeQuery();
                
                if(rs1.next()){
                    close();
                    main mainpage = new main();
                    mainpage.setVisible(true);
                }
                else if(rs.next()){
                    close();
                    mainuser mainpage = new mainuser();
                    mainpage.setVisible(true);
                }
                //////////////////////////////////
                
                
                ///////////////////////////////////
                else{
                    JOptionPane.showMessageDialog(null, "Incorrect Password.Try again");
                    txtusername.setText(null);
                    txtpassword.setText(null);
                }
                
                //com.mysql.jdbc.PreparedStatement ps = (com.mysql.jdbc.PreparedStatement) con.prepareStatement("update products set price = '"+ans+"'where id ='"+value0+"'  ");
                
                
                //ps.executeUpdate();
                
           
        }
        catch(Exception ex){
                JOptionPane.showMessageDialog(null, ex.getMessage());
            }
        }
        
    }//GEN-LAST:event_txtpasswordKeyPressed

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
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        
        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new login().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnclear;
    private javax.swing.JButton btnexit;
    private javax.swing.JButton btnlogin;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JLabel labelpassword;
    private javax.swing.JLabel labelusername;
    private javax.swing.JLabel labelusername1;
    private javax.swing.JPasswordField txtpassword;
    private javax.swing.JTextField txtusername;
    // End of variables declaration//GEN-END:variables

    public void close() {
        WindowEvent winClosingEvent = new WindowEvent(this,WindowEvent.WINDOW_CLOSING);
        Toolkit.getDefaultToolkit().getSystemEventQueue().postEvent(winClosingEvent);
    }
    public static String getMd5(String input) 
    { 
        try { 
  
            // Static getInstance method is called with hashing MD5 
            MessageDigest md = MessageDigest.getInstance("MD5"); 
  
            // digest() method is called to calculate message digest 
            //  of an input digest() return array of byte 
            byte[] messageDigest = md.digest(input.getBytes()); 
  
            // Convert byte array into signum representation 
            BigInteger no = new BigInteger(1, messageDigest); 
  
            // Convert message digest into hex value 
            String hashtext = no.toString(16); 
            while (hashtext.length() < 32) { 
                hashtext = "0" + hashtext; 
            } 
            return hashtext; 
        }  
  
        // For specifying wrong message digest algorithms 
        catch (NoSuchAlgorithmException e) { 
            throw new RuntimeException(e); 
        } 
    }
}
