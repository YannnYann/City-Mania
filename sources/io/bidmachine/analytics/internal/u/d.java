package io.bidmachine.analytics.internal.u;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.analytics.internal.u.c;
import io.bidmachine.protobuf.EventTypeExtended;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public interface d extends IInterface {

    public static final class a implements d {
        public static final C1153d c = new C1153d(null);
        private static final Lazy d = LazyKt__LazyJVMKt.lazy(c.a);
        private static final b e;
        private static final b f;
        private static final b g;
        private static final b h;
        private static final b i;
        private static final b j;
        private static final b k;
        private static final b l;
        private static final b m;
        private static final b n;
        private static final b o;
        private static final b p;
        private static final b q;
        private static final b r;
        private static final b s;
        private static final b t;
        private static final b u;
        private static final b v;
        private static final b w;
        private final IBinder a;
        private final Function0 b;

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.u.d$a$a, reason: collision with other inner class name */
        public static final class C1152a extends Lambda implements Function0 {
            public static final C1152a a = new C1152a();

            public C1152a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Parcel invoke() {
                return Parcel.obtain();
            }
        }

        public static final class b {
            private final int a;
            private final int b;
            private final int c;
            private final int d;
            private final int e;
            private final int f;
            private final int g;
            private final int h;

            public b(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.a = i;
                this.b = i2;
                this.c = i3;
                this.d = i4;
                this.e = i5;
                this.f = i6;
                this.g = i7;
                this.h = i8;
            }

            public final b a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                return new b(i, i2, i3, i4, i5, i6, i7, i8);
            }

            public final int b() {
                return this.h;
            }

            public final int c() {
                return this.f;
            }

            public final int d() {
                return this.b;
            }

            public final int e() {
                return this.c;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                return this.a == bVar.a && this.b == bVar.b && this.c == bVar.c && this.d == bVar.d && this.e == bVar.e && this.f == bVar.f && this.g == bVar.g && this.h == bVar.h;
            }

            public final int f() {
                return this.g;
            }

            public final int g() {
                return this.e;
            }

            public final int h() {
                return this.a;
            }

            public int hashCode() {
                return (((((((((((((Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31) + Integer.hashCode(this.c)) * 31) + Integer.hashCode(this.d)) * 31) + Integer.hashCode(this.e)) * 31) + Integer.hashCode(this.f)) * 31) + Integer.hashCode(this.g)) * 31) + Integer.hashCode(this.h);
            }

            public String toString() {
                return super.toString();
            }

            public static /* synthetic */ b a(b bVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Object obj) {
                if ((i9 & 1) != 0) {
                    i = bVar.a;
                }
                if ((i9 & 2) != 0) {
                    i2 = bVar.b;
                }
                if ((i9 & 4) != 0) {
                    i3 = bVar.c;
                }
                if ((i9 & 8) != 0) {
                    i4 = bVar.d;
                }
                if ((i9 & 16) != 0) {
                    i5 = bVar.e;
                }
                if ((i9 & 32) != 0) {
                    i6 = bVar.f;
                }
                if ((i9 & 64) != 0) {
                    i7 = bVar.g;
                }
                if ((i9 & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
                    i8 = bVar.h;
                }
                int i10 = i7;
                int i11 = i8;
                int i12 = i5;
                int i13 = i6;
                return bVar.a(i, i2, i3, i4, i12, i13, i10, i11);
            }

            public final int a() {
                return this.d;
            }
        }

        public static final class c extends Lambda implements Function0 {
            public static final c a = new c();

            public c() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String invoke() {
                return io.bidmachine.analytics.internal.I.g.a("Y29tLmFuZHJvaWQudmVuZGluZy5iaWxsaW5nLklJbkFwcEJpbGxpbmdTZXJ2aWNl");
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.u.d$a$d, reason: collision with other inner class name */
        public static final class C1153d {
            public /* synthetic */ C1153d(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final b a() {
                return a.f;
            }

            public final b b() {
                return a.g;
            }

            public final b c() {
                return a.h;
            }

            public final b d() {
                return a.i;
            }

            public final b e() {
                return a.j;
            }

            public final b f() {
                return a.k;
            }

            public final b g() {
                return a.l;
            }

            public final b h() {
                return a.m;
            }

            public final b i() {
                return a.n;
            }

            public final b j() {
                return a.o;
            }

            public final b k() {
                return a.p;
            }

            public final b l() {
                return a.q;
            }

            public final b m() {
                return a.r;
            }

            public final b n() {
                return a.s;
            }

            public final b o() {
                return a.t;
            }

            public final b p() {
                return a.u;
            }

            public final b q() {
                return a.v;
            }

            public final b r() {
                return a.w;
            }

            public final b s() {
                return a.e;
            }

            public final String t() {
                return (String) a.d.getValue();
            }

            private C1153d() {
            }

            public final b a(io.bidmachine.analytics.internal.a.f fVar) {
                c.r rVar = io.bidmachine.analytics.internal.u.c.j;
                return fVar.compareTo(rVar.r()) <= 0 ? a() : fVar.compareTo(rVar.s()) <= 0 ? b() : fVar.compareTo(rVar.t()) <= 0 ? c() : fVar.compareTo(rVar.u()) <= 0 ? d() : fVar.compareTo(rVar.v()) <= 0 ? e() : fVar.compareTo(rVar.w()) <= 0 ? f() : fVar.compareTo(rVar.x()) <= 0 ? g() : fVar.compareTo(rVar.y()) <= 0 ? h() : fVar.compareTo(rVar.z()) <= 0 ? i() : fVar.compareTo(rVar.A()) <= 0 ? j() : fVar.compareTo(rVar.B()) <= 0 ? k() : fVar.compareTo(rVar.C()) <= 0 ? l() : fVar.compareTo(rVar.D()) <= 0 ? m() : fVar.compareTo(rVar.E()) <= 0 ? n() : fVar.compareTo(rVar.F()) <= 0 ? o() : fVar.compareTo(rVar.G()) <= 0 ? p() : fVar.compareTo(rVar.H()) <= 0 ? q() : fVar.compareTo(rVar.I()) <= 0 ? r() : s();
            }
        }

        static {
            b bVar = new b(1, 28, 11, 26, 9, 6, EventTypeExtended.EVENT_TYPE_EXTENDED_WATERFALL_STARTED_VALUE, 20);
            e = bVar;
            b bVarA = b.a(bVar, 0, 17, 0, 9, 0, 0, 0, 17, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, null);
            f = bVarA;
            g = bVarA;
            b bVarA2 = b.a(bVarA, 0, 19, 0, 19, 0, 0, 0, 0, 245, null);
            h = bVarA2;
            i = bVarA2;
            b bVarA3 = b.a(bVarA2, 0, 20, 0, 0, 0, 0, 0, 20, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, null);
            j = bVarA3;
            k = bVarA3;
            b bVarA4 = b.a(bVarA3, 0, 21, 0, 0, 0, 0, 0, 0, 253, null);
            l = bVarA4;
            b bVarA5 = b.a(bVarA4, 0, 22, 0, 0, 0, 0, 0, 0, 253, null);
            m = bVarA5;
            n = bVarA5;
            o = bVarA5;
            b bVarA6 = b.a(bVarA5, 0, 23, 0, 0, 0, 0, 0, 0, 253, null);
            p = bVarA6;
            b bVarA7 = b.a(bVarA6, 0, 23, 0, 0, 0, 0, 0, 0, 253, null);
            q = bVarA7;
            b bVarA8 = b.a(bVarA7, 0, 25, 0, 24, 0, 0, 0, 0, 245, null);
            r = bVarA8;
            b bVarA9 = b.a(bVarA8, 0, 27, 0, 26, 0, 0, 0, 0, 245, null);
            s = bVarA9;
            t = bVarA9;
            u = bVarA9;
            v = bVarA9;
            w = b.a(bVarA9, 0, 28, 0, 0, 0, 0, 0, 0, 253, null);
        }

        public a(IBinder iBinder, Function0 function0) {
            this.a = iBinder;
            this.b = function0;
        }

        private final Parcel u() {
            Parcel parcel = (Parcel) this.b.invoke();
            parcel.writeInterfaceToken(c.t());
            return parcel;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.a;
        }

        @Override // io.bidmachine.analytics.internal.u.d
        public int a(b bVar, String str, String str2) {
            Parcel parcelU = u();
            parcelU.writeInt(bVar.d());
            parcelU.writeString(str);
            parcelU.writeString(str2);
            Parcel parcelA = a(bVar.h(), parcelU);
            int i2 = parcelA.readInt();
            parcelA.recycle();
            return i2;
        }

        @Override // io.bidmachine.analytics.internal.u.d
        public Bundle b(b bVar, String str, String str2, Bundle bundle) {
            Parcel parcelU = u();
            parcelU.writeInt(bVar.a());
            parcelU.writeString(str);
            parcelU.writeString(str2);
            parcelU.writeString(null);
            a(parcelU, bundle);
            Parcel parcelA = a(bVar.e(), parcelU);
            Bundle bundle2 = (Bundle) a(parcelA, Bundle.CREATOR);
            parcelA.recycle();
            return bundle2;
        }

        public /* synthetic */ a(IBinder iBinder, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(iBinder, (i2 & 2) != 0 ? C1152a.a : function0);
        }

        @Override // io.bidmachine.analytics.internal.u.d
        public Bundle a(b bVar, String str, String str2, Bundle bundle) {
            Parcel parcelU = u();
            parcelU.writeInt(bVar.c());
            parcelU.writeString(str);
            parcelU.writeString(str2);
            parcelU.writeString(null);
            a(parcelU, bundle);
            Parcel parcelA = a(bVar.g(), parcelU);
            Bundle bundle2 = (Bundle) a(parcelA, Bundle.CREATOR);
            parcelA.recycle();
            return bundle2;
        }

        @Override // io.bidmachine.analytics.internal.u.d
        public Bundle a(b bVar, String str, String str2, Bundle bundle, Bundle bundle2) {
            Parcel parcelU = u();
            parcelU.writeInt(bVar.b());
            parcelU.writeString(str);
            parcelU.writeString(str2);
            a(parcelU, bundle);
            a(parcelU, bundle2);
            Parcel parcelA = a(bVar.f(), parcelU);
            Bundle bundle3 = (Bundle) a(parcelA, Bundle.CREATOR);
            parcelA.recycle();
            return bundle3;
        }

        private final void a(Parcel parcel, Parcelable parcelable) {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
        }

        public final Parcel a(int i2, Parcel parcel) {
            Parcel parcel2 = (Parcel) this.b.invoke();
            try {
                try {
                    this.a.transact(i2, parcel, parcel2, 0);
                    parcel2.readException();
                    return parcel2;
                } catch (RuntimeException e2) {
                    parcel2.recycle();
                    throw e2;
                }
            } finally {
                parcel.recycle();
            }
        }

        private final Parcelable a(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() == 0) {
                return null;
            }
            Object objCreateFromParcel = creator.createFromParcel(parcel);
            Intrinsics.checkNotNull(objCreateFromParcel, "null cannot be cast to non-null type android.os.Parcelable");
            return (Parcelable) objCreateFromParcel;
        }
    }

    int a(a.b bVar, String str, String str2);

    Bundle a(a.b bVar, String str, String str2, Bundle bundle);

    Bundle a(a.b bVar, String str, String str2, Bundle bundle, Bundle bundle2);

    Bundle b(a.b bVar, String str, String str2, Bundle bundle);
}
