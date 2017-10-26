/**   
 * @Title: Test.java
 * @Package test
 * @Description: TODO(用一句话描述该文件做什么)
 * @author HanGX  
 * @date 2017年10月24日 下午12:44:51
 * @version V1.0   
 */

import static org.junit.Assert.*;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

/**   
  * @ClassName: Test
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月24日 下午12:44:51  
  * @desc:  
  * @version: v1.0    
  */

public class Test {

	@org.junit.Test
	public void test() {
		File file=new File("E:\\PageHelper.png");
		String fileName=file.getName();
		//System.out.println(fileName);
		String fileType=fileName.substring(fileName.lastIndexOf("."),fileName.length());
		System.err.println(fileType);
		
		List<String> type=new ArrayList<String>();
		type.add(".jpg");
		type.add(".png");
		type.add(".gif");
		
		System.out.println(type);
		if(type.contains(fileType)) {
			System.out.println("true");
		}else {
			System.out.println(false);
		}
		long size=file.length();
		System.out.println(size);
		if(size>10240) {
			System.out.println("大了");
		}else {
			System.out.println("小了");
		}
		
		String test="ABC34cccddee";
	    System.out.println(test.toLowerCase());
	    
	    String test1="ABC34cccddee";
	    System.out.println(test1.toUpperCase());//小写转大写
	}

}
  
    