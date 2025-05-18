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
public class OrderItemPK implements Serializable {
    @Column(name = "order_id", nullable = false)
    private String orderId;
    @Column(name = "toy_id", nullable = false)
    private String toyId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderItemPK that = (OrderItemPK) o;
        return Objects.equals(orderId, that.orderId) && Objects.equals(toyId, that.toyId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(orderId, toyId);
    }
}
