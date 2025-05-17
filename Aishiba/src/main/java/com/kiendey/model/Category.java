package com.kiendey.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "categories")
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Category extends AbstractEntity<String> {

    @Column(name = "category_name", nullable = false)
    String categoryName;

    @OneToMany(mappedBy = "category")
    List<Toy> toys;
    //Mennu 1 cấp nên ko có quan hệ parent-child

}