package com.vungle.ads.internal.task;

import android.content.Context;
import android.os.Bundle;
import com.vungle.ads.internal.util.PathProvider;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class l implements c {
    public final Context a;

    public l(Context context, PathProvider pathProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.a = context;
    }

    @Override // com.vungle.ads.internal.task.c
    public final int a(Bundle bundle, g jobRunner) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(jobRunner, "jobRunner");
        ((com.vungle.ads.internal.network.r) LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new k(this.a)).getValue()).b();
        return 0;
    }
}
