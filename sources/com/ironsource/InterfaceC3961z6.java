package com.ironsource;

import android.app.Activity;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.z6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public interface InterfaceC3961z6 {

    /* JADX INFO: renamed from: com.ironsource.z6$a */
    public static final class a {
        private final c a;

        public a(c strategyType) {
            Intrinsics.checkNotNullParameter(strategyType, "strategyType");
            this.a = strategyType;
        }

        public final c a() {
            return this.a;
        }

        public final c b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.a == ((a) obj).a;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "Config(strategyType=" + this.a + ")";
        }

        public final a a(c strategyType) {
            Intrinsics.checkNotNullParameter(strategyType, "strategyType");
            return new a(strategyType);
        }

        public static /* synthetic */ a a(a aVar, c cVar, int i, Object obj) {
            if ((i & 1) != 0) {
                cVar = aVar.a;
            }
            return aVar.a(cVar);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.z6$b */
    public static final class b {

        /* JADX INFO: renamed from: com.ironsource.z6$b$a */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[c.values().length];
                try {
                    iArr[c.b.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[c.c.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[c.d.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                a = iArr;
            }
        }

        public final InterfaceC3961z6 a(C3770p0 adTools, a config, InterfaceC3889v6 fullscreenAdUnitFactory, InterfaceC3925x6 fullscreenAdUnitListener, InterfaceC3943y6 listener) {
            Intrinsics.checkNotNullParameter(adTools, "adTools");
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(fullscreenAdUnitFactory, "fullscreenAdUnitFactory");
            Intrinsics.checkNotNullParameter(fullscreenAdUnitListener, "fullscreenAdUnitListener");
            Intrinsics.checkNotNullParameter(listener, "listener");
            int i = a.a[config.b().ordinal()];
            if (i == 1) {
                return new N6(adTools, config, fullscreenAdUnitFactory, fullscreenAdUnitListener, listener);
            }
            if (i == 2) {
                return new G6(adTools, fullscreenAdUnitFactory, fullscreenAdUnitListener, listener);
            }
            if (i == 3) {
                return new A6(adTools, fullscreenAdUnitFactory, fullscreenAdUnitListener, listener);
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: renamed from: com.ironsource.z6$c */
    public static final class c {
        public static final c b = new c("SINGLE", 0, "Single");
        public static final c c = new c("PROGRESSIVE_ON_SHOW_SUCCESS", 1, "OnShowSuccess");
        public static final c d = new c("PROGRESSIVE_ON_LOAD_SUCCESS", 2, "OnLoadSuccess");
        private static final /* synthetic */ c[] e;
        private static final /* synthetic */ EnumEntries f;
        private final String a;

        static {
            c[] cVarArrA = a();
            e = cVarArrA;
            f = EnumEntriesKt.enumEntries(cVarArrA);
        }

        private c(String str, int i, String str2) {
            this.a = str2;
        }

        private static final /* synthetic */ c[] a() {
            return new c[]{b, c, d};
        }

        public static EnumEntries<c> c() {
            return f;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) e.clone();
        }

        public final String b() {
            return this.a;
        }
    }

    void a(Activity activity);

    void loadAd();
}
