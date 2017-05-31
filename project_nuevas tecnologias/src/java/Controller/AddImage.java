
package Controller;

import Conexion.Conexion;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


/**
 *
 * @author Stiven
 */

@WebServlet(name = "AddImage", urlPatterns = {"/AddImage"})
public class AddImage extends HttpServlet {
    private ServletFileUpload upload;
    private DiskFileItemFactory fileItem;
    private List<FileItem> items;
    public String urlImage;
    private Conexion conexion=new Conexion();

/**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            response.sendRedirect("listConference.jsp");
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {}
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
        {
        fileItem= new DiskFileItemFactory();
        upload=new ServletFileUpload(fileItem);
        try {
            items=upload.parseRequest(request);
            } catch (FileUploadException ex) {
                
            }
        for(int i=0;i<items.size();i++)
            {
            FileItem item=(FileItem)items.get(i);
            if(!item.isFormField())
                {
                AddConference.conference.setImage(item.getName()); 
                String os=System.getProperty("os.name");
                if(os.equals("Windows 10"))
                    urlImage="C:\\Users\\Stiven\\Documents\\NetBeansProjects\\nuevas-tecnologias\\project_nuevas tecnologias\\web\\images\\Conferences\\"+item.getName();   
                //urlImage="./NetBeansProjects/nuevas-tecnologias/project_nuevas tecnologias/web/images/"+item.getName();
                else
                    urlImage="";
                File file=new File(urlImage);
                try {
                    item.write(file);
                    } catch (Exception ex) 
                        {
                        System.out.println("paila perro con la conferencia la imagen paila");
                        }
                
               }
            }
        conexion.setConference(AddConference.conference);
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
