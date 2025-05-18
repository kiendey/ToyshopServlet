package com.kiendey.common;

import lombok.Getter;

@Getter
public enum Gender {
    Nữ("Nữ"),
    Nam("Nam"),
    Khác("Khác");


    private final String displayName;

    Gender(String displayName) {
        this.displayName = displayName;
    }

}