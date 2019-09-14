
package PHONE;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.8
 * Generated source version: 2.2
 * 
 */
@WebService(name = "phone", targetNamespace = "http://phone/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface Phone {


    /**
     * 
     * @param phoneNo
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "operation", targetNamespace = "http://phone/", className = "PHONE.Operation")
    @ResponseWrapper(localName = "operationResponse", targetNamespace = "http://phone/", className = "PHONE.OperationResponse")
    @Action(input = "http://phone/phone/operationRequest", output = "http://phone/phone/operationResponse")
    public boolean operation(
        @WebParam(name = "phoneNo", targetNamespace = "")
        String phoneNo);

    /**
     * 
     * @param name
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "hello", targetNamespace = "http://phone/", className = "PHONE.Hello")
    @ResponseWrapper(localName = "helloResponse", targetNamespace = "http://phone/", className = "PHONE.HelloResponse")
    @Action(input = "http://phone/phone/helloRequest", output = "http://phone/phone/helloResponse")
    public String hello(
        @WebParam(name = "name", targetNamespace = "")
        String name);

}
