package com.kiendey.model;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "coupons")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Coupon {

    @Id
    @Column(name = "code", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    String code;

    @Column(name = "start_date")
    LocalDate startDate;

    @Column(name = "end_date")
    LocalDate endDate;

    @Column(name = "discount")
    double discount;

    @Column(name = "description")
    String description;

    @OneToMany(mappedBy = "coupon")
    List<Order> orders;
    @PrePersist
    @PreUpdate
    private void toUpperCase() {
        if (this.code != null) {
            this.code = this.code.toUpperCase();
        }
    }
}
