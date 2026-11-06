package com.ironsource;

import android.content.Context;
import com.ironsource.mediationsdk.logger.IronLog;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class A4 implements T8, S8 {
    private final A7 a;

    /* JADX WARN: Multi-variable type inference failed */
    public A4() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // com.ironsource.S8
    public void a(Context context, EnumC3959z4 source, String key, String value) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        F4 f4A = this.a.a(context, source);
        if (f4A != null) {
            f4A.b(key, value);
            return;
        }
        IronLog.INTERNAL.error("Shared storage does not exist for source: " + source);
    }

    public A4(A7 sharedSignalsStorageFactory) {
        Intrinsics.checkNotNullParameter(sharedSignalsStorageFactory, "sharedSignalsStorageFactory");
        this.a = sharedSignalsStorageFactory;
    }

    @Override // com.ironsource.T8
    public String a(Context context, EnumC3959z4 source, String key) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(key, "key");
        F4 f4A = this.a.a(context, source);
        if (f4A != null) {
            return F4.a(f4A, key, null, 2, null);
        }
        IronLog.INTERNAL.error("Shared storage does not exist for source: " + source);
        return null;
    }

    public /* synthetic */ A4(A7 a7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new D4() : a7);
    }
}
