package io.bidmachine.analytics.internal.t;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class e {
    private static final a d = new a(null);
    private final int a;
    private final Map b;
    private final Object c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public e(int i) {
        this.a = i;
        this.b = new LinkedHashMap();
        this.c = new Object();
    }

    public final InputStream a(String str) {
        Object objM2760constructorimpl;
        synchronized (this.c) {
            try {
                Result.Companion companion = Result.Companion;
                g gVar = (g) this.b.remove(str);
                objM2760constructorimpl = Result.m2760constructorimpl(new ByteArrayInputStream(gVar != null ? h.a(gVar) : null));
            } finally {
            }
        }
        return (InputStream) (Result.m2765isFailureimpl(objM2760constructorimpl) ? null : objM2760constructorimpl);
    }

    public final String b(String str) {
        Object objM2760constructorimpl;
        Long lA;
        synchronized (this.c) {
            try {
                Result.Companion companion = Result.Companion;
                g gVar = (g) this.b.get(str);
                objM2760constructorimpl = Result.m2760constructorimpl((gVar == null || (lA = gVar.a()) == null) ? null : lA.toString());
            } finally {
            }
        }
        return (String) (Result.m2765isFailureimpl(objM2760constructorimpl) ? null : objM2760constructorimpl);
    }

    public /* synthetic */ e(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 2097152 : i);
    }

    public final void a(String str, String str2) {
        synchronized (this.c) {
            try {
                Result.Companion companion = Result.Companion;
                Map map = this.b;
                Object objA = map.get(str);
                if (objA == null) {
                    objA = a();
                    map.put(str, objA);
                }
                ((g) objA).a(str2);
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
        }
    }

    private final g a() {
        int i = this.a;
        return new g(i / 2, i);
    }
}
