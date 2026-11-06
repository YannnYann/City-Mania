package io.bidmachine.rendering.internal;

import android.content.Context;
import io.bidmachine.rendering.Repository;
import io.bidmachine.rendering.model.Background;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class I {
    public static final H a(Background background, Context context, Repository repository) {
        Intrinsics.checkNotNullParameter(background, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        return new H(context, repository, background);
    }
}
