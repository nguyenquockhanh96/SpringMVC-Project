/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.dao;
import java.io.Serializable;
import java.util.*;
import java.sql.*;
import poly.model.User;
//import com.hv.entity.Demo;
import java.io.Serializable;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import poly.model.Staffs;




@Repository
public class AccountDAO {

    /**
     * Inject từ <bean class="...JdbcTemplate>
     */
    @Autowired
    protected JdbcTemplate jdbc;

    /**
     * Truy vấn 1 thực thể theo mã
     *
     * @param id mã thực thể cần truy vấn
     * @return thực thể truy vấn được
     */
    public User getByUsername(Serializable Id) {
        String sql = "SELECT * FROM Users WHERE Id=?";
        return jdbc.queryForObject(sql, getRowMapper(), Id);
    }
    /**
     * Truy vấn tất cả các thực thể
     *
     * @return danh sách thực thể truy vấn được
     */
    //1. lấy danh sách các tài khoản
    public List<User> getAll() {
        String sql = "SELECT * FROM Users";
        return getBySql(sql);
    }

    /**
     * Truy vấn các thực thể theo câu lệnh sql
     *
     * @param sql câu lệnh truy vấn
     * @return danh sách thực thể truy vấn được
     */
    protected List<User> getBySql(String sql) {
        return jdbc.query(sql, getRowMapper()); //2. truy vấn danh sách các tài khoản lên
    }

    /**
     * Ánh xạ cấu trúc bản ghi theo thuộc tính của bean
     *
     * @return ánh xạ bản ghi theo thuộc tính bean
     */
    private RowMapper<User> getRowMapper() {
        return new BeanPropertyRowMapper<User>(User.class);
    }
    
    
    
    
    
    
    /**
     * Thêm mới 1 thực thể
     *
     * @param Account
     * @param acc là thực thể mới
     */
    public void insert(User acc) {
        String sql = "insert into Users(Id, Password, Fullname) VALUES (?,?,?)"; // câu sql thêm tài khoản 
        jdbc.update(sql, acc.getId(),acc.getPassword(), acc.getFullname());// thực hiện
    }

    /**
     * Cập nhật thực thể
     *
     * @param acc là thực thể cần cập nhật
     */
    public void update(User acc) {
        String sql = "UPDATE Users SET password=?, fullname=? WHERE Id=?";
        jdbc.update(sql, acc.getId(), acc.getPassword(), acc.getFullname());
    }

    /**
     * Xóa thực thể theo mã
     *
     * @param username mã thực thể cần xóa
     */
    public void delete(String Id) {
        String sql = "DELETE FROM Users WHERE Id=?"; // câu lệnh xóa tài khoản dựa vào username
        jdbc.update(sql, Id); // thực hiện
    }    

    
    ///////////////////////////////
    
    /**
     * Truy vấn thực thể theo tên
     *
     * @param username tên của thực thể cần truy vấn
     * @return danh sách thực thể truy vấn được
     */
    public List<User> getByName(String Id) {
         String sql = "SELECT * FROM Users WHERE Id LIKE ?"; // câu lệnh tìm kiếm dựa vào username
        return jdbc.query(sql, getRowMapper(), "%" + Id + "%"); // thực hiện 
    }

    }
