package com.company.ioctest1;

import lombok.Data;

@Data
public class AnimalFarm {
    private String name;
    private Animal ani;
 
    public AnimalFarm() { super(); }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public Animal getani() { return ani; }
    public void setani(Animal ani) { this.ani = ani; }
 
    public String aniSleep() { return name + ">" + ani.sleep(); }
    public String aniEat()   { return name + ">" + ani.eat(); }
    public String aniPoo()   { return name + ">" + ani.poo(); }
 
    public void print() { 
       System.out.println(  aniSleep()); 
       System.out.println(  aniEat()); 
       System.out.println(  aniPoo()); 
    }
    
}    