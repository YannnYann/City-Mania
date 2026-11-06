package io.bidmachine.rendering.internal;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.rendering.internal.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC4238a {
    public static final Intent a(Context context, Class clazz) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intent intent = new Intent(context, (Class<?>) clazz);
        intent.addFlags(268435456);
        intent.addFlags(8388608);
        return intent;
    }
}
