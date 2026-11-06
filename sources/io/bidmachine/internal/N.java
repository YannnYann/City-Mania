package io.bidmachine.internal;

import io.bidmachine.core.Logger;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class N {
    public static final N a = new N();

    public final boolean a(boolean[] zArr, boolean z) {
        return Intrinsics.areEqual(ArraysKt___ArraysKt.firstOrNull(zArr), Boolean.TRUE) && z;
    }

    public final O b(String str) {
        if (str != null && str.length() != 0) {
            try {
                return c(str);
            } catch (Throwable th) {
                Logger.e(th);
            }
        }
        return null;
    }

    public final O c(String str) {
        String strA = a(StringsKt__StringsKt.substringBefore(str, '.', str));
        if (strA == null) {
            return null;
        }
        a aVar = new a(strA);
        aVar.c(6);
        aVar.d(36);
        aVar.d(36);
        aVar.d(12);
        aVar.d(12);
        aVar.d(6);
        aVar.d(12);
        aVar.d(12);
        aVar.d(6);
        aVar.d(1);
        aVar.d(1);
        aVar.d(12);
        boolean[] zArrB = aVar.b(24);
        aVar.d(24);
        aVar.d(1);
        aVar.d(12);
        return new O(a(zArrB, a(aVar, 736)));
    }

    public static final class a {
        public final String a;
        public int b;

        public a(String bits) {
            Intrinsics.checkNotNullParameter(bits, "bits");
            this.a = bits;
        }

        public final boolean a() {
            a(1);
            String str = this.a;
            int i = this.b;
            this.b = i + 1;
            return str.charAt(i) == '1';
        }

        public final boolean[] b(int i) {
            boolean[] zArr = new boolean[i];
            for (int i2 = 0; i2 < i; i2++) {
                zArr[i2] = a();
            }
            return zArr;
        }

        public final int c(int i) {
            a(i);
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                int i4 = i2 << 1;
                String str = this.a;
                int i5 = this.b;
                this.b = i5 + 1;
                i2 = i4 | (str.charAt(i5) == '1' ? 1 : 0);
            }
            return i2;
        }

        public final void d(int i) {
            a(i);
            this.b += i;
        }

        public final void a(int i) {
            if (this.b + i > this.a.length()) {
                throw new IllegalArgumentException("Not enough bits");
            }
        }
    }

    public final boolean a(a aVar, int i) {
        int iC = aVar.c(16);
        int i2 = 0;
        if (!aVar.a()) {
            boolean z = false;
            while (i2 < iC) {
                boolean zA = aVar.a();
                i2++;
                if (i2 == i) {
                    z = zA;
                }
            }
            return z;
        }
        int iC2 = aVar.c(12);
        boolean z2 = false;
        while (i2 < iC2) {
            boolean zA2 = aVar.a();
            int iC3 = aVar.c(16);
            int iC4 = zA2 ? aVar.c(16) : iC3;
            if (iC3 <= i && i <= iC4) {
                z2 = true;
            }
            i2++;
        }
        return z2;
    }

    public final String a(String str) {
        StringBuilder sb = new StringBuilder(str.length() * 6);
        int length = str.length();
        for (int i = 0; i < length; i++) {
            int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", str.charAt(i), 0, false, 6, (Object) null);
            if (iIndexOf$default < 0) {
                return null;
            }
            String string = Integer.toString(iIndexOf$default, CharsKt__CharJVMKt.checkRadix(2));
            Intrinsics.checkNotNullExpressionValue(string, "toString(this, checkRadix(radix))");
            sb.append(StringsKt__StringsKt.padStart(string, 6, '0'));
        }
        return sb.toString();
    }
}
