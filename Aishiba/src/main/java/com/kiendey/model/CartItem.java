package com.kiendey.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "cart_items")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CartItem {

    @EmbeddedId
    private CartItemPK id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("cartId")
    @JoinColumn(name = "cart_id", nullable = false)
    private Cart cart ;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("toyId")
    @JoinColumn(name = "toy_id", nullable = false)
    private Toy toy;

    @Column(name = "quantity", nullable = false)
    private int quantity; // Số lượng chọn mua của sản phẩm này trong giỏ hàng

    @Column(name = "create_at")
    @CreationTimestamp
    LocalDateTime createdAt;

    @Column(name = "update_at")
    @UpdateTimestamp
    LocalDateTime updatedAt;

    public CartItem(String cartId, String toyId, int quantity) {
        super();
    }
}
