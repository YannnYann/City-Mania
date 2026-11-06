package com.ironsource;

import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.HashMap;
import java.util.List;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.r0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3809r0 {
    private final HashMap<String, Q0> a = new HashMap<>();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: renamed from: com.ironsource.r0$a */
    public static final class a {
        public static final a a = new a("DidntAttemptToLoad", 0);
        public static final a b = new a("FailedToLoad", 1);
        public static final a c = new a("LoadedSuccessfully", 2);
        public static final a d = new a("FailedToShow", 3);
        public static final a e = new a("ShowedSuccessfully", 4);
        public static final a f = new a("NotPartOfWaterfall", 5);
        private static final /* synthetic */ a[] g;
        private static final /* synthetic */ EnumEntries h;

        static {
            a[] aVarArrA = a();
            g = aVarArrA;
            h = EnumEntriesKt.enumEntries(aVarArrA);
        }

        private a(String str, int i) {
        }

        private static final /* synthetic */ a[] a() {
            return new a[]{a, b, c, d, e, f};
        }

        public static EnumEntries<a> b() {
            return h;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) g.clone();
        }
    }

    public final Q0 a(String adUnitId, List<? extends NetworkSettings> providers, int i) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(providers, "providers");
        Q0 q0 = this.a.get(adUnitId);
        if (q0 != null) {
            return q0;
        }
        Q0 q02 = new Q0(providers, i);
        this.a.put(adUnitId, q02);
        return q02;
    }
}
