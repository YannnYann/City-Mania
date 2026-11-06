package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'A03' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9f, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class EnumC14339f implements InterfaceC2023Wy<Map.Entry<?, ?>, Object> {
    public static byte[] A00;
    public static String[] A01 = {"HCHuPleNCUflGAWX273asrnQ5WX0iPTX", "fRqlvXJfrEXlGsaft5JY2qkM5n7bMX5f", "SWm8DlBTUQtde5yIAMZ", "Jvxqs0ZFrLKEbkG1sUMFaup86V0jKIN1", "yqghIcMlZXIVb3Ps2vAiwo", "t", "PrHmF26nbmCzTjrXJSzVWWIepmxWdbXE", "JLfDGTGfhwqLGSsCWphT01WNRLd3gzY9"};
    public static final /* synthetic */ EnumC14339f[] A02;
    public static final EnumC14339f A03;
    public static final EnumC14339f A04;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 60);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{89, 87, 75, 101, 114, 127, 102, 118};
    }

    static {
        A02();
        final String strA01 = A01(0, 3, 46);
        final int i = 0;
        A03 = new EnumC14339f(strA01, i) { // from class: com.facebook.ads.redexgen.X.4b
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.InterfaceC2023Wy
            @CheckForNull
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final Object A4c(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        };
        final String strA012 = A01(3, 5, 15);
        final int i2 = 1;
        A04 = new EnumC14339f(strA012, i2) { // from class: com.facebook.ads.redexgen.X.4a
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.InterfaceC2023Wy
            @CheckForNull
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final Object A4c(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        };
        A02 = A03();
    }

    public EnumC14339f(String $enum$name, int $enum$ordinal) {
    }

    public static /* synthetic */ EnumC14339f[] A03() {
        return new EnumC14339f[]{A03, A04};
    }

    public static EnumC14339f valueOf(String name) {
        return (EnumC14339f) Enum.valueOf(EnumC14339f.class, name);
    }

    public static EnumC14339f[] values() {
        EnumC14339f[] enumC14339fArr = (EnumC14339f[]) A02.clone();
        String[] strArr = A01;
        if (strArr[3].charAt(21) == strArr[7].charAt(21)) {
            throw new RuntimeException();
        }
        A01[1] = "jQDhbXYW5JI90aTVr61rTuLW1mpJgxEr";
        return enumC14339fArr;
    }
}
