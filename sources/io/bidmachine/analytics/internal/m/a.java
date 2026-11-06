package io.bidmachine.analytics.internal.m;

import android.content.Context;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.analytics.internal.a.C4105a;
import io.bidmachine.analytics.internal.g.C4116c;
import io.bidmachine.analytics.internal.g.EnumC4114a;
import io.bidmachine.analytics.internal.g.EnumC4120g;
import io.bidmachine.analytics.internal.g.h;
import io.bidmachine.analytics.internal.h.InterfaceC4121a;
import io.bidmachine.analytics.internal.h.InterfaceC4122b;
import io.bidmachine.analytics.internal.i.AbstractC4127a;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends AbstractC4127a implements InterfaceC4122b, InterfaceC4121a {
    private final C4105a d;
    private InterfaceC4122b e;
    private String f;
    private C1127a g;
    private final Object h = new Object();
    private final Map i = new LinkedHashMap();
    private b j;

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.m.a$a, reason: collision with other inner class name */
    public static final class C1127a implements AbstractC4127a.InterfaceC1123a {
        private final String a;
        private final long b;

        public /* synthetic */ C1127a(String str, long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, j);
        }

        public final long a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        private C1127a(String str, long j) {
            this.a = str;
            this.b = j;
        }
    }

    public static final class b {
        private final String a;
        private final long b;
        private final int c;
        private final Float d;
        private final EnumC4120g e;
        private final String f;
        private final String g;
        private final boolean h;
        private final Float i;

        public b(String str, long j, int i, Float f, EnumC4120g enumC4120g, String str2, String str3, boolean z) {
            this.a = str;
            this.b = j;
            this.c = i;
            this.d = f;
            this.e = enumC4120g;
            this.f = str2;
            this.g = str3;
            this.h = z;
            this.i = f != null ? Float.valueOf(f.floatValue() * 1000) : null;
        }

        public final b a(String str, long j, int i, Float f, EnumC4120g enumC4120g, String str2, String str3, boolean z) {
            return new b(str, j, i, f, enumC4120g, str2, str3, z);
        }

        public final int b() {
            return this.c;
        }

        public final Float c() {
            return this.i;
        }

        public final String d() {
            return this.a;
        }

        public final String e() {
            return this.f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.areEqual(this.a, bVar.a) && this.b == bVar.b && this.c == bVar.c && Intrinsics.areEqual(this.d, bVar.d) && this.e == bVar.e && Intrinsics.areEqual(this.f, bVar.f) && Intrinsics.areEqual(this.g, bVar.g) && this.h == bVar.h;
        }

        public final Float f() {
            return this.d;
        }

        public final EnumC4120g g() {
            return this.e;
        }

        public final long h() {
            return this.b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v15, types: [int] */
        /* JADX WARN: Type inference failed for: r1v16 */
        /* JADX WARN: Type inference failed for: r1v20 */
        public int hashCode() {
            int iHashCode = ((((this.a.hashCode() * 31) + Long.hashCode(this.b)) * 31) + Integer.hashCode(this.c)) * 31;
            Float f = this.d;
            int iHashCode2 = (iHashCode + (f == null ? 0 : f.hashCode())) * 31;
            EnumC4120g enumC4120g = this.e;
            int iHashCode3 = (iHashCode2 + (enumC4120g == null ? 0 : enumC4120g.hashCode())) * 31;
            String str = this.f;
            int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.g;
            int iHashCode5 = (iHashCode4 + (str2 != null ? str2.hashCode() : 0)) * 31;
            boolean z = this.h;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return iHashCode5 + r1;
        }

        public final boolean i() {
            return this.h;
        }

        public String toString() {
            return super.toString();
        }

        public static /* synthetic */ b a(b bVar, String str, long j, int i, Float f, EnumC4120g enumC4120g, String str2, String str3, boolean z, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = bVar.a;
            }
            if ((i2 & 2) != 0) {
                j = bVar.b;
            }
            if ((i2 & 4) != 0) {
                i = bVar.c;
            }
            if ((i2 & 8) != 0) {
                f = bVar.d;
            }
            if ((i2 & 16) != 0) {
                enumC4120g = bVar.e;
            }
            if ((i2 & 32) != 0) {
                str2 = bVar.f;
            }
            if ((i2 & 64) != 0) {
                str3 = bVar.g;
            }
            if ((i2 & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
                z = bVar.h;
            }
            String str4 = str3;
            boolean z2 = z;
            return bVar.a(str, j, i, f, enumC4120g, str2, str4, z2);
        }

        public final String a() {
            return this.g;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ b(String str, long j, int i, Float f, EnumC4120g enumC4120g, String str2, String str3, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            boolean z2;
            String str4;
            EnumC4120g enumC4120g2;
            String str5;
            int i3;
            Float f2;
            str = (i2 & 1) != 0 ? UUID.randomUUID().toString() : str;
            i = (i2 & 4) != 0 ? 0 : i;
            f = (i2 & 8) != 0 ? null : f;
            enumC4120g = (i2 & 16) != 0 ? null : enumC4120g;
            str2 = (i2 & 32) != 0 ? null : str2;
            str3 = (i2 & 64) != 0 ? null : str3;
            if ((i2 & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
                z2 = false;
                str5 = str2;
                str4 = str3;
                f2 = f;
                enumC4120g2 = enumC4120g;
                i3 = i;
            } else {
                z2 = z;
                str4 = str3;
                enumC4120g2 = enumC4120g;
                str5 = str2;
                i3 = i;
                f2 = f;
            }
            this(str, j, i3, f2, enumC4120g2, str5, str4, z2);
        }
    }

    public a(C4105a c4105a) {
        this.d = c4105a;
    }

    private final void b(EnumC4114a enumC4114a, b bVar) {
        Float f;
        EnumC4120g enumC4120gG;
        String str = this.f;
        if (str == null || (f = bVar.f()) == null) {
            return;
        }
        float fFloatValue = f.floatValue();
        if (fFloatValue > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && (enumC4120gG = bVar.g()) != null) {
            this.d.c().d().a(new C4116c(bVar.d(), str, bVar.h(), enumC4114a, fFloatValue, enumC4120gG));
        }
    }

    private final void c(EnumC4114a enumC4114a, b bVar) {
        b bVarA;
        synchronized (this.h) {
            try {
                b bVar2 = this.j;
                if (Intrinsics.areEqual(bVar2 != null ? bVar2.d() : null, bVar.d())) {
                    b bVar3 = this.j;
                    bVarA = b.a(bVar, null, 0L, bVar3 != null ? bVar3.b() : 0, null, null, null, null, false, 251, null);
                } else {
                    b bVar4 = this.j;
                    bVarA = b.a(bVar, null, 0L, (bVar4 != null ? bVar4.b() : 0) + 1, null, null, null, null, false, 251, null);
                }
                this.j = bVarA;
                b bVar5 = (b) this.i.get(enumC4114a);
                this.i.put(enumC4114a, bVar5 == null ? b.a(bVar, null, 0L, 1, null, null, null, null, false, 251, null) : Intrinsics.areEqual(bVar.d(), bVar5.d()) ? b.a(bVar, null, 0L, bVar5.b(), null, null, null, null, false, 251, null) : b.a(bVar, null, 0L, bVar5.b() + 1, null, null, null, null, false, 251, null));
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(AbstractC4127a.b bVar) {
        this.f = bVar.c();
        this.e = bVar.a();
        AbstractC4127a.InterfaceC1123a interfaceC1123aB = bVar.b();
        C1127a c1127a = interfaceC1123aB instanceof C1127a ? (C1127a) interfaceC1123aB : null;
        this.g = c1127a;
        if (c1127a != null) {
            Result.m2759boximpl(this.d.c().d().a(c1127a.a()));
        }
    }

    public abstract b b(Map map);

    public abstract EnumC4114a c(Map map);

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void f(Context context) {
        synchronized (this.h) {
            this.i.clear();
            this.j = null;
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // io.bidmachine.analytics.internal.h.InterfaceC4122b
    public void a(Map map) {
        b bVarB;
        a();
        InterfaceC4122b interfaceC4122b = this.e;
        if (interfaceC4122b != null) {
            interfaceC4122b.a(map);
        }
        EnumC4114a enumC4114aC = c(map);
        if (enumC4114aC == null || (bVarB = b(map)) == null) {
            return;
        }
        a(enumC4114aC, bVarB);
    }

    private final void a(EnumC4114a enumC4114a, b bVar) {
        c(enumC4114a, bVar);
        b(enumC4114a, bVar);
    }

    @Override // io.bidmachine.analytics.internal.h.InterfaceC4122b
    public void a(h hVar) {
        InterfaceC4122b interfaceC4122b = this.e;
        if (interfaceC4122b != null) {
            interfaceC4122b.a(hVar);
        }
    }

    public final b a(EnumC4114a enumC4114a) {
        b bVar;
        synchronized (this.h) {
            bVar = (b) this.i.get(enumC4114a);
        }
        return bVar;
    }

    @Override // io.bidmachine.analytics.internal.h.InterfaceC4121a
    public Object a(String str) {
        C1127a c1127a;
        String strB;
        if (!Intrinsics.areEqual(str, "iaa") || (c1127a = this.g) == null || (strB = c1127a.b()) == null) {
            return null;
        }
        Object objA = this.d.c().d().a(strB);
        Boolean bool = (Boolean) (Result.m2765isFailureimpl(objA) ? null : objA);
        a();
        return bool;
    }

    public final b b() {
        b bVar;
        synchronized (this.h) {
            bVar = this.j;
        }
        return bVar;
    }
}
