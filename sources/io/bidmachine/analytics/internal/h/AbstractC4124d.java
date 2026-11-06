package io.bidmachine.analytics.internal.h;

import android.content.Context;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.h.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC4124d {
    public static final a c = new a(null);
    private final Object a = new Object();
    private b b = b.EMPTY;

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.h.d$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.h.d$b */
    public enum b {
        EMPTY,
        CREATED,
        ENABLED,
        DISABLED,
        DESTROYED
    }

    public abstract String a();

    public final void a(Context context) {
        synchronized (this.a) {
            if (this.b != b.EMPTY) {
                return;
            }
            d(context);
            this.b = b.CREATED;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void b(Context context) {
        synchronized (this.a) {
            if (this.b != b.ENABLED) {
                return;
            }
            try {
                Result.Companion companion = Result.Companion;
                e(context);
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            this.b = b.DISABLED;
            Unit unit = Unit.INSTANCE;
        }
    }

    public abstract void b(Object obj);

    public final void c(Context context) {
        synchronized (this.a) {
            if (this.b != b.DISABLED) {
                return;
            }
            try {
                Result.Companion companion = Result.Companion;
                f(context);
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            this.b = b.ENABLED;
            Unit unit = Unit.INSTANCE;
        }
    }

    public abstract void d(Context context);

    public abstract void e(Context context);

    public abstract void f(Context context);

    public final void a(Object obj) {
        synchronized (this.a) {
            b bVar = this.b;
            if (bVar == b.CREATED || bVar == b.DISABLED) {
                b(obj);
                this.b = b.DISABLED;
                Unit unit = Unit.INSTANCE;
            }
        }
    }
}
