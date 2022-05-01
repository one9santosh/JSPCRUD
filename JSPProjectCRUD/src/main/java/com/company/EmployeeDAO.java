package com.company;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//CRUD-C -creation of data -insert , R -retrival -select, U-update -update, D-delete -delete
public class EmployeeDAO {
	
	public int insertEmp(EmployeePOJO emp) throws ClassNotFoundException, SQLException {
		Connection con=EmployeeDbConn.getConn();
		String sql="insert into employee values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, emp.getEmpno());
		ps.setString(2,emp.getEmpname());
		ps.setString(3, emp.getEemail());
		return ps.executeUpdate();
	}
	
	
	public int updateEmp(EmployeePOJO emp) throws ClassNotFoundException, SQLException {
		Connection con=EmployeeDbConn.getConn();
		String sql=("update employee set empname=?,empemail=? where empid=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,emp.getEmpname());
		ps.setString(2, emp.getEemail());
		ps.setInt(3, emp.getEmpno());

		return ps.executeUpdate();
		
	}
	
	
	public int deleteEmp(EmployeePOJO emp) throws ClassNotFoundException, SQLException {
		Connection con=EmployeeDbConn.getConn();
		String sql=("delete from employee where empid=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, emp.getEmpno());
	
		return ps.executeUpdate();

		
	}
	
	public List<EmployeePOJO> display() throws ClassNotFoundException, SQLException{
		Connection con=EmployeeDbConn.getConn();
		List<EmployeePOJO> list=new ArrayList<EmployeePOJO>();
		String sql="select * from employee";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			EmployeePOJO pojo=new EmployeePOJO();
			pojo.setEmpno(rs.getInt(1));
			pojo.setEmpname(rs.getString(2));
			pojo.setEemail(rs.getString(3));
			list.add(pojo);
		}
		
		return list;
		
	}

}
