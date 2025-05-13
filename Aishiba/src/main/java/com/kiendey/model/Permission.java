package com.kiendey.model;


import lombok.*;
import lombok.experimental.FieldDefaults;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;


@Entity
@Table(name = "permissions")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Permission extends AbstractEntity<String> {

    @Column(name = "name", nullable = false)
    String name;

    @Column(name = "description")
    String description;
}
