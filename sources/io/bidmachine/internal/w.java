package io.bidmachine.internal;

import kotlin.Unit;
import kotlin.comparisons.ComparisonsKt___ComparisonsJvmKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public final class w {
    public static final a f = new a(null);
    public final b a;
    public final b b;
    public final b c;
    public final b d;
    public final b e;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final w a() {
            b bVar = b.MASK;
            return new w(bVar, bVar, bVar, bVar, bVar);
        }

        public final w b() {
            b bVar = b.PASS;
            return new w(bVar, bVar, bVar, bVar, bVar);
        }

        public a() {
        }
    }

    public enum b {
        SUPPRESS,
        MASK,
        PASS
    }

    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[b.values().length];
            try {
                iArr[b.PASS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[b.MASK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[b.SUPPRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        public final void a() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class e extends Lambda implements Function0 {
        public static final e a = new e();

        public e() {
            super(0);
        }

        public final void a() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class f extends Lambda implements Function0 {
        public final /* synthetic */ Runnable a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Runnable runnable) {
            super(0);
            this.a = runnable;
        }

        public final void a() {
            this.a.run();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class g extends Lambda implements Function0 {
        public final /* synthetic */ Runnable a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(Runnable runnable) {
            super(0);
            this.a = runnable;
        }

        public final void a() {
            this.a.run();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class h extends Lambda implements Function0 {
        public static final h a = new h();

        public h() {
            super(0);
        }

        public final void a() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class i extends Lambda implements Function0 {
        public static final i a = new i();

        public i() {
            super(0);
        }

        public final void a() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class j extends Lambda implements Function0 {
        public static final j a = new j();

        public j() {
            super(0);
        }

        public final void a() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class k extends Lambda implements Function0 {
        public static final k a = new k();

        public k() {
            super(0);
        }

        public final void a() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class l extends Lambda implements Function0 {
        public static final l a = new l();

        public l() {
            super(0);
        }

        public final void a() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class m extends Lambda implements Function0 {
        public final /* synthetic */ Runnable a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(Runnable runnable) {
            super(0);
            this.a = runnable;
        }

        public final void a() {
            this.a.run();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class n extends Lambda implements Function0 {
        public final /* synthetic */ Runnable a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(Runnable runnable) {
            super(0);
            this.a = runnable;
        }

        public final void a() {
            this.a.run();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class o extends Lambda implements Function0 {
        public final /* synthetic */ Runnable a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(Runnable runnable) {
            super(0);
            this.a = runnable;
        }

        public final void a() {
            this.a.run();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public w(b sensitiveId, b network, b preciseLocation, b deviceFingerprint, b demographics) {
        Intrinsics.checkNotNullParameter(sensitiveId, "sensitiveId");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(preciseLocation, "preciseLocation");
        Intrinsics.checkNotNullParameter(deviceFingerprint, "deviceFingerprint");
        Intrinsics.checkNotNullParameter(demographics, "demographics");
        this.a = sensitiveId;
        this.b = network;
        this.c = preciseLocation;
        this.d = deviceFingerprint;
        this.e = demographics;
    }

    public final w a(b sensitiveId, b network, b preciseLocation, b deviceFingerprint, b demographics) {
        Intrinsics.checkNotNullParameter(sensitiveId, "sensitiveId");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(preciseLocation, "preciseLocation");
        Intrinsics.checkNotNullParameter(deviceFingerprint, "deviceFingerprint");
        Intrinsics.checkNotNullParameter(demographics, "demographics");
        return new w(sensitiveId, network, preciseLocation, deviceFingerprint, demographics);
    }

    public final b b() {
        return this.d;
    }

    public final b c() {
        return this.b;
    }

    public final b d() {
        return this.c;
    }

    public final b e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return this.a == wVar.a && this.b == wVar.b && this.c == wVar.c && this.d == wVar.d && this.e == wVar.e;
    }

    public int hashCode() {
        return (((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e.hashCode();
    }

    public String toString() {
        return "PrivacyGroupRestrictions(sensitiveId=" + this.a + ", network=" + this.b + ", preciseLocation=" + this.c + ", deviceFingerprint=" + this.d + ", demographics=" + this.e + ')';
    }

    public final b a() {
        return this.e;
    }

    public final void b(Function0 onPass, Function0 onMask) {
        Intrinsics.checkNotNullParameter(onPass, "onPass");
        Intrinsics.checkNotNullParameter(onMask, "onMask");
        a(this.d, onPass, onMask, e.a);
    }

    public final void c(Function0 onPass, Function0 onMask) {
        Intrinsics.checkNotNullParameter(onPass, "onPass");
        Intrinsics.checkNotNullParameter(onMask, "onMask");
        a(this.b, onPass, onMask, h.a);
    }

    public final void d(Function0 onPass, Function0 onMask) {
        Intrinsics.checkNotNullParameter(onPass, "onPass");
        Intrinsics.checkNotNullParameter(onMask, "onMask");
        a(this.c, onPass, onMask, i.a);
    }

    public static /* synthetic */ void a(w wVar, Function0 function0, Function0 function02, Function0 function03, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            function0 = j.a;
        }
        if ((i2 & 2) != 0) {
            function02 = k.a;
        }
        if ((i2 & 4) != 0) {
            function03 = l.a;
        }
        wVar.a(function0, function02, function03);
    }

    public /* synthetic */ w(b bVar, b bVar2, b bVar3, b bVar4, b bVar5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? b.SUPPRESS : bVar, (i2 & 2) != 0 ? b.SUPPRESS : bVar2, (i2 & 4) != 0 ? b.SUPPRESS : bVar3, (i2 & 8) != 0 ? b.SUPPRESS : bVar4, (i2 & 16) != 0 ? b.SUPPRESS : bVar5);
    }

    public final void a(Function0 onPass, Function0 onMask, Function0 onSuppress) {
        Intrinsics.checkNotNullParameter(onPass, "onPass");
        Intrinsics.checkNotNullParameter(onMask, "onMask");
        Intrinsics.checkNotNullParameter(onSuppress, "onSuppress");
        a(this.a, onPass, onMask, onSuppress);
    }

    public final void a(Runnable onPass, Runnable onMask, Runnable onSuppress) {
        Intrinsics.checkNotNullParameter(onPass, "onPass");
        Intrinsics.checkNotNullParameter(onMask, "onMask");
        Intrinsics.checkNotNullParameter(onSuppress, "onSuppress");
        a(new m(onPass), new n(onMask), new o(onSuppress));
    }

    public final void a(Runnable onPass, Runnable onMask) {
        Intrinsics.checkNotNullParameter(onPass, "onPass");
        Intrinsics.checkNotNullParameter(onMask, "onMask");
        b(new f(onPass), new g(onMask));
    }

    public final void a(Function0 onPass, Function0 onMask) {
        Intrinsics.checkNotNullParameter(onPass, "onPass");
        Intrinsics.checkNotNullParameter(onMask, "onMask");
        a(this.e, onPass, onMask, d.a);
    }

    public final void a(b bVar, Function0 function0, Function0 function02, Function0 function03) {
        int i2 = c.$EnumSwitchMapping$0[bVar.ordinal()];
        if (i2 == 1) {
            function0.invoke();
        } else if (i2 == 2) {
            function02.invoke();
        } else {
            if (i2 != 3) {
                return;
            }
            function03.invoke();
        }
    }

    public final w a(w other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return a((b) ComparisonsKt___ComparisonsJvmKt.minOf(this.a, other.a), (b) ComparisonsKt___ComparisonsJvmKt.minOf(this.b, other.b), (b) ComparisonsKt___ComparisonsJvmKt.minOf(this.c, other.c), (b) ComparisonsKt___ComparisonsJvmKt.minOf(this.d, other.d), (b) ComparisonsKt___ComparisonsJvmKt.minOf(this.e, other.e));
    }
}
