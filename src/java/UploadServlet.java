import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (!isMultipart) {
        } else {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List items = null;
            try {
                items = upload.parseRequest(request);
                } catch (FileUploadException e) {
                    e.printStackTrace();
                }
            Iterator itr = items.iterator();
            while (itr.hasNext()) {
                FileItem item = (FileItem) itr.next();
                if (item.isFormField()) {
                } else {
                    try {
                    String itemName = item.getName();
                    File savedFile = new File("E:/news/"+itemName);
                    item.write(savedFile);  
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
    }
}