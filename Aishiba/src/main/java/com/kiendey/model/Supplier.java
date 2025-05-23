package com.kiendey.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "suppliers")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Supplier extends AbstractEntity<String>{
    @Column(name = "name", nullable = false)
    String name;

    @Column(name = "address")
    String address;

    @Column(name = "phone_number")
    String phoneNumber;

    @Column(name = "email")
    String email;

    @Column(name = "website")
    String website;

    @Column(name = "description")
    String description;

    @OneToMany(mappedBy = "supplier")
    List<Stock> stocks = new ArrayList<>();

    @OneToMany (mappedBy = "supplier")
    List<Toy> toys = new ArrayList<>();
}
