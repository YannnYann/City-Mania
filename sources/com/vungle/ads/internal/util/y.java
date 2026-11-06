package com.vungle.ads.internal.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class y extends ObjectInputStream {
    public final List a;

    public y(InputStream inputStream, List list) {
        super(inputStream);
        this.a = list;
    }

    @Override // java.io.ObjectInputStream
    public final Class resolveClass(ObjectStreamClass desc) throws ClassNotFoundException, IOException {
        Intrinsics.checkNotNullParameter(desc, "desc");
        Class<?> c = super.resolveClass(desc);
        if (this.a == null || Number.class.isAssignableFrom(c) || Intrinsics.areEqual(String.class, c) || Intrinsics.areEqual(Boolean.class, c) || c.isArray() || this.a.contains(c)) {
            Intrinsics.checkNotNullExpressionValue(c, "c");
            return c;
        }
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Deserialization is not allowed for ");
        sbA.append(desc.getName());
        throw new IOException(sbA.toString());
    }
}
