package com.ironsource;

import com.ironsource.C3735n1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.k1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public interface InterfaceC3681k1 {

    /* JADX INFO: renamed from: com.ironsource.k1$a */
    public static final class a {
        public static final C1043a a = new C1043a(null);

        /* JADX INFO: renamed from: com.ironsource.k1$a$a, reason: collision with other inner class name */
        public static final class C1043a {
            public /* synthetic */ C1043a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final InterfaceC3681k1 a(C3735n1.j errorCode, C3735n1.k errorReason) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                Intrinsics.checkNotNullParameter(errorReason, "errorReason");
                return new b(b.c, CollectionsKt__CollectionsKt.mutableListOf(errorCode, errorReason));
            }

            public final InterfaceC3681k1 b(InterfaceC3753o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(b.d, CollectionsKt__CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            public final InterfaceC3681k1 c(InterfaceC3753o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(b.i, CollectionsKt__CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            public final InterfaceC3681k1 d(InterfaceC3753o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(b.b, CollectionsKt__CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            public final InterfaceC3681k1 e(InterfaceC3753o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(b.h, CollectionsKt__CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            public final InterfaceC3681k1 f(InterfaceC3753o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(b.e, CollectionsKt__CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            private C1043a() {
            }

            public final InterfaceC3681k1 a() {
                return new b(b.f, new ArrayList());
            }

            public final InterfaceC3681k1 a(InterfaceC3753o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(b.g, CollectionsKt__CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            public final InterfaceC3681k1 a(boolean z) {
                if (z) {
                    return new b(b.j, new ArrayList());
                }
                return new b(b.k, new ArrayList());
            }
        }

        /* JADX INFO: renamed from: com.ironsource.k1$a$b */
        public static final class b {
            public static final b a = new b();
            public static final int b = 401;
            public static final int c = 403;
            public static final int d = 404;
            public static final int e = 405;
            public static final int f = 406;
            public static final int g = 407;
            public static final int h = 408;
            public static final int i = 409;
            public static final int j = 410;
            public static final int k = 411;

            private b() {
            }
        }

        public static final InterfaceC3681k1 a() {
            return a.a();
        }

        public static final InterfaceC3681k1 b(InterfaceC3753o1... interfaceC3753o1Arr) {
            return a.b(interfaceC3753o1Arr);
        }

        public static final InterfaceC3681k1 c(InterfaceC3753o1... interfaceC3753o1Arr) {
            return a.c(interfaceC3753o1Arr);
        }

        public static final InterfaceC3681k1 d(InterfaceC3753o1... interfaceC3753o1Arr) {
            return a.d(interfaceC3753o1Arr);
        }

        public static final InterfaceC3681k1 e(InterfaceC3753o1... interfaceC3753o1Arr) {
            return a.e(interfaceC3753o1Arr);
        }

        public static final InterfaceC3681k1 f(InterfaceC3753o1... interfaceC3753o1Arr) {
            return a.f(interfaceC3753o1Arr);
        }

        public static final InterfaceC3681k1 a(InterfaceC3753o1... interfaceC3753o1Arr) {
            return a.a(interfaceC3753o1Arr);
        }

        public static final InterfaceC3681k1 a(boolean z) {
            return a.a(z);
        }

        public static final InterfaceC3681k1 a(C3735n1.j jVar, C3735n1.k kVar) {
            return a.a(jVar, kVar);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.k1$b */
    public static final class b implements InterfaceC3681k1 {
        private final int a;
        private final List<InterfaceC3753o1> b;

        public b(int i, List<InterfaceC3753o1> arrayList) {
            Intrinsics.checkNotNullParameter(arrayList, "arrayList");
            this.a = i;
            this.b = arrayList;
        }

        @Override // com.ironsource.InterfaceC3681k1
        public void a(InterfaceC3810r1 analytics) {
            Intrinsics.checkNotNullParameter(analytics, "analytics");
            analytics.a(this.a, this.b);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.k1$c */
    public static final class c {
        public static final a a = new a(null);

        /* JADX INFO: renamed from: com.ironsource.k1$c$a */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final InterfaceC3681k1 a() {
                return new b(201, new ArrayList());
            }

            public final InterfaceC3681k1 b() {
                return new b(206, new ArrayList());
            }

            private a() {
            }

            public final InterfaceC3681k1 a(C3735n1.l ext1) {
                Intrinsics.checkNotNullParameter(ext1, "ext1");
                return new b(207, CollectionsKt__CollectionsKt.mutableListOf(ext1));
            }

            public final InterfaceC3681k1 a(InterfaceC3753o1 duration) {
                Intrinsics.checkNotNullParameter(duration, "duration");
                return new b(202, CollectionsKt__CollectionsKt.mutableListOf(duration));
            }

            public final InterfaceC3681k1 a(C3735n1.j errorCode, C3735n1.k errorReason, C3735n1.f duration) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                Intrinsics.checkNotNullParameter(errorReason, "errorReason");
                Intrinsics.checkNotNullParameter(duration, "duration");
                return new b(203, CollectionsKt__CollectionsKt.mutableListOf(errorCode, errorReason, duration));
            }

            public final InterfaceC3681k1 a(InterfaceC3753o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(204, CollectionsKt__CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }
        }

        /* JADX INFO: renamed from: com.ironsource.k1$c$b */
        public static final class b {
            public static final b a = new b();
            public static final int b = 201;
            public static final int c = 202;
            public static final int d = 203;
            public static final int e = 204;
            public static final int f = 205;
            public static final int g = 206;
            public static final int h = 207;

            private b() {
            }
        }

        public static final InterfaceC3681k1 a(InterfaceC3753o1... interfaceC3753o1Arr) {
            return a.a(interfaceC3753o1Arr);
        }

        public static final InterfaceC3681k1 b() {
            return a.b();
        }

        public static final InterfaceC3681k1 a() {
            return a.a();
        }

        public static final InterfaceC3681k1 a(C3735n1.j jVar, C3735n1.k kVar, C3735n1.f fVar) {
            return a.a(jVar, kVar, fVar);
        }

        public static final InterfaceC3681k1 a(InterfaceC3753o1 interfaceC3753o1) {
            return a.a(interfaceC3753o1);
        }

        public static final InterfaceC3681k1 a(C3735n1.l lVar) {
            return a.a(lVar);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.k1$d */
    public static final class d {
        public static final a a = new a(null);

        /* JADX INFO: renamed from: com.ironsource.k1$d$a */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final InterfaceC3681k1 a() {
                return new b(101, new ArrayList());
            }

            public final InterfaceC3681k1 b(InterfaceC3753o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(110, CollectionsKt__CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            public final b c() {
                return new b(105, new ArrayList());
            }

            private a() {
            }

            public final InterfaceC3681k1 a(InterfaceC3753o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(102, CollectionsKt__CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            public final InterfaceC3681k1 b() {
                return new b(112, new ArrayList());
            }

            public final InterfaceC3681k1 a(C3735n1.f duration) {
                Intrinsics.checkNotNullParameter(duration, "duration");
                return new b(103, CollectionsKt__CollectionsKt.mutableListOf(duration));
            }

            public final InterfaceC3681k1 a(C3735n1.j errorCode, C3735n1.k errorReason, C3735n1.f duration, C3735n1.l loaderState) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                Intrinsics.checkNotNullParameter(errorReason, "errorReason");
                Intrinsics.checkNotNullParameter(duration, "duration");
                Intrinsics.checkNotNullParameter(loaderState, "loaderState");
                return new b(104, CollectionsKt__CollectionsKt.mutableListOf(errorCode, errorReason, duration, loaderState));
            }

            public final InterfaceC3681k1 a(C3735n1.j errorCode, C3735n1.k errorReason) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                Intrinsics.checkNotNullParameter(errorReason, "errorReason");
                return new b(109, CollectionsKt__CollectionsKt.mutableListOf(errorCode, errorReason));
            }

            public final InterfaceC3681k1 a(InterfaceC3753o1 ext1) {
                Intrinsics.checkNotNullParameter(ext1, "ext1");
                return new b(111, CollectionsKt__CollectionsKt.mutableListOf(ext1));
            }

            public final InterfaceC3681k1 a(C3735n1.k errorReason) {
                Intrinsics.checkNotNullParameter(errorReason, "errorReason");
                return new b(113, CollectionsKt__CollectionsKt.mutableListOf(errorReason));
            }
        }

        /* JADX INFO: renamed from: com.ironsource.k1$d$b */
        public static final class b {
            public static final b a = new b();
            public static final int b = 101;
            public static final int c = 102;
            public static final int d = 103;
            public static final int e = 104;
            public static final int f = 105;
            public static final int g = 109;
            public static final int h = 110;
            public static final int i = 111;
            public static final int j = 112;
            public static final int k = 113;

            private b() {
            }
        }

        public static final InterfaceC3681k1 a() {
            return a.a();
        }

        public static final InterfaceC3681k1 b() {
            return a.b();
        }

        public static final b c() {
            return a.c();
        }

        public static final InterfaceC3681k1 a(InterfaceC3753o1... interfaceC3753o1Arr) {
            return a.a(interfaceC3753o1Arr);
        }

        public static final InterfaceC3681k1 b(InterfaceC3753o1... interfaceC3753o1Arr) {
            return a.b(interfaceC3753o1Arr);
        }

        public static final InterfaceC3681k1 a(C3735n1.j jVar, C3735n1.k kVar) {
            return a.a(jVar, kVar);
        }

        public static final InterfaceC3681k1 a(C3735n1.j jVar, C3735n1.k kVar, C3735n1.f fVar, C3735n1.l lVar) {
            return a.a(jVar, kVar, fVar, lVar);
        }

        public static final InterfaceC3681k1 a(InterfaceC3753o1 interfaceC3753o1) {
            return a.a(interfaceC3753o1);
        }

        public static final InterfaceC3681k1 a(C3735n1.f fVar) {
            return a.a(fVar);
        }

        public static final InterfaceC3681k1 a(C3735n1.k kVar) {
            return a.a(kVar);
        }
    }

    void a(InterfaceC3810r1 interfaceC3810r1);
}
