package com.ironsource;

import android.content.Context;
import com.ironsource.InterfaceC3851t4;
import com.ironsource.N8;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Le implements N8, N8.a {
    private final Me a;
    private final Ce b;
    private final InterfaceC3851t4 c;
    private int d;
    private long e;

    public static final class a {
        public static final a a = new a();
        public static final int b = -1;
        public static final int c = 0;
        public static final long d = -1;

        private a() {
        }
    }

    public Le(Me storage, Ce initResponseStorage, InterfaceC3851t4 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(initResponseStorage, "initResponseStorage");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.a = storage;
        this.b = initResponseStorage;
        this.c = currentTimeProvider;
        this.d = -1;
        this.e = -1L;
    }

    private final int b(Context context, Me me) {
        int iB = me.b(context, 0) + 1;
        me.a(context, iB);
        return iB;
    }

    @Override // com.ironsource.N8.a
    public void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.d = b(context, this.a);
        this.e = a(context, this.a);
    }

    @Override // com.ironsource.N8
    public int c() {
        return this.d;
    }

    private final long a(Context context, Me me) {
        long jA = me.a(context, -1L);
        if (this.b.a(context) || jA != -1) {
            return jA;
        }
        long jA2 = this.c.a();
        IronLog.INTERNAL.verbose("set first session timestamp = " + jA2);
        me.b(context, jA2);
        return jA2;
    }

    @Override // com.ironsource.N8
    public String b() {
        String strD = IronSourceUtils.d();
        Intrinsics.checkNotNullExpressionValue(strD, "getSessionId(...)");
        return strD;
    }

    public /* synthetic */ Le(Me me, Ce ce, InterfaceC3851t4 interfaceC3851t4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(me, (i & 2) != 0 ? new De() : ce, (i & 4) != 0 ? new InterfaceC3851t4.a() : interfaceC3851t4);
    }

    @Override // com.ironsource.N8
    public long a() {
        return this.e;
    }
}
