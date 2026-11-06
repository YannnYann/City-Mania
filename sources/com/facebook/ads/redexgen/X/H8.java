package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class H8 implements InterfaceC2861mU {
    public static byte[] A03;
    public static final String A04;
    public final C1642Hh A00;
    public final InterfaceC2874mh<C2906nD> A01;
    public final InterfaceC2874mh<C2906nD> A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 70);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{102, 100, 43, 34, 100, 48, 61, 52, 33, 126, 100, 24, 61, 28, 47, 60, 55, 45, 10, 45, 54, 43, 56, 62, 60, 11, 60, 58, 54, 43, 61, 29, 56, 45, 56, 59, 56, 42, 60, 105, 72, 65, 72, 89, 72, 73, 13, 72, 91, 72, 67, 89, 23, 13, 15, 66, 101, 109, 104, 97, 96, 36, 112, 107, 36, 103, 104, 97, 101, 118, 36, 97, 114, 97, 106, 112, 119, 36, 119, 112, 107, 118, 101, 99, 97, 97, 70, 78, 75, 66, 67, 7, 83, 72, 7, 67, 66, 84, 66, 85, 78, 70, 75, 78, 93, 66, 7, 70, 73, 7, 66, 81, 66, 73, 83, 7, 65, 85, 72, 74, 7, 67, 70, 83, 70, 69, 70, 84, 66, 7, 107, 76, 68, 65, 72, 73, 13, 89, 66, 13, 64, 66, 91, 72, 13, 72, 91, 72, 67, 89, 94, 13, 75, 95, 66, 64, 13, 68, 67, 0, 75, 65, 68, 74, 69, 89, 13, 94, 89, 66, 95, 76, 74, 72, 13, 79, 76, 78, 70, 13, 89, 66, 13, 72, 91, 72, 67, 89, 94, 13, 73, 76, 89, 76, 79, 76, 94, 72, 118, 81, 89, 92, 85, 84, 16, 68, 95, 16, 64, 81, 66, 67, 85, 16, 81, 94, 16, 85, 70, 85, 94, 68, 16, 86, 66, 95, 93, 16, 89, 94, 29, 86, 92, 89, 87, 88, 68, 16, 67, 68, 95, 66, 81, 87, 85, 123, 92, 84, 81, 88, 89, 29, 73, 82, 29, 79, 88, 92, 89, 29, 73, 85, 88, 29, 83, 72, 80, 95, 88, 79, 29, 82, 91, 29, 88, 75, 88, 83, 73, 78, 29, 91, 79, 82, 80, 29, 89, 92, 73, 92, 95, 92, 78, 88, 12, 43, 35, 38, 47, 46, 106, 62, 37, 106, 57, 47, 56, 35, 43, 38, 35, 48, 47, 106, 43, 46, 106, 47, 60, 47, 36, 62, 105, 78, 70, 76, 73, 71, 72, 84, 13, 97, 68, 101, 86, 69, 78, 84, 115, 84, 79, 82, 65, 71, 69, 114, 69, 67, 79, 82, 68, 100, 65, 84, 65, 66, 65, 83, 69, 56, 15, 9, 5, 24, 14, 74, 14, 11, 30, 11, 8, 11, 25, 15, 74, 12, 11, 3, 6, 31, 24, 15, 74, 5, 9, 9, 31, 24, 24, 15, 14, 74, 29, 2, 15, 4, 74, 24, 15, 11, 14, 3, 4, 13, 74, 15, 28, 15, 4, 30, 25, 68, 61, 40, 40, 57, 49, 44, 40, 28, 25, 12, 25, 47, 34, 95, 72, 78, 66, 95, 73, 114, 73, 76, 89, 76, 79, 76, 94, 72, 65, 87, 65, 65, 91, 93, 92, 109, 91, 86, 46, 56, 46, 46, 52, 50, 51, 2, 41, 52, 48, 56, 100, 121, 125, 117, 49, 42, 46, 32, 43, 88, 85, 92, 73, 12, 23, 18, 23, 22, 14, 23};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f0 A[Catch: mq -> 0x0136, TryCatch #3 {mq -> 0x0136, blocks: (B:33:0x00e4, B:35:0x00f0, B:36:0x00ff, B:22:0x0088, B:24:0x008e, B:26:0x009a, B:27:0x00da, B:39:0x0108, B:40:0x010c, B:42:0x0112, B:43:0x0122, B:44:0x0126, B:46:0x012c), top: B:61:0x00e4 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0147  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A0B(int r13, java.util.Set<java.lang.String> r14, java.util.Set<java.lang.String> r15) {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.H8.A0B(int, java.util.Set, java.util.Set):int");
    }

    static {
        A03();
        A04 = H8.class.getSimpleName();
    }

    public H8(C1642Hh c1642Hh) throws IOException {
        this.A00 = c1642Hh;
        this.A01 = new H5(C2871me.A00(A00(11, 28, 31), c1642Hh), new HA(this));
        this.A02 = new H5(C2871me.A00(A00(Sdk.SDKError.Reason.MRAID_UNRECOGNIZED_COMMAND_VALUE, 37, 102), c1642Hh), new H9(this));
    }

    private List<JSONObject> A01(List<JSONObject> list, byte[] bArr, int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            if (i2 == 0) {
                break;
            }
            try {
                list.add(A02(bArr, i, i2));
            } catch (JSONException jsone) {
                if (this.A00.A05().AB6()) {
                    Log.e(A04, A00(85, 45, 97), jsone);
                }
                int start = AbstractC2811lf.A2P;
                A05(start, jsone);
            }
            i += i2;
        }
        return list;
    }

    public static JSONObject A02(byte[] bArr, int i, int i2) throws JSONException {
        return new JSONObject(new String(Arrays.copyOfRange(bArr, i, i + i2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(int i, String str) {
        C2812lg c2812lg = new C2812lg(str);
        c2812lg.A05(1);
        this.A00.A08().AC0(A00(425, 15, 107), i, c2812lg);
    }

    private void A05(int i, Throwable th) {
        this.A00.A08().ABz(A00(425, 15, 107), i, new C2812lg(th));
    }

    public static byte[] A07(C2780lA c2780lA, String str, C2906nD c2906nD) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(423, 2, 0), str);
            jSONObject.put(A00(466, 5, 3), c2906nD.A08());
            jSONObject.put(A00(471, 4, 106), c2906nD.A06().toString());
            jSONObject.put(A00(462, 4, 86), C3101qS.A03(c2906nD.A04()));
            jSONObject.put(A00(450, 12, 27), C3101qS.A03(c2906nD.A03()));
            jSONObject.put(A00(440, 10, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE), c2906nD.A07());
            jSONObject.put(A00(419, 4, 62), new JSONObject(c2906nD.A09()));
            jSONObject.put(A00(412, 7, 26), 0);
        } catch (JSONException e) {
            if (c2780lA.A05().AB6()) {
                Log.e(A04, A00(294, 28, 12), e);
            }
        }
        return jSONObject.toString().getBytes();
    }

    public static byte[] A09(JSONObject jSONObject) {
        return jSONObject.toString().getBytes();
    }

    public final int A0A() {
        try {
            return this.A01.A9V();
        } catch (C2883mq e) {
            if (this.A00.A05().AB6()) {
                Log.e(A04, A00(245, 49, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE), e);
                return 0;
            }
            return 0;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:17:0x0053 */
    /* JADX WARN: Incorrect condition in loop: B:21:0x006d */
    /* JADX WARN: Incorrect condition in loop: B:8:0x002c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<org.json.JSONObject> A0C(int r8) {
        /*
            r7 = this;
            r6 = 0
            r0 = -1
            if (r8 != r0) goto L7
            r6 = 1
            r8 = 30
        L7:
            int[] r1 = new int[r8]
            int r0 = r8 * 1000
            byte[] r4 = new byte[r0]
            java.util.LinkedList r5 = new java.util.LinkedList
            r5.<init>()
            java.util.LinkedList r3 = new java.util.LinkedList
            r3.<init>()
            com.facebook.ads.redexgen.X.mh<com.facebook.ads.redexgen.X.nD> r0 = r7.A01     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            com.facebook.ads.redexgen.X.mg r0 = r0.A75(r4, r1)     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            r3.add(r0)     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            int r2 = r0.A76()     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            java.util.List r5 = r7.A01(r5, r4, r1)     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
        L28:
            boolean r0 = r0.ADF()     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            if (r0 == 0) goto L4b
            if (r2 < r8) goto L32
            if (r6 == 0) goto L4b
        L32:
            if (r6 == 0) goto L39
            r0 = 0
            java.util.Arrays.fill(r1, r0)     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            goto L3d
        L39:
            int r0 = r8 - r2
            int[] r1 = new int[r0]     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
        L3d:
            com.facebook.ads.redexgen.X.mh<com.facebook.ads.redexgen.X.nD> r0 = r7.A01     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            com.facebook.ads.redexgen.X.mg r0 = r0.A75(r4, r1)     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            r3.add(r0)     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            java.util.List r5 = r7.A01(r5, r4, r1)     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            goto L28
        L4b:
            java.util.Iterator r2 = r5.iterator()     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
        L4f:
            boolean r0 = r2.hasNext()     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            if (r0 == 0) goto L65
            java.lang.Object r0 = r2.next()     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            org.json.JSONObject r0 = (org.json.JSONObject) r0     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            com.facebook.ads.redexgen.X.mh<com.facebook.ads.redexgen.X.nD> r1 = r7.A02     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            byte[] r0 = A09(r0)     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            r1.ALa(r0)     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            goto L4f
        L65:
            java.util.Iterator r1 = r3.iterator()     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
        L69:
            boolean r0 = r1.hasNext()     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            if (r0 == 0) goto L9a
            java.lang.Object r0 = r1.next()     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            com.facebook.ads.redexgen.X.mg r0 = (com.facebook.ads.redexgen.X.InterfaceC2873mg) r0     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            r0.A6O()     // Catch: com.facebook.ads.redexgen.X.C2883mq -> L79
            goto L69
        L79:
            r4 = move-exception
            com.facebook.ads.redexgen.X.Hh r0 = r7.A00
            com.facebook.ads.redexgen.X.lF r0 = r0.A05()
            boolean r0 = r0.AB6()
            if (r0 == 0) goto L95
            java.lang.String r3 = com.facebook.ads.redexgen.X.H8.A04
            r2 = 359(0x167, float:5.03E-43)
            r1 = 53
            r0 = 44
            java.lang.String r0 = A00(r2, r1, r0)
            android.util.Log.e(r3, r0, r4)
        L95:
            int r0 = com.facebook.ads.redexgen.X.AbstractC2811lf.A2M
            r7.A05(r0, r4)
        L9a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.H8.A0C(int):java.util.List");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2861mU
    public final void A5a() {
        try {
            this.A01.clear();
            this.A02.clear();
        } catch (C2883mq e) {
            if (this.A00.A05().AB6()) {
                Log.e(A04, A00(55, 30, 66), e);
            }
            A05(AbstractC2811lf.A2J, e);
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mR != com.facebook.ads.internal.eventstorage.AdEventStorageCallback<java.lang.String> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2861mU
    public final void AMQ(C2906nD c2906nD, AbstractC2858mR<String> abstractC2858mR) {
        new C2864mX(c2906nD, abstractC2858mR, this.A01, this.A00).A06(ExecutorC3116qh.A07);
    }
}
