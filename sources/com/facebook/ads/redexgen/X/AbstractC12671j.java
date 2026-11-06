package com.facebook.ads.redexgen.X;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1j, reason: invalid class name and case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public abstract class AbstractC12671j {
    public static byte[] A00;
    public static String[] A01 = {"Xi67YWaXLJZWqhRsB8SvZdkDn2uXCi1T", "X8XRpgZpu4J2FMNY2R0Im54Lc", "uAp3FxCXIvTUkclpRHbafTdd", "yWg", "kCaq3ZceSZ4xKH", "0ytorNMA8n21LRZOAZR41tORWa47tSnO", "V8IBWi2DfHR6SVI", "jzlGtxrHiOgIbEefJzDEiDs4vGk2Cgvb"};
    public static final Object[] A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 76);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{31, 43, 40, 40, 33, 31, 48, 37, 43, 42, -22, -10, -9, 0, -42, -19, -81, -75, -75, -75, -80, -17, -10, -19, -19, -95, -28, -30, -17, -17, -16, -11, -95, -29, -26, -95, -28, -30, -12, -11, -95, -11, -16, -95, -17, -16, -17, -82, -17, -10, -19, -19, -95, -11, -6, -15, -26, -95, -20, -16, -11, -19, -22, -17, -81, -62, -13, -13, -30, -6, -67, -20, -16, -11, -19, -22, -17, -81, -62, -17, -6, -64, -65};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Deprecated
    @DeprecatedSinceKotlin
    public static final Object[] A02(Collection<?> collection) {
        C1h.A09(collection, A00(0, 10, 112));
        int size = collection.size();
        if (size == 0) {
            return A02;
        }
        Iterator<?> it = collection.iterator();
        if (!it.hasNext()) {
            return A02;
        }
        Object[] objArrCopyOf = new Object[size];
        String[] strArr = A01;
        if (strArr[4].length() == strArr[1].length()) {
            throw new RuntimeException();
        }
        A01[7] = "RBKivIY57JQgqBCnQiuvt7rg8FSSFcvN";
        int i = 0;
        while (true) {
            int i2 = i + 1;
            objArrCopyOf[i] = it.next();
            int length = objArrCopyOf.length;
            String strA00 = A00(10, 11, 59);
            if (i2 >= length) {
                boolean zHasNext = it.hasNext();
                String[] strArr2 = A01;
                if (strArr2[5].charAt(0) == strArr2[0].charAt(0)) {
                    throw new RuntimeException();
                }
                A01[7] = "EivW1tnkzbwqNWBtsoIUxwnFoAaiYxH4";
                if (!zHasNext) {
                    return objArrCopyOf;
                }
                int i3 = ((i2 * 3) + 1) >>> 1;
                if (i3 <= i2) {
                    if (i2 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                    i3 = 2147483645;
                }
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i3);
                C1h.A08(objArrCopyOf, strA00);
                i = i2;
            } else {
                if (!it.hasNext()) {
                    Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, i2);
                    C1h.A08(objArrCopyOf2, strA00);
                    return objArrCopyOf2;
                }
                i = i2;
            }
        }
    }

    static {
        A01();
        A02 = new Object[0];
    }

    @Deprecated
    @DeprecatedSinceKotlin
    public static final Object[] A03(Collection<?> collection, Object[] objArr) {
        Object[] objArrCopyOf;
        C1h.A09(collection, A00(0, 10, 112));
        if (objArr != null) {
            int size = collection.size();
            if (size == 0) {
                int $i$f$toArrayImpl = objArr.length;
                if ($i$f$toArrayImpl > 0) {
                    objArr[0] = null;
                }
            } else {
                Iterator<?> it = collection.iterator();
                boolean zHasNext = it.hasNext();
                if (A01[3].length() != 3) {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[2] = "YhRYCedHt9dN7q9AqXu4tWwm";
                strArr[6] = "Pu6AKl3cuGA7cYl";
                if (!zHasNext) {
                    if (objArr.length > 0) {
                        objArr[0] = null;
                    }
                } else {
                    int $i$f$toArrayImpl2 = objArr.length;
                    if (size <= $i$f$toArrayImpl2) {
                        objArrCopyOf = objArr;
                    } else {
                        Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                        C1h.A07(objNewInstance, A00(21, 62, 53));
                        objArrCopyOf = (Object[]) objNewInstance;
                    }
                    int size$iv = 0;
                    while (true) {
                        int i = size$iv + 1;
                        objArrCopyOf[size$iv] = it.next();
                        int length = objArrCopyOf.length;
                        String strA00 = A00(10, 11, 59);
                        if (i >= length) {
                            if (!it.hasNext()) {
                                return objArrCopyOf;
                            }
                            int $i$f$toArrayImpl3 = i * 3;
                            int $i$f$toArrayImpl4 = ($i$f$toArrayImpl3 + 1) >>> 1;
                            if ($i$f$toArrayImpl4 <= i) {
                                if (i < 2147483645) {
                                    $i$f$toArrayImpl4 = 2147483645;
                                } else {
                                    throw new OutOfMemoryError();
                                }
                            }
                            objArrCopyOf = Arrays.copyOf(objArrCopyOf, $i$f$toArrayImpl4);
                            C1h.A08(objArrCopyOf, strA00);
                            String[] strArr2 = A01;
                            String str = strArr2[4];
                            String str2 = strArr2[1];
                            int size$iv2 = str.length();
                            int $i$f$toArrayImpl5 = str2.length();
                            if (size$iv2 == $i$f$toArrayImpl5) {
                                throw new RuntimeException();
                            }
                            Object[] result$iv = A01;
                            result$iv[7] = "t75y3a9XWSg9UWVOHsHEmPOwlRRgWpfZ";
                            size$iv = i;
                        } else {
                            if (!it.hasNext()) {
                                if (objArrCopyOf == objArr) {
                                    objArr[i] = null;
                                } else {
                                    objArr = Arrays.copyOf(objArrCopyOf, i);
                                    C1h.A08(objArr, strA00);
                                }
                                return objArr;
                            }
                            size$iv = i;
                        }
                    }
                }
            }
            return objArr;
        }
        throw new NullPointerException();
    }
}
