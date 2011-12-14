package prices;

public class Shopping implements java.io.Serializable  {
    
    private double cafePrice=18.5;
    private double sugarPrice=6.95;
    private double waterPrice=1.29;
    private double cafeTotal;
    private double sugarTotal;
    private double waterTotal;
    private double basketTotal;
    private String cafeQuantity;
    private String sugarQuantity;
    private String waterQuantity;
    
    public Shopping()
    {
        
        cafeTotal=0.0;
        sugarTotal=0.0;
        waterTotal=0.0;
        basketTotal=0.0;
        cafeQuantity="0";
        sugarQuantity="0";
        waterQuantity="0";
    }
    
   
    //Getters and Setters for Cafe

    
    public double getCafePrice()
   {
     return this.cafePrice;
   }
   
   public String getCafeQuantity()
   {
       return this.cafeQuantity;
   }
   
public void setCafeQuantity(final String cafeQuantity)
   {
       this.cafeQuantity = cafeQuantity;
       this.cafeTotal = Double.parseDouble(cafeQuantity)*cafePrice;
       this.basketTotal = cafeTotal+sugarTotal+waterTotal;
   }
   
   public double getCafeTotal()
   {
       return this.cafeTotal;
   }
   
   //End of Getters and Setters for Cafe
   
   //Getters and Setters For Sugar
     public double getSugarPrice()
   {
       return this.sugarPrice;
   }
   
   public String getSugarQuantity()
   {
       return this.sugarQuantity;
   }
   
public void setSugarQuantity(final String sugarQuantity)
   {
       this.sugarQuantity = sugarQuantity;
       this.sugarTotal = Double.parseDouble(sugarQuantity)*sugarPrice;
       this.basketTotal = cafeTotal+sugarTotal+waterTotal;
   }
   
   public double getSugarTotal()
   {
       return this.sugarTotal;
   }
     

    
  //End of Getters and Setters for Sugar    
  
  //Getters and Setters for Water 
   public double getWaterPrice()
   {
       return this.waterPrice;
   }
   
   public String getWaterQuantity()
   {
       return this.waterQuantity;
   }
   
public double getWaterTotal()
   {
       return this.waterTotal;
   }

public void setWaterQuantity(final String waterQuantity)
   {
       this.waterQuantity = waterQuantity;
       this.waterTotal = Double.parseDouble(waterQuantity)*waterPrice;
       this.basketTotal = cafeTotal+sugarTotal+waterTotal;
   }
//End of Getters and Setters for Water
   
public double getbasketTotal() {
        return this.basketTotal;
    } 
}
