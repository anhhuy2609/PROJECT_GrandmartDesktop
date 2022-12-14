/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package GUI;

import BUS.MakeStatistic_BUS;
import DTO.Employee_DTO;
import DTO.Statictis_DTO;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author DELL
 */
public class SoldPro_Each extends javax.swing.JFrame {

    /**
     * Creates new form MakeStatisticsOfSoldPro
     */
    ArrayList<Statictis_DTO> list = new ArrayList<>();
    MakeStatistic_BUS busMakeStatistic = new MakeStatistic_BUS();    
    Employee_DTO dtoStorekeeper = null;
    public SoldPro_Each(Employee_DTO storekeeper) {
        initComponents();
        dtoStorekeeper = storekeeper;
        setResizable(false);
        setLocationRelativeTo(null);   
        createTable();
    }
    DefaultTableModel tblStatisticsModel;
    public void createTable(){
        tblStatisticsModel = new DefaultTableModel();
        //Tạo bảng
        String title[] = {"Product ID", "Product name","Unit price","Amount","Total money"};
        tblStatisticsModel.setColumnIdentifiers(title);
        tblStatisticsModel.setRowCount(0);
        tblStatistics.setModel(tblStatisticsModel);
        //cho phép sắp xếp từng cột
        tblStatistics.setAutoCreateRowSorter(true);
        //không cho sửa dữ liệu trong bảng
        tblStatistics.setEnabled(false); 
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
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        btn_turnback = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        dcStartDate = new com.toedter.calendar.JDateChooser();
        jLabel17 = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        dcEndDate = new com.toedter.calendar.JDateChooser();
        jLabel19 = new javax.swing.JLabel();
        txtProID = new javax.swing.JTextField();
        jPanel3 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        btn_MakeStatistics = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblStatistics = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Make Statistics Of Sold Product (Each Product)");
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(0, 204, 255));
        jPanel1.setPreferredSize(new java.awt.Dimension(810, 122));

        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/GUI/Images/10 - sold product icon - 1.png"))); // NOI18N

        jLabel6.setFont(new java.awt.Font("Tahoma", 0, 28)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(255, 255, 255));
        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel6.setText("MAKE STATISTICS OF EACH PRODUCT");

        btn_turnback.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btn_turnback.setText("Turn back");
        btn_turnback.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_turnbackActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 114, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 510, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btn_turnback, javax.swing.GroupLayout.PREFERRED_SIZE, 176, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(28, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addComponent(btn_turnback, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(27, Short.MAX_VALUE))
            .addComponent(jLabel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 840, 130));

        jPanel2.setBackground(new java.awt.Color(239, 250, 252));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        dcStartDate.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.add(dcStartDate, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 80, 200, 30));

        jLabel17.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel17.setText("Product ID:");
        jPanel2.add(jLabel17, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 30, 100, 30));

        jLabel18.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel18.setText("End date:");
        jPanel2.add(jLabel18, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 80, 80, 30));

        dcEndDate.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.add(dcEndDate, new org.netbeans.lib.awtextra.AbsoluteConstraints(440, 80, 200, 30));

        jLabel19.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel19.setText("Start date:");
        jPanel2.add(jLabel19, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 80, 90, 30));

        txtProID.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jPanel2.add(txtProID, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 30, 230, 30));

        jPanel3.setBackground(new java.awt.Color(239, 252, 250));
        jPanel3.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Make statistics");
        jPanel3.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 140, 80));

        btn_MakeStatistics.setBackground(new java.awt.Color(51, 204, 255));
        btn_MakeStatistics.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btn_MakeStatistics.setForeground(new java.awt.Color(255, 255, 255));
        btn_MakeStatistics.setBorder(null);
        btn_MakeStatistics.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_MakeStatisticsActionPerformed(evt);
            }
        });
        jPanel3.add(btn_MakeStatistics, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 140, 80));

        jPanel2.add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(680, 30, -1, 80));

        tblStatistics.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(tblStatistics);

        jPanel2.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 190, 800, 150));

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 130, 840, 420));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_turnbackActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_turnbackActionPerformed
        // TODO add your handling code here:
        int ret = JOptionPane.showConfirmDialog(null, "Confirm", "Do you want to turn back?", JOptionPane.YES_NO_OPTION);
        if(ret == JOptionPane.YES_OPTION)
        {
            setVisible(false);
            MakeStatisticsOfSoldPro pro = new MakeStatisticsOfSoldPro(dtoStorekeeper);
            pro.setVisible(true);
        }
    }//GEN-LAST:event_btn_turnbackActionPerformed

    private void btn_MakeStatisticsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_MakeStatisticsActionPerformed
        // TODO add your handling code here:
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        if(dcStartDate.getCalendar() == null || dcEndDate.getCalendar()==null||txtProID.getText().equals("")||!txtProID.getText().matches("[0-9]*"))
            JOptionPane.showMessageDialog(this, "Wrong data, please check and enter again", "Please enter again!", JOptionPane.ERROR_MESSAGE);
        else if(sdf.format(dcStartDate.getDate().getTime()).compareTo(sdf.format(dcEndDate.getDate().getTime()))==1){
            JOptionPane.showMessageDialog(this, "Invalid data", "Please enter product id!", JOptionPane.ERROR_MESSAGE);
         }
        else{
            tblStatisticsModel.setRowCount(0);
            list = busMakeStatistic.getEachProductForMakeStatisticsSold(Integer.parseInt(txtProID.getText()), sdf.format(dcStartDate.getDate()), sdf.format(dcEndDate.getDate()));
            //Load employee information into the table
            for(int i = 0; i < list.size(); i++){
                Statictis_DTO dtoStatistics = list.get(i);
                String[] rows = {String.valueOf(dtoStatistics.getPro_id()),dtoStatistics.getName(),String.valueOf(dtoStatistics.getSale_price()), String.valueOf(dtoStatistics.getAmount()), String.valueOf(dtoStatistics.getTotalSoldPro())}; 
                tblStatisticsModel.addRow(rows);
            }
            if(tblStatisticsModel.getRowCount() < 1){
                JOptionPane.showMessageDialog(this, "No match result.", "Error", JOptionPane.ERROR_MESSAGE);
            }
        }
    }//GEN-LAST:event_btn_MakeStatisticsActionPerformed

    /**
     * @param args the command line arguments
     */


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_MakeStatistics;
    private javax.swing.JButton btn_turnback;
    private com.toedter.calendar.JDateChooser dcEndDate;
    private com.toedter.calendar.JDateChooser dcStartDate;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tblStatistics;
    private javax.swing.JTextField txtProID;
    // End of variables declaration//GEN-END:variables
}
