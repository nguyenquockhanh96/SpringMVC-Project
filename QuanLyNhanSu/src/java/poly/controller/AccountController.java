/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.controller;


import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import poly.dao.AccountDAO;
import poly.model.Email;
import poly.model.User;
import poly.model.Staffs;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;

@Controller
public class AccountController {

    @Autowired
    public AccountDAO dao;

      @Autowired
    ServletContext context;
    
    @Autowired
    JavaMailSender mailSender; //1. đối tượng gửi mail
    public AccountController() {
    }

    @RequestMapping(value = "dangnhap", method = RequestMethod.GET)
    public String dangnhap(ModelMap model) {
        model.addAttribute("user", new User());
        return "dangnhap";
    }
    @RequestMapping(value = "SendEmail", method = RequestMethod.POST)
    public String sendWithAttach(ModelMap model,
            @ModelAttribute("mail") Email mailInfo
            ) {
        try {
            //2. tạo 1 đối tượng MimeMessage
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true);

            // CODE CHÍNH CODE Ở ĐÂY TÍ VIẾT
            //3. từ mail nào gửi đi
            helper.setFrom(mailInfo.getFrom());
            //4. gửi đến mail nào
            helper.setTo(mailInfo.getTo());
            //5. tiêu đề của mail
            helper.setSubject(mailInfo.getSubject());
            //6. nội dụng của thư cần gửi
            helper.setText(mailInfo.getBody(),true);
            //7. gửi mail đi (gửi đối tượng message đi)
            mailSender.send(message);
            
        } catch (Exception e) {
            
            // thông báo lỗi qua trang SendEmail
            model.addAttribute("error",e.getMessage());
            return "SendEmail"; // hiện thị trang SendEmail===thông báo kết quả
        }
        
        
        return "SendEmail"; // hiện thị trang SendEmail===thông báo kết quả
    }
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login(Model model) {
//        model.addAttribute("user", new Account());
        return "login"; // hiện thị lên trang insert
    }
//

    @RequestMapping(value = "showaccount", method = RequestMethod.GET)
    public String showaccount(ModelMap model) {
//        model.addAttribute("user", new Account());
        model.addAttribute("acc", new User()); // tạo 1 đối tượng tài khoản
        model.addAttribute("accs", dao.getAll());
        return "showaccount"; // hiện thị lên trang insert
    }
// 1.load_data : viết load dữ liệu riêng ra

    @RequestMapping(params = "showaccount", method = RequestMethod.GET)
    public String initiate(ModelMap model) {
        //CODE XỬ LÝ TÍ NỮA SẼ VIẾT
        model.addAttribute("acc", new User()); // tạo 1 đối tượng tài khoản
        model.addAttribute("accs", dao.getAll()); // lấy danh sách các tài khoản
        return "showaccount"; // hiện thị trang showAccount lên
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(ModelMap model, HttpSession session, @ModelAttribute("user") User user) {
        try {
            //1. lấy ra tài khoản trong database dựa vào user.getUsername()
            User acc = dao.getByUsername(user.getId());
            //2. Sau khi có tồn tài khoản acc của username...kiểm tra có đúng password không
            if (acc.getPassword().equals(user.getPassword())) {
                //3. Nếu đúng mật khẩu thì chuyển qua trang showAccount
                //trước khi chuyển qua trang showAccount thì nhớ gọi dao.getAll()
                model.addAttribute("accs", dao.getAll());
                model.addAttribute("staff", new Staffs());
                model.addAttribute("staffs", dao.getAll());
//      
                session.getAttribute("username");
                //lấy ra tất cả các tài khoản.
                return "dangnhap"; // hiện thị trang showAccount
            } else {
                //4. Nếu sai password thì thông báo lỗi
                model.addAttribute("loimk", "Mật khẩu sai.");
                return "login";
            }
        } catch (Exception e) {
            model.addAttribute("loi", "username không tồn tại.");
        }
        return "login";
    }

//   
    //2. find...tìm kiếm theo username
    @RequestMapping(params = "find", method = RequestMethod.POST)
    public String find(@ModelAttribute("username1") String id, ModelMap model) {
        //CODE XỬ LÝ TÍ NỮA SẼ VIẾT

        //1. lấy ra tài khoản dựa vào username
        model.addAttribute("accs", dao.getByName(id));
        return "showaccount"; //2. hiện thị trang showAccount lên
    }
    //3. insert...thêm tài khoản

    @RequestMapping(params = "insert", method = RequestMethod.POST)
    public String insert(@ModelAttribute("acc") User acc, ModelMap model) {
        //CODE XỬ LÝ TÍ NỮA SẼ VIẾT

        try {
            //1. gọi hàm thêm vào database
            dao.insert(acc);
            //2. load lại dữ liệu
            return initiate(model); //gọi hàm phía trên
        } catch (Exception e) {
            model.addAttribute("error", "username đã tồn tại!");
            //3. load lại dữ liệu
            return initiate(model); //gọi hàm phía trên
        }
    }

    //4. delete...xóa tài khoản
    @RequestMapping(params = "delete", method = RequestMethod.POST)
    public String delete(@ModelAttribute("username") String id, ModelMap model) {
        //CODE XỬ LÝ TÍ NỮA SẼ VIẾT

        try {
            //1. gọi hàm xóa 1 tài khoản
            dao.delete(id);
            //2. load lại dữ liệu
            return initiate(model); //gọi hàm phía trên
        } catch (Exception e) {
            model.addAttribute("error", "xảy ra lỗi!");
            //3. load lại dữ liệu
            return initiate(model); //gọi hàm phía trên
        }
    }

//    5. update...cập nhật tài khoản
    @RequestMapping(params = "update", method = RequestMethod.POST)
    public String update(@ModelAttribute("acc") User acc, ModelMap model) {
        //CODE XỬ LÝ TÍ NỮA SẼ VIẾT
        //1. gọi hàm update tài khoản
        dao.update(acc);
        //2. load lại dữ liệu
        return initiate(model); //gọi hàm phía trên
    }
}
