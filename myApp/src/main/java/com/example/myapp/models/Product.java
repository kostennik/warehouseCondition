package com.example.myapp.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Product implements Serializable {

  private int productId;
  private String productName;
  private String productCode;
  private String brandName;
  private String rackName;
  private int quantityOnRack;
  private int quantityOnStorehouse;

  @Override
  public String toString() {
    return "Product{" +
            "productId=" + productId +
            ", productName='" + productName + '\'' +
            ", productCode='" + productCode + '\'' +
            ", brandName='" + brandName + '\'' +
            ", rackName='" + rackName + '\'' +
            ", quantityOnRack=" + quantityOnRack +
            ", quantityOnStorehouse=" + quantityOnStorehouse +
            '}';
  }
}
