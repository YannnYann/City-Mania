package com.google.crypto.tink;

/* JADX INFO: loaded from: classes3.dex */
public final class KeyStatus {
    public final String name;
    public static final KeyStatus ENABLED = new KeyStatus("ENABLED");
    public static final KeyStatus DISABLED = new KeyStatus("DISABLED");
    public static final KeyStatus DESTROYED = new KeyStatus("DESTROYED");

    public KeyStatus(String name) {
        this.name = name;
    }

    public String toString() {
        return this.name;
    }
}
