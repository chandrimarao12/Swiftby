package p3;

import java.sql.Connection;
import java.sql.PreparedStatement;

import p2.Item;

public class ItemDi implements ItemD{

	
	private Connection conn;
	
	
	public ItemDi(Connection conn) {
		super();
		this.conn = conn;
	}
	@Override
	public boolean ItemAdd(Item i) {
		boolean f=false;
		try {
			String sql="insert into items(iname,email,price) values(?,?,?)";
			System.out.println("3");
			PreparedStatement ps=conn.prepareStatement(sql);
			System.out.println("0");
			ps.setString(1, i.getIname());
			ps.setString(2, i.getPrice());
			ps.setString(3, i.getimg());
			System.out.println("1");
			
			int a=ps.executeUpdate();
			System.out.println("added");
			if (a==1) {
				f=true;

			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}

		
		return false;
	}
	

}
