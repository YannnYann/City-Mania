package com.google.common.hash;

import java.nio.Buffer;

/* JADX INFO: loaded from: classes3.dex */
public final class Java8Compatibility {
    public static void flip(Buffer b) {
        b.flip();
    }

    public static void position(Buffer b, int position) {
        b.position(position);
    }
}
