/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.webproject002;

/**
 *
 * @author Danny
 */
public abstract class Student 
{
    protected String id, name, course;
    protected double mark;
    
    public Student(String idIn, String nameIn, String courseIn) 
    {
        id = idIn;
        name = nameIn;
        course = courseIn;
    }
    
    public String setMark(double newMark) 
    {
        if(newMark >= 0 && newMark <= 100) 
        {
            mark = newMark;
        } 
        else 
        {
           return "Mark must be between 0 and 100";
        }
        return null;
    }
    
    public String getId() 
    {
        return id;
    }
    
    public String getName() 
    {
        return name;
    }
    
    public String getCourse() 
    {
        return course;
    }
    
    public double getMark() 
    {
        return mark;
    }

    public abstract String getGrade();
    
    public void display() 
    {
        System.out.println("ID: " + id + " Name: " + name + " Course: " + course + " Grade: " + this.getGrade());
    }  
}