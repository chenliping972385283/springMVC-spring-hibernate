package simples.controller;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import simples.entity.User;
import simples.service.user.UserService;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.awt.image.CropImageFilter;
import java.awt.image.FilteredImageSource;
import java.awt.image.ImageFilter;
import java.io.*;

/**
 * Created by jinli on 2017/2/14.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/personCenter")
    public ModelAndView personCenter() {
        Subject subject = SecurityUtils.getSubject();
        Session session = subject.getSession();
        String username = (String) session.getAttribute("username");
        User user = userService.getUserByUsername(username);
        return new ModelAndView("/personalCenter").addObject("user",user);
    }

    @RequestMapping(value = "uploadImage", method = RequestMethod.POST)
    public void uploadImage(HttpServletRequest request, HttpServletResponse response,
                            @RequestParam(value = "x") String x,
                            @RequestParam(value = "y") String y,
                            @RequestParam(value = "h") String h,
                            @RequestParam(value = "w") String w,
                            @RequestParam(value = "originalW") String originalW,
                            @RequestParam(value = "originalH") String originalH,
                            @RequestParam(value = "imgFile", required = false) MultipartFile imageFile) {
        String realPath = request.getSession().getServletContext().getRealPath("/");
        String fileName = imageFile.getOriginalFilename();
        int end = fileName.lastIndexOf(".");
        String saveName = fileName.substring(0, end);
        String resourcePath = "resources/uploadImages/";
        File dir = new File(realPath + resourcePath);
        if (!dir.exists()) {
            dir.mkdirs();
        }
        File file = new File(dir, saveName + "_src.jpg");
        try {
            imageFile.transferTo(file);

        } catch (IOException e) {
            e.printStackTrace();
        }
        String srcImageFile = realPath + resourcePath + saveName;
        int imageX = Integer.parseInt(x);
        int imageY = Integer.parseInt(y);
        int imageH = Integer.parseInt(h);
        int imageW = Integer.parseInt(w);
        int ow = Integer.parseInt(originalW);
        int oh = Integer.parseInt(originalH);

        //这里开始截取操作
        System.out.println("==========imageCutStart=============");
        this.imgCut(srcImageFile, imageX, imageY, imageW, imageH,ow,oh);
        System.out.println("==========imageCutEnd=============");
        FileInputStream inputStreamResult= null;
        try {
            inputStreamResult = new FileInputStream(srcImageFile+"_cut.jpg");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        Subject subject = SecurityUtils.getSubject();
        Session session = subject.getSession();
        String username = (String) session.getAttribute("username");
        User user = userService.getUserByUsername(username);

        byte[] imgageUrl = new byte[0];
        try {
            imgageUrl = new byte[inputStreamResult.available()];
            inputStreamResult.read(imgageUrl);
            inputStreamResult.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        user.setImageUrl(imgageUrl);
        user.setRelativePath(resourcePath + saveName+"_cut.jpg");
        userService.updateUser(user);
    }

    public void imgCut(String srcImageFile, int x, int y, int desWidth,
                       int desHeight,int originalW,int originalH) {
            try {
            String realPath = srcImageFile + "_src.jpg";
            this.resize(realPath,originalW,originalH);
            Image img;
            ImageFilter cropFilter;
            BufferedImage bi = ImageIO.read(new File(realPath));
            int srcWidth = bi.getWidth();
            int srcHeight = bi.getHeight();
            if (srcWidth >= desWidth && srcHeight >= desHeight) {
                Image imagee = bi.getScaledInstance(srcWidth, srcHeight, Image.SCALE_DEFAULT);
                cropFilter = new CropImageFilter(x, y, desWidth, desHeight);
                img = Toolkit.getDefaultToolkit().createImage(
                        new FilteredImageSource(imagee.getSource(), cropFilter));
                BufferedImage tag = new BufferedImage(desWidth, desHeight,
                        BufferedImage.TYPE_INT_RGB);
                Graphics g = tag.getGraphics();
                g.drawImage(img, 0, 0, null);
                g.dispose();
                //输出文件
                ImageIO.write(tag, "JPEG", new File(srcImageFile + "_cut.jpg"));


            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 压缩图片到置顶大小
     * @param
     * @param
     */
    public void resize(String srcImagePath,int originalW,int originalH) throws IOException{
        Image img = ImageIO.read(new File(srcImagePath));// Image对象
        BufferedImage image = new BufferedImage(originalW, originalH, BufferedImage.TYPE_INT_RGB);// 生成缩略图片
        image.getGraphics().drawImage(img, 0, 0, originalW, originalH, null);// 绘制缩小后的图
        FileOutputStream  out = new FileOutputStream(new File(srcImagePath ));// 输出到文件流
        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
        encoder.encode(image);
    }


    /**
     * 显示图片
     * @param request
     * @param response
     */
    @RequestMapping("/loadImage")
    public void loadImage(HttpServletRequest request,HttpServletResponse response){
        Subject subject = SecurityUtils.getSubject();
        Session session = subject.getSession();
        String username = (String) session.getAttribute("username");
        User user = userService.getUserByUsername(username);
        OutputStream os;
        try {
            os = response.getOutputStream();//定义一个输出流
            if (username!=null)
            {
                byte [] imageUrl= user.getImageUrl();
                if(imageUrl!=null && imageUrl.length>0)
                {
                    os.write(imageUrl);

                }else {
                }
                os.flush();
                os.close();
            }
        } catch (IOException e) {

            e.printStackTrace();
        }
    }
}
