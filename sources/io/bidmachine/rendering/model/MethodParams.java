package io.bidmachine.rendering.model;

import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class MethodParams {
    public final String a;

    public MethodParams(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = name.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        this.a = lowerCase;
    }

    public final String getName() {
        return this.a;
    }
}
