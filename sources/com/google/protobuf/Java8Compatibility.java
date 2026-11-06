package com.google.protobuf;

import java.nio.Buffer;

/* JADX INFO: loaded from: classes3.dex */
public final class Java8Compatibility {
    public static void clear(Buffer b) {
        b.clear();
    }

    public static void limit(Buffer b, int limit) {
        b.limit(limit);
    }

    public static void mark(Buffer b) {
        b.mark();
    }

    public static void position(Buffer b, int position) {
        b.position(position);
    }

    public static void reset(Buffer b) {
        b.reset();
    }
}
