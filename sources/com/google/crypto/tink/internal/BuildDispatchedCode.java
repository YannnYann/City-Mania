package com.google.crypto.tink.internal;

import android.os.Build;

/* JADX INFO: loaded from: classes3.dex */
public final class BuildDispatchedCode {
    public static Integer getApiLevel() {
        return Integer.valueOf(Build.VERSION.SDK_INT);
    }
}
