package com.bit.lib;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.lib.jdbc.ConnectionProvider;
import com.bit.lib.jdbc.JdbcUtil;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		//ccccccccccccccccccccccccccccccccc
		//test
	//db연동 test완료	
/*		try {
			Connection conn = ConnectionProvider.getConnection();
			
			PreparedStatement pstmt = null;
			// int resultCnt = 0;
			try {
				pstmt = conn.prepareStatement("insert into aa " + "values (?)");
				pstmt.setString(1, "kkk");
				
				// resultCnt = pstmt.executeUpdate();
				// return resultCnt;
				pstmt.executeUpdate();
			} finally {
			 JdbcUtil.close(pstmt);
			 JdbcUtil.close(conn);
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		
		
		
		
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}
