package com.facebook.ads.androidx.media3.extractor.mkv;

import android.net.Uri;
import android.util.SparseArray;
import com.facebook.ads.androidx.media3.common.ColorInfo;
import com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor;
import com.facebook.ads.redexgen.X.AbstractC1747Ln;
import com.facebook.ads.redexgen.X.C1769Mk;
import com.facebook.ads.redexgen.X.C2134aa;
import com.facebook.ads.redexgen.X.C2135ab;
import com.facebook.ads.redexgen.X.C2136ac;
import com.facebook.ads.redexgen.X.InterfaceC2068Yv;
import com.facebook.ads.redexgen.X.InterfaceC2069Yw;
import com.facebook.ads.redexgen.X.InterfaceC2072Yz;
import com.facebook.ads.redexgen.X.InterfaceC2131aX;
import com.facebook.ads.redexgen.X.L9;
import com.facebook.ads.redexgen.X.MW;
import com.facebook.ads.redexgen.X.N1;
import com.facebook.ads.redexgen.X.PN;
import com.facebook.ads.redexgen.X.PT;
import com.facebook.ads.redexgen.X.Q4;
import com.facebook.ads.redexgen.X.Q9;
import com.facebook.ads.redexgen.X.ZE;
import com.facebook.ads.redexgen.X.ZH;
import com.facebook.ads.redexgen.X.ZP;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.gms.ads.AdSize;
import com.unity3d.mediation.LevelPlayAdError;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class MatroskaExtractor implements InterfaceC2068Yv {
    public static byte[] A0t;
    public static String[] A0u = {"n35jlXKYxSLPKei", "oyBUc05xsKSY0xx573VvoQYblK33aBWA", "RuE8YUOCzFB4NWBvGl8SjTsvK65B9fo9", "f1onTyczxw2VkpzWPBb6LgtZuATzfb1L", "cKc0NjS1OsMDdgfudGbTQKLf4ZclKflP", "fkOAvMHAcgxE84ft7z", "7fYF0qaATcv5oeud3szBnpxgbYKS353G", "FWXPtRSYshxgTl8OaXh6o9l9SG9OkQHb"};
    public static final InterfaceC2072Yz A0v;
    public static final Map<String, Integer> A0w;
    public static final UUID A0x;
    public static final byte[] A0y;
    public static final byte[] A0z;
    public static final byte[] A10;
    public static final byte[] A11;
    public byte A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public long A0D;
    public long A0E;
    public long A0F;
    public long A0G;
    public long A0H;
    public long A0I;
    public long A0J;
    public long A0K;
    public long A0L;
    public long A0M;
    public long A0N;
    public long A0O;

    @MetaExoPlayerCustomization
    public SparseArray<C2134aa> A0P;
    public MW A0Q;
    public MW A0R;
    public InterfaceC2069Yw A0S;
    public C2134aa A0T;

    @MetaExoPlayerCustomization
    public String A0U;
    public ByteBuffer A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public boolean A0c;
    public boolean A0d;
    public boolean A0e;
    public int[] A0f;
    public final C1769Mk A0g;
    public final C1769Mk A0h;
    public final C1769Mk A0i;
    public final C1769Mk A0j;
    public final C1769Mk A0k;
    public final C1769Mk A0l;
    public final C1769Mk A0m;
    public final C1769Mk A0n;
    public final C1769Mk A0o;
    public final C1769Mk A0p;
    public final InterfaceC2131aX A0q;
    public final C2136ac A0r;
    public final boolean A0s;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x036f  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int A02(com.facebook.ads.redexgen.X.Q9 r11, com.facebook.ads.redexgen.X.C2134aa r12, int r13, boolean r14) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1003
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor.A02(com.facebook.ads.redexgen.X.Q9, com.facebook.ads.redexgen.X.aa, int, boolean):int");
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0t, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 111);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        byte[] bArr = {15, 66, 90, 92, 91, 15, 77, 74, 15, 70, 65, 15, 78, 15, 108, 90, 74, 92, 82, 31, 7, 1, 6, 82, 16, 23, 82, 27, 28, 82, 19, 82, 38, 0, 19, 17, 25, 55, 28, 6, 0, 11, 46, 96, 97, 122, 46, 125, 123, 126, 126, 97, 124, 122, 107, 106, 27, 14, 15, 90, 4, 27, 14, 12, 90, 4, 27, 14, 12, 90, 4, 27, 14, 12, 90, 0, 21, 23, 65, 31, 0, 21, 23, 65, 31, 0, 21, 23, 65, 9, 0, 21, 22, 65, 0, 21, 23, 65, 31, 0, 21, 23, 65, 31, 0, 21, 23, 65, 11, 0, 21, 22, 65, 99, 103, 113, 113, 71, 86, 86, 75, 76, 69, 81, 97, 75, 82, 74, 71, 80, 111, 77, 70, 71, 2, 102, 120, 102, 102, 100, 70, 88, 70, 68, 52, 11, 21, 14, 30, 25, 70, 88, 67, 83, 84, 40, 66, 95, 87, 85, 66, 84, 84, 111, 113, 106, 122, 125, 1, 98, 97, 125, 125, 98, 107, 125, 125, 13, 19, 9, 13, 15, 127, 65, 95, 70, 76, 65, 67, 57, 39, 53, 40, 61, 63, 87, 52, 74, 2, 28, 14, 19, 6, 4, 108, 15, 112, 7, 25, 11, 21, 105, 7, 5, 11, 86, 72, 88, 71, 66, 68, 31, 1, 14, 29, 19, 113, 24, 18, 17, 31, 10, 113, 23, 27, 27, 27, 87, 73, 70, 85, 91, 57, 95, 88, 66, 57, 84, 95, 81, 123, 101, 106, 121, 119, 21, 115, 116, 110, 21, 118, 115, 110, 45, 51, 56, 62, 57, 41, 36, 40, 70, 88, 81, 72, 85, 69, 78, 84, 73, 107, 100, 45, 126, 42, 121, 105, 107, 102, 111, 42, 126, 99, 103, 111, 105, 101, 110, 111, 42, 122, 120, 99, 101, 120, 42, 126, 101, 42, 126, 99, 103, 111, 105, 101, 110, 111, 89, 105, 107, 102, 111, 42, 104, 111, 99, 100, 109, 42, 121, 111, 126, 36, 16, 60, 55, 54, 48, 26, 55, 115, 58, 32, 115, 62, 58, 32, 32, 58, 61, 52, 115, 58, 61, 115, 7, 33, 50, 48, 56, 22, 61, 39, 33, 42, 115, 54, 63, 54, 62, 54, 61, 39, 81, 125, 127, 112, 123, 124, 123, 124, 117, 50, 119, 124, 113, 96, 107, 98, 102, 123, 125, 124, 50, 115, 124, 118, 50, 113, 125, 127, 98, 96, 119, 97, 97, 123, 125, 124, 50, 123, 97, 50, 124, 125, 102, 50, 97, 103, 98, 98, 125, 96, 102, 119, 118, 99, 79, 78, 84, 69, 78, 84, 99, 79, 77, 80, 97, 76, 71, 79, 0, 82, 126, 127, 101, 116, 127, 101, 84, 127, 114, 80, 125, 118, 126, 49, 86, 122, 123, 97, 112, 123, 97, 80, 123, 118, 122, 113, 124, 123, 114, 90, 103, 113, 112, 103, 53, 84, 120, 121, 99, 114, 121, 99, 82, 121, 116, 120, 115, 126, 121, 112, 68, 116, 120, 103, 114, 55, 46, 3, 25, 9, 11, 24, 14, 3, 4, 13, 74, 6, 11, 25, 30, 74, 9, 31, 15, 74, 26, 5, 3, 4, 30, 74, 29, 3, 30, 2, 74, 31, 4, 15, 18, 26, 15, 9, 30, 15, 14, 74, 14, 31, 24, 11, 30, 3, 5, 4, 80, 74, 107, 64, 76, 123, 86, 95, 74, 15, 116, 95, 83, 100, 73, 64, 85, 98, 85, 81, 84, 102, 85, 66, 67, 89, 95, 94, 16, 64, 71, 72, 73, 37, 105, 100, 102, 108, 107, 98, 37, 118, 100, 104, 117, 105, 96, 37, 118, 108, 127, 96, 37, 106, 112, 113, 37, 106, 99, 37, 119, 100, 107, 98, 96, 43, 84, 83, 92, 93, 67, 116, 112, 117, 71, 116, 99, 98, 120, 126, 127, 49, 104, 65, 72, 64, 72, 67, 89, 13, 31, 52, 57, 40, 35, 42, 46, 63, 62, 122, 14, 40, 59, 57, 49, 122, 60, 53, 47, 52, 62, 122, 56, 47, 46, 122, 25, 53, 52, 46, 63, 52, 46, 31, 52, 57, 17, 63, 35, 19, 30, 122, 45, 59, 41, 122, 52, 53, 46, 122, 60, 53, 47, 52, 62, 50, 15, 3, 18, 25, 4, 30, 24, 25, 87, 21, 30, 3, 87, 30, 4, 87, 4, 18, 3, 87, 30, 25, 87, 4, 30, 16, 25, 22, 27, 87, 21, 14, 3, 18, 28, 53, 40, 55, 59, 46, 96, 122, 9, 46, 59, 40, 46, 118, 122, 31, 52, 62, 118, 122, 8, 63, 59, 62, 21, 40, 62, 63, 40, 118, 122, 22, 59, 35, 63, 40, 118, 122, 9, 46, 35, 54, 63, 118, 122, 20, 59, 55, 63, 118, 122, 23, 59, 40, 61, 51, 52, 22, 118, 122, 23, 59, 40, 61, 51, 52, 8, 118, 122, 23, 59, 40, 61, 51, 52, 12, 118, 122, 31, 60, 60, 63, 57, 46, 118, 122, 14, 63, 34, 46, 47, 3, 12, 6, 3, 22, 13, 16, 27, 66, 7, 14, 7, 15, 7, 12, 22, 66, 49, 7, 7, 9, 43, 38, 66, 13, 16, 66, 49, 7, 7, 9, 50, 13, 17, 11, 22, 11, 13, 12, 66, 12, 13, 22, 66, 4, 13, 23, 12, 6, 14, 34, 55, 49, 44, 48, 40, 34, 6, 59, 55, 49, 34, 32, 55, 44, 49, 122, 66, 91, 67, 94, 71, 91, 82, 23, 100, 82, 80, 90, 82, 89, 67, 23, 82, 91, 82, 90, 82, 89, 67, 68, 23, 89, 88, 67, 23, 68, 66, 71, 71, 88, 69, 67, 82, 83, 82, 115, 60, 106, 125, 112, 117, 120, 60, 104, 110, 125, 127, 119, 111, 60, 107, 121, 110, 121, 60, 122, 115, 105, 114, 120, 104, 73, 6, 80, 71, 74, 79, 66, 6, 80, 71, 84, 79, 72, 82, 6, 74, 67, 72, 65, 82, 78, 6, 75, 71, 85, 77, 6, 64, 73, 83, 72, 66, 79, 67, 88, 74, 94, 79, 73, 94, 40, 36, 51, 63, 54, 45, 84, 43, 
        60, 40, 0, 12, 7, 22, 11, 7, 124, 18, 0, 0, 66, 78, 69, 84, 73, 69, 62, 68, 69, 87, 41, 104, 100, 111, 126, 99, 111, 20, 108, 126, 121, 109, 111, 111, 113, 125, 116, 109, 96, 113, 119, 96, 63, 7, 5, 28, 28, 5, 2, 11, 76, 31, 25, 14, 24, 5, 24, 0, 9, 76, 31, 13, 1, 28, 0, 9, 76, 5, 2, 76, 0, 13, 15, 9, 8, 76, 14, 0, 3, 15, 7, 66, 16, 40, 42, 51, 51, 42, 45, 36, 99, 48, 54, 33, 55, 42, 55, 47, 38, 99, 48, 34, 46, 51, 47, 38, 99, 52, 42, 55, 43, 99, 45, 44, 99, 39, 54, 49, 34, 55, 42, 44, 45, 109, 106, 81, 90, 71, 79, 90, 92, 75, 90, 91, 31, 86, 91, 5, 31, 16, 43, 32, 61, 53, 32, 38, 49, 32, 33, 101, 41, 36, 38, 44, 43, 34, 101, 51, 36, 41, 48, 32, 127, 101, 105, 96, 126, 105, 14, 56, 49, 35, 62, 43, 41, 92, 9, 0, 18, 15, 26, 24, 107, 112, 22, 12, 16, 112, 30, 15, 100, 109, 127, 98, 119, 117, 6, 29, 123, 97, 125, 29, 115, 97, 98, 2, 11, 25, 4, 17, 19, 96, 123, 29, 7, 27, 123, 21, 2, 23, 59, 50, 32, 61, 40, 42, 89, 66, 36, 62, 34, 66, 62, 61, 11, 2, 16, 13, 24, 26, 21, 114, 20, 14, 18, 114, 21, 24, 11, 30, 73, 64, 82, 76, 48, 73, 89, 72, 48, 89, 80, 74, 77, 92, 92, 23, 30, 21, 9, 4, 14, 19, 0, 37, 44, 37, 35, 75, 104, 97, 104, 110, 7, 80, 76, 91, 103, 78, 81, 92, 93, 87, 103, 74, 87, 76, 121, 21, 8, 8, 8, 82, 78, 89, 101, 76, 83, 94, 95, 85, 101, 72, 85, 78, 123, 23, 10, 3, 10, 116, 104, 127, 67, 106, 117, 120, 121, 115, 67, 110, 115, 104, 93, 49, 45, 36, 44, 85, 73, 94, 98, 75, 84, 89, 88, 82, 98, 79, 82, 73, 124, 16, 15, 10, 13, 32, 44, 57, 63, 34, 62, 38, 44, 83, 76, 65, 64, 74, 10, 82, 64, 71, 72, 36, 54, 49, 62};
        String[] strArr = A0u;
        if (strArr[6].charAt(9) == strArr[2].charAt(9)) {
            throw new RuntimeException();
        }
        A0u[0] = "z";
        A0t = bArr;
    }

    static {
        A0B();
        A0v = new InterfaceC2072Yz() { // from class: com.facebook.ads.redexgen.X.PP
            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final InterfaceC2068Yv[] A5w() {
                return MatroskaExtractor.A0Q();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final /* synthetic */ InterfaceC2068Yv[] A5x(Uri uri, Map map) {
                return AbstractC2071Yy.A01(this, uri, map);
            }
        };
        A10 = new byte[]{49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
        A0y = N1.A1G(A06(729, 90, 53));
        A0z = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        A11 = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        A0x = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap map = new HashMap();
        map.put(A06(1285, 18, 87), 0);
        map.put(A06(1303, 18, 85), 90);
        map.put(A06(1321, 18, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE), 180);
        map.put(A06(1339, 18, 82), 270);
        Map<String, Integer> trackNameToRotationDegrees = Collections.unmodifiableMap(map);
        A0w = trackNameToRotationDegrees;
    }

    public MatroskaExtractor() {
        this(0);
    }

    public MatroskaExtractor(int i) {
        this(new PT(), i);
    }

    public MatroskaExtractor(InterfaceC2131aX interfaceC2131aX, int i) {
        this.A0M = -1L;
        this.A0O = -9223372036854775807L;
        this.A0I = -9223372036854775807L;
        this.A0J = -9223372036854775807L;
        this.A0H = -1L;
        this.A0L = -1L;
        this.A0G = -9223372036854775807L;
        this.A0q = interfaceC2131aX;
        this.A0q.AAr(new PN(this));
        this.A0s = (i & 1) == 0;
        this.A0r = new C2136ac();
        this.A0P = new SparseArray<>();
        this.A0l = new C1769Mk(4);
        this.A0p = new C1769Mk(ByteBuffer.allocate(4).putInt(-1).array());
        this.A0m = new C1769Mk(4);
        this.A0j = new C1769Mk(ZE.A03);
        this.A0i = new C1769Mk(4);
        this.A0k = new C1769Mk();
        this.A0n = new C1769Mk();
        this.A0g = new C1769Mk(8);
        this.A0h = new C1769Mk();
        this.A0o = new C1769Mk();
        this.A0f = new int[1];
    }

    private int A00() {
        int sampleSize = this.A09;
        A0A();
        return sampleSize;
    }

    private int A01(Q9 q9, ZP zp, int i) throws IOException {
        int strippedBytesLeft = this.A0k.A07();
        if (strippedBytesLeft > 0) {
            int bytesWritten = Math.min(i, strippedBytesLeft);
            zp.AK9(this.A0k, bytesWritten);
            return bytesWritten;
        }
        return zp.AK7(q9, i, false);
    }

    private long A03(long j) throws L9 {
        if (this.A0O != -9223372036854775807L) {
            return N1.A0U(j, this.A0O, 1000L);
        }
        throw L9.A01(A06(279, 54, 101), null);
    }

    /* JADX WARN: Incorrect condition in loop: B:19:0x0053 */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.facebook.ads.redexgen.X.ZK A04(com.facebook.ads.redexgen.X.MW r11, com.facebook.ads.redexgen.X.MW r12) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor.A04(com.facebook.ads.redexgen.X.MW, com.facebook.ads.redexgen.X.MW):com.facebook.ads.redexgen.X.ZK");
    }

    private final C2134aa A05(int i) throws L9 {
        A0D(i);
        return this.A0T;
    }

    @EnsuresNonNull
    private void A09() {
        AbstractC1747Ln.A02(this.A0S);
    }

    private void A0A() {
        this.A08 = 0;
        this.A09 = 0;
        this.A0A = 0;
        this.A0Y = false;
        this.A0b = false;
        this.A0a = false;
        this.A0B = 0;
        this.A00 = (byte) 0;
        this.A0Z = false;
        this.A0k.A0d(0);
    }

    @EnsuresNonNull
    private void A0C(int i) throws L9 {
        if (this.A0R != null && this.A0Q != null) {
        } else {
            throw L9.A01(A06(LevelPlayAdError.ERROR_CODE_SHOW_WHILE_LOAD, 8, 66) + i + A06(0, 18, 64), null);
        }
    }

    @EnsuresNonNull
    private void A0D(int i) throws L9 {
        if (this.A0T != null) {
        } else {
            throw L9.A01(A06(LevelPlayAdError.ERROR_CODE_SHOW_WHILE_LOAD, 8, 66) + i + A06(18, 24, 29), null);
        }
    }

    private void A0E(Q9 q9, int i) throws IOException {
        if (this.A0l.A0A() >= i) {
            return;
        }
        if (this.A0l.A08() < i) {
            this.A0l.A0c(Math.max(this.A0l.A08() * 2, i));
        }
        q9.readFully(this.A0l.A0l(), this.A0l.A0A(), i - this.A0l.A0A());
        this.A0l.A0e(i);
    }

    private void A0F(Q9 q9, byte[] bArr, int i) throws IOException {
        int length = bArr.length + i;
        int sizeWithPrefix = this.A0n.A08();
        if (sizeWithPrefix < length) {
            int sizeWithPrefix2 = length + i;
            this.A0n.A0i(Arrays.copyOf(bArr, sizeWithPrefix2));
        } else {
            byte[] bArrA0l = this.A0n.A0l();
            int sizeWithPrefix3 = bArr.length;
            System.arraycopy(bArr, 0, bArrA0l, 0, sizeWithPrefix3);
        }
        byte[] bArrA0l2 = this.A0n.A0l();
        int sizeWithPrefix4 = bArr.length;
        q9.readFully(bArrA0l2, sizeWithPrefix4, i);
        this.A0n.A0f(0);
        this.A0n.A0e(length);
    }

    private void A0G(Q9 q9, byte[] bArr, int i, int i2) throws IOException {
        int iMin = Math.min(i2, this.A0k.A07());
        int pendingStrippedBytes = i + iMin;
        q9.readFully(bArr, pendingStrippedBytes, i2 - iMin);
        if (iMin > 0) {
            this.A0k.A0k(bArr, i, iMin);
        }
    }

    private final void A0H(C2134aa c2134aa, int i, Q9 q9, int i2) throws IOException {
        if (i == 4) {
            if (A06(1280, 5, 81).equals(c2134aa.A0d)) {
                this.A0o.A0d(i2);
                String[] strArr = A0u;
                if (strArr[3].charAt(18) != strArr[4].charAt(18)) {
                    throw new RuntimeException();
                }
                A0u[5] = "ycRCH0OYlxA9fSn";
                q9.readFully(this.A0o.A0l(), 0, i2);
                return;
            }
        }
        q9.ALL(i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004e, code lost:
    
        if (A06(com.ironsource.mediationsdk.logger.IronSourceError.ERROR_RV_SHOW_CALLED_WRONG_STATE, 13, 84).equals(r15.A0d) != false) goto L13;
     */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0I(com.facebook.ads.redexgen.X.C2134aa r15, long r16, int r18, int r19, int r20) {
        /*
            Method dump skipped, instruction units count: 314
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor.A0I(com.facebook.ads.redexgen.X.aa, long, int, int, int):void");
    }

    private final void A0J(C2134aa c2134aa, Q9 q9, int i) throws IOException {
        if (c2134aa.A0n == 1685485123 || c2134aa.A0n == 1685480259) {
            c2134aa.A0k = new byte[i];
            q9.readFully(c2134aa.A0k, 0, i);
        } else {
            q9.ALL(i);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0008  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A0K(java.lang.String r5, long r6, byte[] r8) {
        /*
            int r0 = r5.hashCode()
            r3 = 0
            switch(r0) {
                case 738597099: goto L38;
                case 1045209816: goto L26;
                case 1422270023: goto L14;
                default: goto L8;
            }
        L8:
            r0 = -1
        L9:
            r1 = 1000(0x3e8, double:4.94E-321)
            switch(r0) {
                case 0: goto L6e;
                case 1: goto L5b;
                case 2: goto L4a;
                default: goto Le;
            }
        Le:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>()
            throw r0
        L14:
            r2 = 1012(0x3f4, float:1.418E-42)
            r1 = 11
            r0 = 126(0x7e, float:1.77E-43)
            java.lang.String r0 = A06(r2, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L8
            r0 = 0
            goto L9
        L26:
            r2 = 1023(0x3ff, float:1.434E-42)
            r1 = 13
            r0 = 84
            java.lang.String r0 = A06(r2, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L8
            r0 = 2
            goto L9
        L38:
            r2 = 1002(0x3ea, float:1.404E-42)
            r1 = 10
            r0 = 60
            java.lang.String r0 = A06(r2, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L8
            r0 = 1
            goto L9
        L4a:
            r5 = 94
            r4 = 19
            r0 = 74
            java.lang.String r0 = A06(r5, r4, r0)
            byte[] r6 = A0O(r6, r0, r1)
            r5 = 25
            goto L7e
        L5b:
            r2 = 56
            r1 = 19
            r0 = 81
            java.lang.String r2 = A06(r2, r1, r0)
            r0 = 10000(0x2710, double:4.9407E-320)
            byte[] r6 = A0O(r6, r2, r0)
            r5 = 21
            goto L7e
        L6e:
            r5 = 75
            r4 = 19
            r0 = 74
            java.lang.String r0 = A06(r5, r4, r0)
            byte[] r6 = A0O(r6, r0, r1)
            r5 = 19
        L7e:
            int r4 = r6.length
            java.lang.String[] r2 = com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor.A0u
            r0 = 3
            r1 = r2[r0]
            r0 = 4
            r2 = r2[r0]
            r0 = 18
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L99
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L99:
            java.lang.String[] r2 = com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor.A0u
            java.lang.String r1 = "JA1wjLV1mIfg36WFMLiz"
            r0 = 0
            r2[r0] = r1
            java.lang.System.arraycopy(r6, r3, r8, r5, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor.A0K(java.lang.String, long, byte[]):void");
    }

    private boolean A0L(ZH zh, long j) {
        if (this.A0c) {
            this.A0L = j;
            zh.A00 = this.A0H;
            this.A0c = false;
            return true;
        }
        if (!this.A0e || this.A0L == -1) {
            return false;
        }
        zh.A00 = this.A0L;
        this.A0L = -1L;
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02f0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0009  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000d A[RETURN] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0M(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 958
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor.A0M(java.lang.String):boolean");
    }

    public static byte[] A0O(long j, String str, long j2) {
        AbstractC1747Ln.A07(j != -9223372036854775807L);
        int i = (int) (j / 3600000000L);
        long j3 = j - ((((long) i) * 3600) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - ((((long) i2) * 60) * 1000000);
        int i3 = (int) (j4 / 1000000);
        int minutes = (int) ((j4 - (((long) i3) * 1000000)) / j2);
        return N1.A1G(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(minutes)));
    }

    public static int[] A0P(int[] iArr, int i) {
        if (iArr == null) {
            int[] iArr2 = new int[i];
            String[] strArr = A0u;
            if (strArr[3].charAt(18) != strArr[4].charAt(18)) {
                throw new RuntimeException();
            }
            A0u[5] = "";
            return iArr2;
        }
        if (iArr.length >= i) {
            return iArr;
        }
        return new int[Math.max(iArr.length * 2, i)];
    }

    public static /* synthetic */ InterfaceC2068Yv[] A0Q() {
        return new InterfaceC2068Yv[]{new MatroskaExtractor()};
    }

    @MetaExoPlayerCustomization
    public final int A0R(int i) {
        switch (i) {
            case MRAID_JS_WRITE_FAILED_VALUE:
            case PRIVACY_URL_ERROR_VALUE:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case AD_RESPONSE_EMPTY_VALUE:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30114:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case STORE_REGION_CODE_ERROR_VALUE:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case AdSize.WIDE_SKYSCRAPER_WIDTH /* 160 */:
            case 166:
            case 174:
            case 183:
            case 187:
            case AD_LOAD_FAIL_EMPTY_BID_PAYLOAD_VALUE:
            case AD_LOAD_FAIL_PLACEMENT_ID_MISMATCH_VALUE:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 26568:
            case 28032:
            case 29555:
            case 30113:
            case 30320:
            case 290298740:
            case 307544935:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            case 17543:
            case 17827:
                return 6;
            default:
                return 0;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:61:0x018b */
    /* JADX WARN: Removed duplicated region for block: B:55:0x016a A[LOOP:0: B:49:0x013b->B:55:0x016a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01d8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0S(int r15) throws com.facebook.ads.redexgen.X.L9 {
        /*
            Method dump skipped, instruction units count: 606
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor.A0S(int):void");
    }

    public final void A0T(int i, double d) throws L9 {
        switch (i) {
            case 181:
                A05(i).A0T = (int) d;
                break;
            case 17545:
                this.A0I = (long) d;
                break;
            case 21969:
                A05(i).A06 = (float) d;
                break;
            case 21970:
                A05(i).A07 = (float) d;
                break;
            case 21971:
                A05(i).A04 = (float) d;
                break;
            case 21972:
                A05(i).A05 = (float) d;
                break;
            case 21973:
                A05(i).A02 = (float) d;
                break;
            case 21974:
                A05(i).A03 = (float) d;
                break;
            case 21975:
                A05(i).A0B = (float) d;
                break;
            case 21976:
                A05(i).A0C = (float) d;
                break;
            case 21977:
                A05(i).A00 = (float) d;
                break;
            case 21978:
                A05(i).A01 = (float) d;
                break;
            case 30323:
                A05(i).A0A = (float) d;
                break;
            case 30324:
                A05(i).A08 = (float) d;
                break;
            case 30325:
                A05(i).A09 = (float) d;
                break;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:45:0x0186 */
    /* JADX WARN: Incorrect condition in loop: B:58:0x0215 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0U(int r19, int r20, com.facebook.ads.redexgen.X.Q9 r21) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 914
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor.A0U(int, int, com.facebook.ads.redexgen.X.Q9):void");
    }

    public final void A0V(int i, long j) throws L9 {
        String strA06 = A06(42, 14, 97);
        switch (i) {
            case MRAID_JS_WRITE_FAILED_VALUE:
                A05(i).A0V = (int) j;
                return;
            case PRIVACY_URL_ERROR_VALUE:
                A05(i).A0f = j == 1;
                return;
            case 155:
                this.A0D = A03(j);
                return;
            case 159:
                A05(i).A0E = (int) j;
                return;
            case 176:
                A05(i).A0W = (int) j;
                return;
            case 179:
                A0C(i);
                this.A0R.A04(A03(j));
                return;
            case 186:
                A05(i).A0M = (int) j;
                return;
            case AD_RESPONSE_EMPTY_VALUE:
                A05(i).A0R = (int) j;
                return;
            case 231:
                long jA03 = A03(j);
                if (A0u[5].length() != 10) {
                    String[] strArr = A0u;
                    strArr[1] = "52iGOnF8sAKd7TeIDUT00zGei62YfQlH";
                    strArr[7] = "zdNaWTbJsyw02SdaQGKjaq2UXcrBxXHV";
                    this.A0G = jA03;
                    return;
                }
                throw new RuntimeException();
            case 238:
                this.A01 = (int) j;
                return;
            case 241:
                if (this.A0d) {
                    return;
                }
                A0C(i);
                String[] strArr2 = A0u;
                if (strArr2[6].charAt(9) != strArr2[2].charAt(9)) {
                    A0u[0] = "gUMGsllvtbNkA1aKoD6tLY2x9WdBpx";
                    this.A0Q.A04(j);
                    this.A0d = true;
                    return;
                } else {
                    this.A0Q.A04(j);
                    this.A0d = true;
                    return;
                }
            case 251:
                this.A0W = true;
                return;
            case 16871:
                A05(i).A0n = (int) j;
                return;
            case 16980:
                if (j == 3) {
                    return;
                } else {
                    throw L9.A01(A06(426, 16, 79) + j + strA06, null);
                }
            case 17029:
                if (j >= 1 && j <= 2) {
                    return;
                } else {
                    throw L9.A01(A06(559, 19, 95) + j + strA06, null);
                }
            case 17143:
                if (j == 1) {
                    return;
                } else {
                    throw L9.A01(A06(615, 16, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE) + j + strA06, null);
                }
            case 18401:
                if (j == 5) {
                    return;
                } else {
                    throw L9.A01(A06(442, 15, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE) + j + strA06, null);
                }
            case 18408:
                if (j == 1) {
                    return;
                } else {
                    throw L9.A01(A06(113, 22, 77) + j + strA06, null);
                }
            case 20529:
                if (j == 0) {
                    return;
                } else {
                    throw L9.A01(A06(457, 21, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE) + j + strA06, null);
                }
            case 20530:
                String[] strArr3 = A0u;
                if (strArr3[6].charAt(9) != strArr3[2].charAt(9)) {
                    String[] strArr4 = A0u;
                    strArr4[3] = "Cv59KJKrR0tps5FmkhbxFTfn9ouit0UD";
                    strArr4[4] = "liGwdJA13SHAHMQsUXbT1GXi52Onn9ha";
                    if (j == 1) {
                        return;
                    }
                } else {
                    A0u[5] = "lGc0m1TKlQFBt";
                    if (j == 1) {
                        return;
                    }
                }
                throw L9.A01(A06(478, 21, 120) + j + strA06, null);
            case 21420:
                this.A0K = this.A0M + j;
                return;
            case 21432:
                int i2 = (int) j;
                A0D(i);
                switch (i2) {
                    case 0:
                        this.A0T.A0U = 0;
                        return;
                    case 1:
                        this.A0T.A0U = 2;
                        return;
                    case 3:
                        this.A0T.A0U = 1;
                        return;
                    case 15:
                        this.A0T.A0U = 3;
                        return;
                    default:
                        return;
                }
            case 21680:
                A05(i).A0L = (int) j;
                return;
            case 21682:
                A05(i).A0K = (int) j;
                return;
            case 21690:
                A05(i).A0J = (int) j;
                return;
            case 21930:
                A05(i).A0g = j == 1;
                return;
            case 21945:
                A0D(i);
                String[] strArr5 = A0u;
                if (strArr5[1].charAt(8) != strArr5[7].charAt(8)) {
                    throw new RuntimeException();
                }
                String[] strArr6 = A0u;
                strArr6[1] = "t6EoqIWLssHLilzBaC3mt7aSx1Rglp3B";
                strArr6[7] = "hFHiNpaFswlzcwPeAp3PEP954UAGzW8f";
                switch ((int) j) {
                    case 1:
                        this.A0T.A0F = 2;
                        return;
                    case 2:
                        this.A0T.A0F = 1;
                        return;
                    default:
                        return;
                }
            case 21946:
                A0D(i);
                int i3 = (int) j;
                String[] strArr7 = A0u;
                if (strArr7[6].charAt(9) == strArr7[2].charAt(9)) {
                    throw new RuntimeException();
                }
                String[] strArr8 = A0u;
                strArr8[3] = "icGEWmiHnnjih8kbTQb6JCfYXldqmIbJ";
                strArr8[4] = "1A3ABsg8w5Q0gexuCnbrDxHaxk8pwv73";
                int colorTransfer = ColorInfo.A01(i3);
                if (colorTransfer == -1) {
                    return;
                }
                this.A0T.A0H = colorTransfer;
                return;
            case 21947:
                A0D(i);
                this.A0T.A0h = true;
                int iA00 = ColorInfo.A00((int) j);
                if (iA00 == -1) {
                    return;
                }
                this.A0T.A0G = iA00;
                return;
            case 21948:
                A05(i).A0O = (int) j;
                return;
            case 21949:
                A05(i).A0P = (int) j;
                return;
            case 21998:
                A05(i).A0N = (int) j;
                return;
            case 22186:
                A05(i).A0X = j;
                return;
            case 22203:
                A05(i).A0Y = j;
                return;
            case 25188:
                A05(i).A0D = (int) j;
                return;
            case 30114:
                this.A0E = j;
                return;
            case 30321:
                A0D(i);
                switch ((int) j) {
                    case 0:
                        C2134aa c2134aa = this.A0T;
                        if (A0u[5].length() != 10) {
                            A0u[5] = "aN9h0R0mjPFVivU";
                            c2134aa.A0S = 0;
                            return;
                        } else {
                            c2134aa.A0S = 0;
                            return;
                        }
                    case 1:
                        this.A0T.A0S = 1;
                        return;
                    case 2:
                        this.A0T.A0S = 2;
                        return;
                    case 3:
                        C2134aa c2134aa2 = this.A0T;
                        if (A0u[5].length() != 10) {
                            A0u[0] = "prndpuhqxsYFNoMyrRl";
                            c2134aa2.A0S = 3;
                            return;
                        }
                        throw new RuntimeException();
                    default:
                        return;
                }
            case 2352003:
                A05(i).A0I = (int) j;
                return;
            case 2807729:
                this.A0O = j;
                return;
            default:
                return;
        }
    }

    public final void A0W(int i, long j, long j2) throws L9 {
        A09();
        switch (i) {
            case AdSize.WIDE_SKYSCRAPER_WIDTH /* 160 */:
                this.A0W = false;
                this.A0E = 0L;
                return;
            case 174:
                this.A0T = new C2134aa();
                return;
            case 187:
                this.A0d = false;
                return;
            case 19899:
                this.A0C = -1;
                this.A0K = -1L;
                return;
            case 20533:
                C2134aa c2134aaA05 = A05(i);
                String[] strArr = A0u;
                if (strArr[6].charAt(9) != strArr[2].charAt(9)) {
                    String[] strArr2 = A0u;
                    strArr2[1] = "mFW7Td0qsfohCgUmhayUlqXtb6rLWQIv";
                    strArr2[7] = "tUA2AFYnsh1YTSKRpVKlRxtretRcDhD9";
                    c2134aaA05.A0i = true;
                    return;
                }
                throw new RuntimeException();
            case 21968:
                A05(i).A0h = true;
                return;
            case 25152:
            default:
                return;
            case 408125543:
                if (this.A0M == -1 || this.A0M == j) {
                    this.A0M = j;
                    this.A0N = j2;
                    return;
                }
                throw L9.A01(A06(886, 39, 88), null);
            case 475249515:
                this.A0R = new MW();
                this.A0Q = new MW();
                return;
            case 524531317:
                if (this.A0e) {
                    return;
                }
                if (this.A0s && this.A0H != -1) {
                    this.A0c = true;
                    return;
                } else {
                    this.A0S.AKP(new Q4(this.A0J));
                    this.A0e = true;
                    return;
                }
        }
    }

    @MetaExoPlayerCustomization
    public final void A0X(int i, String str) throws L9 {
        switch (i) {
            case STORE_REGION_CODE_ERROR_VALUE:
                A05(i).A0d = str;
                return;
            case 17026:
                if (A06(1375, 4, 60).equals(str) || A06(1357, 8, 34).equals(str)) {
                    return;
                } else {
                    throw L9.A01(A06(551, 8, 64) + str + A06(42, 14, 97), null);
                }
            case 17827:
                this.A0U = str;
                return;
            case 21358:
                A05(i).A0e = str;
                return;
            case 2274716:
                A05(i).A0o = str;
                return;
            default:
                return;
        }
    }

    public final boolean A0Y(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AAq(InterfaceC2069Yw interfaceC2069Yw) {
        this.A0S = interfaceC2069Yw;
    }

    /* JADX WARN: Incorrect condition in loop: B:19:0x0046 */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int AIY(com.facebook.ads.redexgen.X.Q9 r7, com.facebook.ads.redexgen.X.ZH r8) throws java.io.IOException {
        /*
            r6 = this;
            r3 = 0
            r6.A0X = r3
            r5 = 1
        L4:
            if (r5 == 0) goto L3d
            boolean r4 = r6.A0X
            java.lang.String[] r1 = com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor.A0u
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 10
            if (r1 == r0) goto L37
            java.lang.String[] r2 = com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor.A0u
            java.lang.String r1 = "4tqi7bFn1JEEfWMdp0bGnvqntlSkZWhx"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "CbmYgkIMdx7S7TZ0HGbtU5a0tFNS6npw"
            r0 = 4
            r2[r0] = r1
            if (r4 != 0) goto L3d
            com.facebook.ads.redexgen.X.aX r0 = r6.A0q
            boolean r5 = r0.AIb(r7)
            if (r5 == 0) goto L4
            long r0 = r7.A9Q()
            boolean r0 = r6.A0L(r8, r0)
            if (r0 == 0) goto L4
            r0 = 1
            return r0
        L37:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L3d:
            if (r5 != 0) goto L5b
            r1 = 0
        L40:
            android.util.SparseArray<com.facebook.ads.redexgen.X.aa> r0 = r6.A0P
            int r0 = r0.size()
            if (r1 >= r0) goto L59
            android.util.SparseArray<com.facebook.ads.redexgen.X.aa> r0 = r6.A0P
            java.lang.Object r0 = r0.valueAt(r1)
            com.facebook.ads.redexgen.X.aa r0 = (com.facebook.ads.redexgen.X.C2134aa) r0
            com.facebook.ads.redexgen.X.C2134aa.A08(r0)
            r0.A0E()
            int r1 = r1 + 1
            goto L40
        L59:
            r0 = -1
            return r0
        L5b:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor.AIY(com.facebook.ads.redexgen.X.Q9, com.facebook.ads.redexgen.X.ZH):int");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AIp() {
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x001e */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void AKO(long r3, long r5) {
        /*
            r2 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r2.A0G = r0
            r0 = 0
            r2.A05 = r0
            com.facebook.ads.redexgen.X.aX r0 = r2.A0q
            r0.reset()
            com.facebook.ads.redexgen.X.ac r0 = r2.A0r
            r0.A06()
            r2.A0A()
            r1 = 0
        L18:
            android.util.SparseArray<com.facebook.ads.redexgen.X.aa> r0 = r2.A0P
            int r0 = r0.size()
            if (r1 >= r0) goto L2e
            android.util.SparseArray<com.facebook.ads.redexgen.X.aa> r0 = r2.A0P
            java.lang.Object r0 = r0.valueAt(r1)
            com.facebook.ads.redexgen.X.aa r0 = (com.facebook.ads.redexgen.X.C2134aa) r0
            r0.A0F()
            int r1 = r1 + 1
            goto L18
        L2e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor.AKO(long, long):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final boolean ALN(Q9 q9) throws IOException {
        return new C2135ab().A01(q9);
    }
}
