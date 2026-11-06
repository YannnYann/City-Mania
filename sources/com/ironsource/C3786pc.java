package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.pc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3786pc {
    public static final a e = new a(null);
    private static volatile C3786pc f;
    private Nd a;
    private final AtomicBoolean b;
    private String c;
    private S3 d;

    /* JADX INFO: renamed from: com.ironsource.pc$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final C3786pc a() {
            C3786pc c3786pc;
            C3786pc c3786pc2 = C3786pc.f;
            if (c3786pc2 != null) {
                return c3786pc2;
            }
            synchronized (this) {
                c3786pc = C3786pc.f;
                if (c3786pc == null) {
                    c3786pc = new C3786pc(null);
                    C3786pc.f = c3786pc;
                }
            }
            return c3786pc;
        }

        private a() {
        }

        public final InterfaceC3574e1 a(IronSource.a adFormat) {
            Intrinsics.checkNotNullParameter(adFormat, "adFormat");
            C3786pc c3786pc = C3786pc.f;
            S3 s3B = c3786pc != null ? c3786pc.b() : null;
            C3786pc c3786pc2 = C3786pc.f;
            Nd ndE = c3786pc2 != null ? c3786pc2.e() : null;
            if (s3B != null && ndE != null) {
                return new C3795q3(s3B, ndE, adFormat);
            }
            return new C3739n5();
        }
    }

    public /* synthetic */ C3786pc(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final C3786pc d() {
        return e.a();
    }

    public final S3 b() {
        return this.d;
    }

    public final AtomicBoolean c() {
        return this.b;
    }

    public final Nd e() {
        return this.a;
    }

    public final String f() {
        return this.c;
    }

    public final void g() {
        this.b.set(true);
    }

    private C3786pc() {
        this.b = new AtomicBoolean(false);
        this.c = "";
    }

    public final void a(Nd nd) {
        this.a = nd;
    }

    public final void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.c = str;
    }

    public final void a(S3 s3) {
        this.d = s3;
    }
}
