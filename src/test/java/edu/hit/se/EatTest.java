//package edu.hit.se;
//
//import javax.tools.JavaCompiler;
//import javax.tools.ToolProvider;
//import java.io.File;
//import java.lang.reflect.Method;
//
//public class EatTest {
//    public static void main(String []args){
//        File distDir = new File("src/main/java");
//        if (!distDir.exists()) {
//            distDir.mkdirs();
//        }
//
//        JavaCompiler javac = ToolProvider.getSystemJavaCompiler();
//        //JavaCompiler最核心的方法是run, 通过这个方法编译java源文件, 前3个参数传null时,
//        //分别使用标准输入/输出/错误流来 处理输入和编译输出. 使用编译参数-d指定字节码输出目录.
////            distDir = new File("src/main/java/edu/hit/se");
////            System.out.println(distDir.getAbsolutePath()+"\n"+ javaFile.getAbsolutePath());
//        String javaFileName = "Eat.java";
//        //生成的Java源文件存放到<module>/build/generated/source/java目录下  (开发工具为Android Studio, java-demo是我的module名称)
//        File sourceDir = new File("src/main/java/edu/hit/se");
//        File javaFile = new File(sourceDir, javaFileName);
//        int compileResult = javac.run(null, null, null, "-d", distDir.getAbsolutePath(), javaFile.getAbsolutePath());
//        //run方法的返回值: 0-表示编译成功, 否则表示编译失败
//        if(compileResult != 0) {
//            System.err.println("编译失败!!");
//            return;
//        }
//        try{
//            //动态执行 (反射执行)
////            Class klass = Class.forName("edu.hit.se.Temp");
////            Method evalMethod = klass.getMethod("call", String.class);
////            String result = (String) evalMethod.invoke(klass.newInstance(), "DSFJ");
////            System.out.println("eval(" + source + ") = " + result);
//            Class klass = Class.forName("edu.hit.se.Eat");
//            Object o=klass.newInstance();
//            Method evalMethod = klass.getMethod("setAddress", String.class);
//            evalMethod.setAccessible(true);
//            String s="DJFK";
//            String result = (String)evalMethod.invoke(klass.newInstance(),new Object[] {"myname"});
//            Method evalMethods = klass.getMethod("getAddress");
//            String results = (String)evalMethods.invoke(klass.newInstance());
//            System.out.println(results.length());
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//}


//This file is deprecated