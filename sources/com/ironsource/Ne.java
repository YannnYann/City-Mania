package com.ironsource;

import android.content.Context;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Ne implements Me {
    private final O8 a;

    public static final class a {
        public static final a a = new a();
        public static final String b = "sessionNumber";
        public static final String c = "firstSessionTimestamp";

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Ne() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // com.ironsource.Oe
    public void a(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a.a(context, a.b, i);
    }

    @Override // com.ironsource.Oe
    public int b(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        return this.a.b(context, a.b, i);
    }

    public Ne(O8 sdkSharedPref) {
        Intrinsics.checkNotNullParameter(sdkSharedPref, "sdkSharedPref");
        this.a = sdkSharedPref;
    }

    @Override // com.ironsource.InterfaceC3861te
    public long a(Context context, long j) {
        Intrinsics.checkNotNullParameter(context, "context");
        return this.a.b(context, "firstSessionTimestamp", j);
    }

    @Override // com.ironsource.InterfaceC3861te
    public void b(Context context, long j) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a.a(context, "firstSessionTimestamp", j);
    }

    public /* synthetic */ Ne(O8 o8, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new Pe() : o8);
    }
}
