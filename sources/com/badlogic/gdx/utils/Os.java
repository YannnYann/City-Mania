package com.badlogic.gdx.utils;

/* JADX INFO: loaded from: classes.dex */
public enum Os {
    Windows,
    Linux,
    MacOsX,
    Android,
    IOS;

    public String getLibPrefix() {
        if (this == Linux || this == Android || this == MacOsX) {
            return "lib";
        }
        return "";
    }

    public String getLibExtension() {
        return this == Windows ? "dll" : this == Linux ? "so" : this == MacOsX ? "dylib" : this == Android ? "so" : "";
    }
}
