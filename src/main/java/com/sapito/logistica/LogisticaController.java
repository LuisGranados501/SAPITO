package com.sapito.logistica;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Cliente;
import com.sapito.db.entities.EmpresaTransporte;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author nel
 */
@Controller
public class LogisticaController {

    @RequestMapping(value = "logistica", method = RequestMethod.GET)
    public String index(Model model) {
        return "Logistica/indexLogistica";
    }

    @RequestMapping(value = "logistica/empresanacional", method = RequestMethod.GET)
    public String empresaNacional(Model model) {
        return "Logistica/nacionalPage";
    }

    @RequestMapping(value = "logistica/empresaextranjera", method = RequestMethod.GET)
    public String empresaExtranjera(Model model) {
        return "Logistica/extranjeraPage";
    }

    @RequestMapping(value = "logistica/empresa/camiones", method = RequestMethod.GET)
    public String camiones(Model model) {
        return "Logistica/transportePage";
    }

    @RequestMapping(value = "logistica/operadores", method = RequestMethod.GET)
    public String operadores(Model model) {
        return "Logistica/operadoresPage";
    }

    @RequestMapping(value = "logistica/gastosenvio", method = RequestMethod.GET)
    public String gastos(Model model) {
        return "Logistica/gastosEnvioPage";
    }

    @RequestMapping(value = "logistica/envios", method = RequestMethod.GET)
    public String envios(Model model) {
        return "Logistica/enviosPage";
    }

    @RequestMapping(value = "logistica/mensajes", method = RequestMethod.GET)
    public String mensajes(Model model) {
        return "Logistica/mensajesView";
    }

    @RequestMapping(value = "logistica/alertas", method = RequestMethod.GET)
    public String alertas(Model model) {
        return "Logistica/alertView";
    }

    @RequestMapping(value = "logistica/perfil", method = RequestMethod.GET)
    public String perfil(Model model) {
        return "Logistica/perfilView";
    }

    public String hola(String hola) {
        System.out.println("Hola asas");
        return "Logistica/operadores";
    }

    //--------------Empresa--------------------------//
    private GenericDao<EmpresaTransporte> daoEmpresaTransporte;

    @Autowired
    public void setDaoEmpresaTransporte(GenericDao<EmpresaTransporte> daoEmpresaTransporte) {
        this.daoEmpresaTransporte = daoEmpresaTransporte;
        daoEmpresaTransporte.setClass(Cliente.class); // Asignamos la clase que manipulará
    }

    //---------------Alta empresa---------------
    @RequestMapping(value = "logistica/empresa/altaEmpresa", method = RequestMethod.GET)
    public String altaEmpresa(Model model) {
        EmpresaTransporte empresaTransporte = new EmpresaTransporte();
        empresaTransporte.setStatus(true);
        model.addAttribute("empresaTransporte", empresaTransporte);
        return "Logistica/nacionalNew";
    }   
    
    @RequestMapping(value = "logistica/empresa/altaEmpresa", method = RequestMethod.POST)
    public String regaltaEmpresa(Model model, @Valid EmpresaTransporte empresaTransporte, BindingResult bindingResult) {
        
        
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "logistica/empresa/altaEmpresa";
        } else 
        {
            daoEmpresaTransporte.create(empresaTransporte);
        
            System.out.println("");
            model.addAttribute("imprime", "1");            
            return "Logistica/nacionalPage";
        }
    }
    //------------------Fin alta empresa--------------

    //---------------Fin Empresa--------------------------//
    
    
    
    @RequestMapping(value = "logistica/envios/altaEnvio", method = RequestMethod.GET)
    public String altaEnvio(Model model) {
        return "Logistica/enviosNew";
    }

    @RequestMapping(value = "logistica/enviosV", method = RequestMethod.GET)
    public String enviosView(Model model) {
        return "Logistica/enviosView";
    }

    @RequestMapping(value = "logistica/altaOperador", method = RequestMethod.GET)
    public String altaOperador(Model model) {
        return "Logistica/operadoresNew";
    }

    @RequestMapping(value = "logistica/operadoresV", method = RequestMethod.GET)
    public String operadoresView(Model model) {
        return "Logistica/operadoresView";
    }

    @RequestMapping(value = "logistica/gastosEnvioN", method = RequestMethod.GET)
    public String gastosEnvioNew(Model model) {
        return "Logistica/gastosEnvioNew";
    }

    @RequestMapping(value = "logistica/nacionalV", method = RequestMethod.GET)
    public String nacionalView(Model model) {
        return "Logistica/nacionalView";
    }

    @RequestMapping(value = "logistica/transporteN", method = RequestMethod.GET)
    public String transporteNew(Model model) {
        return "Logistica/transporteNew";
    }

    @RequestMapping(value = "logistica/transporteV", method = RequestMethod.GET)
    public String transporteView(Model model) {
        return "Logistica/transporteView";
    }

    @RequestMapping(value = "logistica/empresa/nacionalN", method = RequestMethod.GET)
    public String nacionalNew(Model model) {
        return "Logistica/nacionalNew";
    }

    @RequestMapping(value = "logistica/extranjeraV", method = RequestMethod.GET)
    public String extranjeraView(Model model) {
        return "Logistica/extranjeraView";
    }
//    
//    @RequestMapping(value="logistica", method=RequestMethod.GET)
//    public String index(Model model)
//    {
//        return "Logistica/indexLogistica";
//    }
//    
//    @RequestMapping(value="logistica", method=RequestMethod.GET)
//    public String index(Model model)
//    {
//        return "Logistica/indexLogistica";
//    }
//    
}
