package com.iab.omid.library.vungle.adsession;

import com.ironsource.C3522b4;

/* JADX INFO: loaded from: classes3.dex */
public enum ErrorType {
    GENERIC("generic"),
    VIDEO("video"),
    MEDIA(C3522b4.i.I0);

    private final String errorType;

    ErrorType(String str) {
        this.errorType = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.errorType;
    }
}
