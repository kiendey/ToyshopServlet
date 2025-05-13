package com.kiendey.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "carts")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Cart extends AbstractEntity<String> {

    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "customer_id", nullable = false)
    User user;

    @OneToMany(mappedBy = "cart", fetch = FetchType.LAZY)
    List<CartItem> cartItems;
}
