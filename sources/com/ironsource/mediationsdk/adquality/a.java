package com.ironsource.mediationsdk.adquality;

import com.ironsource.C3707l9;
import com.ironsource.EnumC3951ye;
import com.ironsource.R6;
import java.util.LinkedHashSet;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static final b a = new b(null);
    private static EnumC1047a b = EnumC1047a.c;
    private static boolean c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: renamed from: com.ironsource.mediationsdk.adquality.a$a, reason: collision with other inner class name */
    public static final class EnumC1047a {
        public static final C1048a b;
        public static final EnumC1047a c = new EnumC1047a("DONT_INITIALIZE", 0, 0);
        public static final EnumC1047a d = new EnumC1047a("LEVELPLAY_ONLY", 1, 1);
        public static final EnumC1047a e = new EnumC1047a("ALL_MEDIATIONS", 2, 2);
        public static final EnumC1047a f = new EnumC1047a("OTHER_ONLY", 3, 3);
        private static final /* synthetic */ EnumC1047a[] g;
        private static final /* synthetic */ EnumEntries h;
        private final int a;

        /* JADX INFO: renamed from: com.ironsource.mediationsdk.adquality.a$a$a, reason: collision with other inner class name */
        public static final class C1048a {
            public /* synthetic */ C1048a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final EnumC1047a a(int i) {
                EnumC1047a enumC1047a;
                EnumC1047a[] enumC1047aArrValues = EnumC1047a.values();
                int length = enumC1047aArrValues.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        enumC1047a = null;
                        break;
                    }
                    enumC1047a = enumC1047aArrValues[i2];
                    if (enumC1047a.c() == i) {
                        break;
                    }
                    i2++;
                }
                return enumC1047a == null ? EnumC1047a.c : enumC1047a;
            }

            private C1048a() {
            }
        }

        static {
            EnumC1047a[] enumC1047aArrA = a();
            g = enumC1047aArrA;
            h = EnumEntriesKt.enumEntries(enumC1047aArrA);
            b = new C1048a(null);
        }

        private EnumC1047a(String str, int i, int i2) {
            this.a = i2;
        }

        private static final /* synthetic */ EnumC1047a[] a() {
            return new EnumC1047a[]{c, d, e, f};
        }

        public static EnumEntries<EnumC1047a> b() {
            return h;
        }

        public static EnumC1047a valueOf(String str) {
            return (EnumC1047a) Enum.valueOf(EnumC1047a.class, str);
        }

        public static EnumC1047a[] values() {
            return (EnumC1047a[]) g.clone();
        }

        public final int c() {
            return this.a;
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final EnumC1047a a() {
            return a.b;
        }

        public final boolean b() {
            return a.c;
        }

        private b() {
        }

        public final void a(EnumC1047a enumC1047a) {
            Intrinsics.checkNotNullParameter(enumC1047a, "<set-?>");
            a.b = enumC1047a;
        }

        public final void a(boolean z) {
            a.c = z;
        }
    }

    public /* synthetic */ class c {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC1047a.values().length];
            try {
                iArr[EnumC1047a.d.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC1047a.e.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnumC1047a.f.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public final boolean c() throws JSONException {
        EnumC3951ye enumC3951ye;
        JSONArray jSONArrayOptJSONArray = new C3707l9().a().optJSONArray(R6.g0);
        if (jSONArrayOptJSONArray == null) {
            return false;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int length = jSONArrayOptJSONArray.length();
        for (int i = 0; i < length; i++) {
            int i2 = jSONArrayOptJSONArray.getInt(i);
            EnumC3951ye[] enumC3951yeArrValues = EnumC3951ye.values();
            int length2 = enumC3951yeArrValues.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length2) {
                    enumC3951ye = null;
                    break;
                }
                enumC3951ye = enumC3951yeArrValues[i3];
                if (enumC3951ye.c() == i2) {
                    break;
                }
                i3++;
            }
            if (enumC3951ye != null) {
                linkedHashSet.add(enumC3951ye);
            }
        }
        int i4 = c.a[b.ordinal()];
        if (i4 == 1) {
            return linkedHashSet.contains(EnumC3951ye.b);
        }
        if (i4 != 2) {
            if (i4 == 3) {
                return linkedHashSet.contains(EnumC3951ye.c);
            }
        } else if (linkedHashSet.contains(EnumC3951ye.b) || linkedHashSet.contains(EnumC3951ye.c)) {
            return true;
        }
        return false;
    }

    public final void b(boolean z) {
        c = z;
    }

    public final void a(int i) {
        b = EnumC1047a.b.a(i);
    }
}
