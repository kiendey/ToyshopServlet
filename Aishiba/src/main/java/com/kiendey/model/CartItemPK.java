package com.kiendey.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.util.Objects;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Embeddable
public class CartItemPK implements Serializable {
    @Column(name = "cart_id", nullable = false)
    private String cartId;
    @Column(name = "toy_id", nullable = false)
    private String toyId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CartItemPK that = (CartItemPK) o;
        return Objects.equals(cartId, that.cartId) && Objects.equals(toyId, that.toyId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(cartId, toyId);
    }
}
