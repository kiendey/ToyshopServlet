package com.kiendey.model;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.io.Serializable;
import java.time.LocalDateTime;

@Getter
@Setter
@MappedSuperclass
@FieldDefaults(level = AccessLevel.PRIVATE)
public class AbstractEntity<T extends Serializable> implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "id") //Các entity extends AbstractEntity đều có collumn tên là id
    T id;

    @Column(name = "create_at")
    @CreationTimestamp
    LocalDateTime createdAt;

    @Column(name = "update_at")
    @UpdateTimestamp
    LocalDateTime updatedAt;

}
// @MappedSuperclass trong Spring (đặc biệt là trong JPA/Hibernate)
// được sử dụng để định nghĩa một lớp cha chứa các trường (fields)
// và mapping (liên kết) chung cho các lớp entity khác
//Các Audit dùng để theo dõi thông tin về người tạo,
// người cập nhật, thời gian tạo và thời gian cập nhật của các entity.
