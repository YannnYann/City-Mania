package io.bidmachine.rendering.internal.meanbackground;

import android.view.View;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import io.bidmachine.rendering.internal.meanbackground.a;
import io.bidmachine.rendering.internal.meanbackground.b;
import io.bidmachine.rendering.internal.meanbackground.c;
import io.bidmachine.rendering.internal.meanbackground.d;
import io.bidmachine.rendering.internal.meanbackground.i;
import io.bidmachine.rendering.internal.meanbackground.o;
import io.bidmachine.rendering.utils.RenderingLoggerInstance;
import io.bidmachine.util.log.LoggerInstance;
import io.bidmachine.util.taskmanager.TaskManager;
import io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager;
import io.bidmachine.util.taskmanager.handler.BackgroundHandlerTaskManager;
import io.bidmachine.util.taskmanager.handler.HandlerTaskManager;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes5.dex */
public final class g {
    public static final a l = new a(null);
    public final CoroutineContext a;
    public final b b;
    public final Lazy c;
    public final Lazy d;
    public final Lazy e;
    public final Lazy f;
    public final Lazy g;
    public final Lazy h;
    public final m i;
    public final io.bidmachine.rendering.internal.meanbackground.b j;
    public final a.C1193a k;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class c extends Lambda implements Function0 {
        public static final c a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BackgroundHandlerTaskManager invoke() {
            return new BackgroundHandlerTaskManager();
        }
    }

    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderingLoggerInstance invoke() {
            return new RenderingLoggerInstance();
        }
    }

    public static final class e extends Lambda implements Function0 {
        public e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l invoke() {
            return new l(g.this.b());
        }
    }

    public static final class f extends Lambda implements Function0 {
        public static final f a = new f();

        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final n invoke() {
            return new n();
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.meanbackground.g$g, reason: collision with other inner class name */
    public static final class C1196g extends Lambda implements Function0 {
        public C1196g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final o invoke() {
            return new o(new o.a(null, g.this.b.d().getFirst(), g.this.b.d().getLast(), o.a.InterfaceC1200a.b.a, 1, null), io.bidmachine.rendering.internal.j.i.a(), g.this.a().getHandler());
        }
    }

    public static final class h extends Lambda implements Function0 {
        public h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineTaskManager invoke() {
            return new CoroutineTaskManager(g.this.a);
        }
    }

    public g(CoroutineContext coroutineContext, b config) {
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(config, "config");
        this.a = coroutineContext;
        this.b = config;
        this.c = LazyKt__LazyJVMKt.lazy(new h());
        this.d = LazyKt__LazyJVMKt.lazy(c.a);
        this.e = LazyKt__LazyJVMKt.lazy(d.a);
        this.f = LazyKt__LazyJVMKt.lazy(new e());
        this.g = LazyKt__LazyJVMKt.lazy(f.a);
        this.h = LazyKt__LazyJVMKt.lazy(new C1196g());
        this.i = new io.bidmachine.rendering.internal.meanbackground.e();
        this.j = new io.bidmachine.rendering.internal.meanbackground.b(new b.a(config.e(), config.f(), new d.a(config.d().getLast())));
        this.k = new a.C1193a(35, new d.a(config.d().getLast()));
    }

    public final o e() {
        return (o) this.h.getValue();
    }

    public final TaskManager f() {
        return (TaskManager) this.c.getValue();
    }

    public final HandlerTaskManager a() {
        return (HandlerTaskManager) this.d.getValue();
    }

    public final LoggerInstance b() {
        return (LoggerInstance) this.e.getValue();
    }

    public final l c() {
        return (l) this.f.getValue();
    }

    public final n d() {
        return (n) this.g.getValue();
    }

    public final void a(View view, Integer num, Function0 onFallback, Function1 onFinished) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(onFallback, "onFallback");
        Intrinsics.checkNotNullParameter(onFinished, "onFinished");
        f().executeSafely(new io.bidmachine.rendering.internal.meanbackground.h(view, 1000L, new j(d(), e(), a(num), b(num), c()), c(), onFallback, onFinished));
    }

    public final void b(View view, Integer num, Function0 onFallback, Function1 onFinished) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(onFallback, "onFallback");
        Intrinsics.checkNotNullParameter(onFinished, "onFinished");
        f().executeSafely(new io.bidmachine.rendering.internal.meanbackground.h(view, 1000L, new k(d(), e(), a(num), this.j, b(num), c()), c(), onFallback, onFinished));
    }

    public static final class b {
        public final IntRange a;
        public final int b;
        public final int c;
        public final IntRange d;
        public final float e;
        public final float f;
        public final float g;

        public b(IntRange dimensionsRangePx, int i, int i2, IntRange sampleStepRangePx, float f, float f2, float f3) {
            Intrinsics.checkNotNullParameter(dimensionsRangePx, "dimensionsRangePx");
            Intrinsics.checkNotNullParameter(sampleStepRangePx, "sampleStepRangePx");
            this.a = dimensionsRangePx;
            this.b = i;
            this.c = i2;
            this.d = sampleStepRangePx;
            this.e = f;
            this.f = f2;
            this.g = f3;
        }

        public final float a() {
            return this.e;
        }

        public final float b() {
            return this.g;
        }

        public final float c() {
            return this.f;
        }

        public final IntRange d() {
            return this.a;
        }

        public final int e() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.areEqual(this.a, bVar.a) && this.b == bVar.b && this.c == bVar.c && Intrinsics.areEqual(this.d, bVar.d) && Float.compare(this.e, bVar.e) == 0 && Float.compare(this.f, bVar.f) == 0 && Float.compare(this.g, bVar.g) == 0;
        }

        public final int f() {
            return this.c;
        }

        public final IntRange g() {
            return this.d;
        }

        public int hashCode() {
            return (((((((((((this.a.hashCode() * 31) + Integer.hashCode(this.b)) * 31) + Integer.hashCode(this.c)) * 31) + this.d.hashCode()) * 31) + Float.hashCode(this.e)) * 31) + Float.hashCode(this.f)) * 31) + Float.hashCode(this.g);
        }

        public String toString() {
            return "Config(dimensionsRangePx=" + this.a + ", maxOffsetPx=" + this.b + ", maxSampleSizePx=" + this.c + ", sampleStepRangePx=" + this.d + ", detectorAlphaThreshold=" + this.e + ", detectorTolerance=" + this.f + ", detectorBrightnessThreshold=" + this.g + ')';
        }

        public /* synthetic */ b(IntRange intRange, int i, int i2, IntRange intRange2, float f, float f2, float f3, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? new IntRange(200, EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) : intRange, (i3 & 2) != 0 ? 5 : i, (i3 & 4) != 0 ? 25 : i2, (i3 & 8) != 0 ? new IntRange(1, 8) : intRange2, (i3 & 16) != 0 ? 0.01f : f, (i3 & 32) != 0 ? 0.02f : f2, (i3 & 64) != 0 ? 0.04f : f3);
        }
    }

    public final io.bidmachine.rendering.internal.meanbackground.a a(Integer num) {
        return new io.bidmachine.rendering.internal.meanbackground.a(this.a, this.k, new io.bidmachine.rendering.internal.meanbackground.c(new c.a(num, this.b.a(), this.b.c(), this.b.b())), this.i);
    }

    public final i b(Integer num) {
        return new i(new i.a(num != null ? num.intValue() : -16777216, this.b.d().getLast(), this.b.g().getFirst(), this.b.g().getLast(), i.a.InterfaceC1197a.C1198a.a), this.i);
    }

    public /* synthetic */ g(CoroutineContext coroutineContext, b bVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SupervisorKt.SupervisorJob$default(null, 1, null).plus(io.bidmachine.rendering.internal.j.i.a().b()) : coroutineContext, (i & 2) != 0 ? new b(null, 0, 0, null, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE, null) : bVar);
    }
}
