package com.ironsource;

import com.ironsource.Sd;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: renamed from: com.ironsource.p9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3779p9 {
    private final int a;
    private final int b;
    private final int c;
    private int d;
    private boolean e;
    private String f;

    public C3779p9() {
        this(0, 0, 0, 7, null);
    }

    public final boolean a(C3841se error) {
        Intrinsics.checkNotNullParameter(error, "error");
        return error.c() != 2110;
    }

    public final String b() {
        return this.f;
    }

    public final int c() {
        return this.d;
    }

    public final boolean d() {
        return this.e;
    }

    public final void e() {
        this.e = true;
    }

    public C3779p9(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final void a(String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        if (this.f == null) {
            this.f = reason;
        }
    }

    public final Sd b(C3841se error) {
        Intrinsics.checkNotNullParameter(error, "error");
        a(error.d());
        if (this.d >= this.a) {
            return Sd.a.a;
        }
        e();
        Duration.Companion companion = Duration.Companion;
        long duration = DurationKt.toDuration(a(), DurationUnit.SECONDS);
        this.d++;
        return new Sd.b(duration, null);
    }

    private final int a() {
        return this.c << Math.min(this.d, this.b);
    }

    public /* synthetic */ C3779p9(int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 62 : i, (i4 & 2) != 0 ? 12 : i2, (i4 & 4) != 0 ? 1 : i3);
    }
}
