package edu.hit.se;

import java.util.Vector;

public class SearchAllTest {
    public static void main(String[] args) {
        SearchAll searchAll = new SearchAll();
        searchAll.setKeyWord("2");
        searchAll.execute();
        Vector<String> pdoNameShot = searchAll.getPdoNameShot();
        Vector<Vector<String>> propertiesShot = searchAll.getPropertiesShot();
        Vector<Vector<Vector<String>>> infoShot = searchAll.getInfoShot();
        System.out.println(pdoNameShot);
        System.out.println(propertiesShot);
        System.out.println(infoShot);
        try {
            for (int i = 0; i < pdoNameShot.size(); i++) {
                System.out.println(pdoNameShot.elementAt(i) + "\n");
                System.out.println("<form id=\"form-0\" class=\"table table-striped table-bordered table-hover \">");
                System.out.println("<tr>");
                for (int j = 0; j < propertiesShot.elementAt(i).size(); j++) {
                    System.out.println("<th>" + propertiesShot.elementAt(i).elementAt(j) + "</th>");
//                System.out.println("<tbody>");
//                for(int k=0;k<infoShot.elementAt(i).elementAt(j).size();k++){
//                    System.out.println("<td>"+infoShot.elementAt(i).elementAt(j).elementAt(k)+"</td>");
//                }
                }
                System.out.println("</tr>");
                System.out.println(infoShot.elementAt(i).size());
                for (int j = 0; j < infoShot.elementAt(i).size(); j++) {
//                System.out.println("<th>"+propertiesShot.elementAt(i).elementAt(j)+"</th>");
//                System.out.println("<tbody>");

                    System.out.println("<tr>");
                    for (int k = 0; k < infoShot.elementAt(i).elementAt(0).size(); k++) {
                        System.out.println("<td>" + infoShot.elementAt(i).elementAt(j).elementAt(k) + "</td>");

                    }
                    System.out.println("<td><a href=\"GetRecordDetail.action?generateTime="+infoShot.elementAt(i).elementAt(j).elementAt(0)+"\">详情</a></td>\n" +
                            "        <td><a href=\"DeleteRecord.action?generateTime="+infoShot.elementAt(i).elementAt(j).elementAt(0)+"\">删除</a></td>\n" +
                            "        <td><a href=\"ReadyToUpdateRecord.action?generateTime="+infoShot.elementAt(i).elementAt(j).elementAt(0)+"\">更新</a></td>\n" +
                            "        <td><a href=\"Connect.action?generateTime="+infoShot.elementAt(i).elementAt(j).elementAt(0)+"\">建立关联</a></td>");

                    System.out.println("</tr>");
                }

                System.out.println("</form>\n");

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}