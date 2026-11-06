package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class J4 implements Te<String> {
    private final String a;
    private final String b;

    public J4(String encryptedResponse, String descriptionKey) {
        Intrinsics.checkNotNullParameter(encryptedResponse, "encryptedResponse");
        Intrinsics.checkNotNullParameter(descriptionKey, "descriptionKey");
        this.a = encryptedResponse;
        this.b = descriptionKey;
    }

    @Override // com.ironsource.Te
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public String a() {
        String strB = Q9.b(this.b, this.a);
        if (strB == null || strB.length() == 0) {
            throw new IllegalArgumentException("Decryption failed");
        }
        return strB;
    }
}
