
package pak;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for operation complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="operation">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="symp1" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="symp2" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="symp3" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "operation", propOrder = {
    "symp1",
    "symp2",
    "symp3"
})
public class Operation {

    protected String symp1;
    protected String symp2;
    protected String symp3;

    /**
     * Gets the value of the symp1 property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSymp1() {
        return symp1;
    }

    /**
     * Sets the value of the symp1 property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSymp1(String value) {
        this.symp1 = value;
    }

    /**
     * Gets the value of the symp2 property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSymp2() {
        return symp2;
    }

    /**
     * Sets the value of the symp2 property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSymp2(String value) {
        this.symp2 = value;
    }

    /**
     * Gets the value of the symp3 property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSymp3() {
        return symp3;
    }

    /**
     * Sets the value of the symp3 property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSymp3(String value) {
        this.symp3 = value;
    }

}
