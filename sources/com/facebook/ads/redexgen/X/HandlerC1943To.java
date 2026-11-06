package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.facebook.ads.androidx.media3.exoplayer.offline.Download;
import com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.To, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class HandlerC1943To extends Handler {
    public static byte[] A0D;
    public static String[] A0E = {"UwA8Qp2yDDuckZJOVe4irll7ZQPoGZoD", "hKBSfgRiZ2j0dJAFWpeEPTE8ASbuF2Yc", "7kHSZWcHK5TSpAUU1NAIxvfOb882Ngvs", "W97hdg2gujpUnTGsEW13ENYNotehvrwT", "gKT9t4MlatwEywdhUCsuZIADJ9Vp3nvA", "0SX4RX0bHUmJxVYLlaCFXcxKrDCt1AVH", "97Mtv7xLtHyCqp2lt2i222tn2GcShKKT", "2h5YOXpUBVVqRgG1rLc2q2DLhGpYe7nL"};
    public boolean A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public boolean A05;
    public boolean A06;
    public final Handler A07;
    public final HandlerThread A08;
    public final U5 A09;
    public final InterfaceC1899Rw A0A;
    public final ArrayList<TW> A0B;
    public final HashMap<String, S0> A0C;

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 42);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0D() {
        A0D = new byte[]{-114, -126, -39, 4, 12, 3, 1, 4, -10, -7, -30, -10, 3, -10, -4, -6, 7, -44, -17, -9, -6, -13, -14, -82, 2, -3, -82, -6, -3, -17, -14, -82, -14, -3, 5, -4, -6, -3, -17, -14, -56, -82, -91, -64, -56, -53, -60, -61, 127, -45, -50, 127, -53, -50, -64, -61, 127, -61, -50, -42, -51, -53, -50, -64, -61, -46, -115, -42, -15, -7, -4, -11, -12, -80, 4, -1, -80, -4, -1, -15, -12, -80, -7, -2, -12, -11, 8, -66, -71, -44, -36, -33, -40, -41, -109, -25, -30, -109, -27, -40, -32, -30, -23, -40, -109, -39, -27, -30, -32, -109, -41, -44, -25, -44, -43, -44, -26, -40, -118, -91, -83, -80, -87, -88, 100, -72, -77, 100, -74, -87, -79, -77, -70, -87, 100, -78, -77, -78, -87, -68, -83, -73, -72, -87, -78, -72, 100, -88, -77, -69, -78, -80, -77, -91, -88, 126, 100, -117, -90, -82, -79, -86, -87, 101, -71, -76, 101, -72, -86, -71, 101, -78, -90, -77, -70, -90, -79, 101, -72, -71, -76, -75, 101, -73, -86, -90, -72, -76, -77, -52, -25, -17, -14, -21, -22, -90, -6, -11, -90, -7, -21, -6, -90, -13, -25, -12, -5, -25, -14, -90, -7, -6, -11, -10, -90, -8, -21, -25, -7, -11, -12, -64, -90, -89, -62, -54, -51, -58, -59, -127, -43, -48, -127, -42, -47, -59, -62, -43, -58, -127, -54, -49, -59, -58, -39, -113, -69, -56, -38, -46, -121, -51, -56, -48, -45, -52, -53, -95, -121};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0Q(DownloadRequest downloadRequest, int i) {
        TW twA06 = A06(downloadRequest.A02, true);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (twA06 != null) {
            A03(C1946Tr.A00(twA06, downloadRequest, i, jCurrentTimeMillis));
        } else {
            A03(new TW(downloadRequest, i != 0 ? 1 : 0, jCurrentTimeMillis, jCurrentTimeMillis, -1L, i, 0));
        }
        A0B();
    }

    static {
        A0D();
    }

    public HandlerC1943To(HandlerThread handlerThread, InterfaceC1899Rw interfaceC1899Rw, U5 u5, Handler handler, int i, int i2, boolean z) {
        super(handlerThread.getLooper());
        this.A08 = handlerThread;
        this.A0A = interfaceC1899Rw;
        this.A09 = u5;
        this.A07 = handler;
        this.A02 = i;
        this.A03 = i2;
        this.A05 = z;
        this.A0B = new ArrayList<>();
        this.A0C = new HashMap<>();
    }

    public static int A00(TW tw, TW tw2) {
        return N1.A08(tw.A05, tw2.A05);
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int A02(java.lang.String r3) {
        /*
            r2 = this;
            r1 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.TW> r0 = r2.A0B
            int r0 = r0.size()
            if (r1 >= r0) goto L1f
            java.util.ArrayList<com.facebook.ads.redexgen.X.TW> r0 = r2.A0B
            java.lang.Object r0 = r0.get(r1)
            com.facebook.ads.redexgen.X.TW r0 = (com.facebook.ads.redexgen.X.TW) r0
            com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest r0 = r0.A07
            java.lang.String r0 = r0.A02
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L1c
            return r1
        L1c:
            int r1 = r1 + 1
            goto L1
        L1f:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.HandlerC1943To.A02(java.lang.String):int");
    }

    private TW A03(TW tw) {
        AbstractC1747Ln.A08((tw.A02 == 3 || tw.A02 == 4) ? false : true);
        int iA02 = A02(tw.A07.A02);
        if (iA02 == -1) {
            this.A0B.add(tw);
            Collections.sort(this.A0B, new C1942Tn());
        } else {
            long j = tw.A05;
            long j2 = this.A0B.get(iA02).A05;
            String[] strArr = A0E;
            String str = strArr[6];
            String str2 = strArr[7];
            int iCharAt = str.charAt(19);
            int changedIndex = str2.charAt(19);
            if (iCharAt != changedIndex) {
                throw new RuntimeException();
            }
            A0E[3] = "JdyDgc7FctZRVTtSFXQ7pi3holafYb2e";
            boolean z = j != j2;
            this.A0B.set(iA02, tw);
            if (z) {
                Collections.sort(this.A0B, new C1942Tn());
            }
        }
        try {
            this.A0A.AIS(tw);
        } catch (IOException e) {
            MV.A08(A08(2, 15, 107), A08(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 23, 55), e);
        }
        this.A07.obtainMessage(2, new C1941Tm(tw, false, new ArrayList(this.A0B), null)).sendToTarget();
        return tw;
    }

    private TW A04(TW tw, int i, int i2) {
        AbstractC1747Ln.A08((i == 3 || i == 4) ? false : true);
        return A03(A05(tw, i, i2));
    }

    public static TW A05(TW tw, int i, int i2) {
        return new TW(tw.A07, i, tw.A05, System.currentTimeMillis(), tw.A04, i2, 0, tw.A00);
    }

    private TW A06(String str, boolean z) {
        int iA02 = A02(str);
        if (iA02 != -1) {
            return this.A0B.get(iA02);
        }
        if (z) {
            try {
                return this.A0A.A8R(str);
            } catch (IOException e) {
                MV.A08(A08(2, 15, 107), A08(17, 25, 100) + str, e);
                return null;
            }
        }
        return null;
    }

    private S0 A07(S0 s0, TW tw) {
        if (s0 != null) {
            AbstractC1747Ln.A08(!s0.A06);
            s0.A05(false);
            return s0;
        }
        if (!A0U() || this.A01 >= this.A02) {
            if (A0E[3].charAt(13) != 'T') {
                throw new RuntimeException();
            }
            String[] strArr = A0E;
            strArr[0] = "1BYwewq2j3ndp7UqWSZ9zjcNsKc3D7Wk";
            strArr[5] = "kGROXNJGPy0lCs3jBblxgu9ckPsqthLV";
            return null;
        }
        TW twA04 = A04(tw, 2, 0);
        S0 s02 = new S0(twA04.A07, this.A09.A5v(twA04.A07), twA04.A00, false, this.A03, this);
        this.A0C.put(twA04.A07.A02, s02);
        int i = this.A01;
        this.A01 = i + 1;
        if (i == 0) {
            sendEmptyMessageDelayed(11, 5000L);
        }
        s02.start();
        return s02;
    }

    private void A09() {
        Iterator<S0> it = this.A0C.values().iterator();
        while (it.hasNext()) {
            it.next().A05(true);
        }
        try {
            this.A0A.AKg();
        } catch (IOException e) {
            MV.A08(A08(2, 15, 107), A08(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 23, 55), e);
        }
        this.A0B.clear();
        this.A08.quit();
        synchronized (this) {
            this.A00 = true;
            notifyAll();
        }
    }

    private void A0A() {
        String strA08 = A08(2, 15, 107);
        ArrayList arrayList = new ArrayList();
        try {
            S3 s3A8S = this.A0A.A8S(3, 4);
            while (s3A8S.A01()) {
                try {
                    arrayList.add(s3A8S.A00());
                } finally {
                }
            }
            if (s3A8S != null) {
                s3A8S.close();
            }
        } catch (IOException unused) {
            MV.A05(strA08, A08(42, 25, 53));
        }
        for (int i = 0; i < this.A0B.size(); i++) {
            this.A0B.set(i, A05(this.A0B.get(i), 5, 0));
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            this.A0B.add(A05((TW) arrayList.get(i2), 5, 0));
        }
        List<Download> terminalDownloads = this.A0B;
        Collections.sort(terminalDownloads, new C1942Tn());
        try {
            this.A0A.AL7();
        } catch (IOException e) {
            MV.A08(strA08, A08(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 23, 55), e);
        }
        ArrayList arrayList2 = new ArrayList(this.A0B);
        for (int i3 = 0; i3 < this.A0B.size(); i3++) {
            this.A07.obtainMessage(2, new C1941Tm(this.A0B.get(i3), false, arrayList2, null)).sendToTarget();
        }
        A0B();
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0008 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0B() {
        /*
            r5 = this;
            r4 = 0
            r3 = 0
        L2:
            java.util.ArrayList<com.facebook.ads.redexgen.X.TW> r0 = r5.A0B
            int r0 = r0.size()
            if (r3 >= r0) goto L49
            java.util.ArrayList<com.facebook.ads.redexgen.X.TW> r0 = r5.A0B
            java.lang.Object r2 = r0.get(r3)
            com.facebook.ads.redexgen.X.TW r2 = (com.facebook.ads.redexgen.X.TW) r2
            java.util.HashMap<java.lang.String, com.facebook.ads.redexgen.X.S0> r1 = r5.A0C
            com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest r0 = r2.A07
            java.lang.String r0 = r0.A02
            java.lang.Object r1 = r1.get(r0)
            com.facebook.ads.redexgen.X.S0 r1 = (com.facebook.ads.redexgen.X.S0) r1
            int r0 = r2.A02
            switch(r0) {
                case 0: goto L38;
                case 1: goto L34;
                case 2: goto L2d;
                case 3: goto L23;
                case 4: goto L23;
                case 5: goto L29;
                case 6: goto L23;
                case 7: goto L29;
                default: goto L23;
            }
        L23:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>()
            throw r0
        L29:
            r5.A0O(r1, r2)
            goto L3c
        L2d:
            com.facebook.ads.redexgen.X.AbstractC1747Ln.A01(r1)
            r5.A0P(r1, r2, r4)
            goto L3c
        L34:
            r5.A0M(r1)
            goto L3c
        L38:
            com.facebook.ads.redexgen.X.S0 r1 = r5.A07(r1, r2)
        L3c:
            if (r1 == 0) goto L46
            boolean r0 = com.facebook.ads.redexgen.X.S0.A03(r1)
            if (r0 != 0) goto L46
            int r4 = r4 + 1
        L46:
            int r3 = r3 + 1
            goto L2
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.HandlerC1943To.A0B():void");
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0C() {
        /*
            r6 = this;
            r5 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.TW> r0 = r6.A0B
            int r0 = r0.size()
            if (r5 >= r0) goto L36
            java.util.ArrayList<com.facebook.ads.redexgen.X.TW> r0 = r6.A0B
            java.lang.Object r2 = r0.get(r5)
            com.facebook.ads.redexgen.X.TW r2 = (com.facebook.ads.redexgen.X.TW) r2
            int r1 = r2.A02
            r0 = 2
            if (r1 != r0) goto L33
            com.facebook.ads.redexgen.X.Rw r0 = r6.A0A     // Catch: java.io.IOException -> L1c
            r0.AIS(r2)     // Catch: java.io.IOException -> L1c
            goto L33
        L1c:
            r4 = move-exception
            r2 = 2
            r1 = 15
            r0 = 107(0x6b, float:1.5E-43)
            java.lang.String r3 = A08(r2, r1, r0)
            r2 = 223(0xdf, float:3.12E-43)
            r1 = 23
            r0 = 55
            java.lang.String r0 = A08(r2, r1, r0)
            com.facebook.ads.redexgen.X.MV.A08(r3, r0, r4)
        L33:
            int r5 = r5 + 1
            goto L1
        L36:
            r2 = 11
            r0 = 5000(0x1388, double:2.4703E-320)
            r6.sendEmptyMessageDelayed(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.HandlerC1943To.A0C():void");
    }

    private void A0E(int i) {
        this.A04 = i;
        S3 s3A8S = null;
        try {
            try {
                this.A0A.AKg();
                s3A8S = this.A0A.A8S(0, 1, 2, 5, 7);
                while (s3A8S.A01()) {
                    this.A0B.add(s3A8S.A00());
                }
            } catch (IOException e) {
                MV.A08(A08(2, 15, 107), A08(67, 21, 102), e);
                this.A0B.clear();
            }
            N1.A10(s3A8S);
            this.A07.obtainMessage(0, new ArrayList(this.A0B)).sendToTarget();
            A0B();
        } catch (Throwable th) {
            N1.A10(s3A8S);
            throw th;
        }
    }

    private void A0F(int i) {
        this.A02 = i;
        A0B();
    }

    private void A0G(int i) {
        this.A03 = i;
    }

    private void A0H(int i) {
        this.A04 = i;
        A0B();
    }

    private void A0I(TW tw) {
        if (tw.A02 == 7) {
            int i = tw.A03 == 0 ? 0 : 1;
            int state = tw.A03;
            A04(tw, i, state);
            A0B();
            return;
        }
        this.A0B.remove(A02(tw.A07.A02));
        try {
            this.A0A.AJi(tw.A07.A02);
        } catch (IOException unused) {
            MV.A05(A08(2, 15, 107), A08(88, 30, 73));
        }
        this.A07.obtainMessage(2, new C1941Tm(tw, true, new ArrayList(this.A0B), null)).sendToTarget();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0J(com.facebook.ads.redexgen.X.TW r17, int r18) {
        /*
            r16 = this;
            r2 = r16
            r3 = r17
            r13 = r18
            if (r13 != 0) goto L12
            int r1 = r3.A02
            r0 = 1
            if (r1 != r0) goto L11
            r0 = 0
            r2.A04(r3, r0, r0)
        L11:
            return
        L12:
            int r0 = r3.A03
            if (r13 == r0) goto L11
            int r6 = r3.A02
            if (r6 == 0) goto L43
            r5 = 2
            java.lang.String[] r4 = com.facebook.ads.redexgen.X.HandlerC1943To.A0E
            r0 = 6
            r1 = r4[r0]
            r0 = 7
            r4 = r4[r0]
            r0 = 19
            char r1 = r1.charAt(r0)
            char r0 = r4.charAt(r0)
            if (r1 == r0) goto L35
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L35:
            java.lang.String[] r4 = com.facebook.ads.redexgen.X.HandlerC1943To.A0E
            java.lang.String r1 = "8l9SG5h20tqJLjwb5v3spVftx6HT2RLS"
            r0 = 0
            r4[r0] = r1
            java.lang.String r1 = "I7esPqKadVVgUdzdcSRhsNbo28gghaVs"
            r0 = 5
            r4[r0] = r1
            if (r6 != r5) goto L44
        L43:
            r6 = 1
        L44:
            com.facebook.ads.redexgen.X.TW r4 = new com.facebook.ads.redexgen.X.TW
            com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest r5 = r3.A07
            long r7 = r3.A05
            long r9 = java.lang.System.currentTimeMillis()
            long r11 = r3.A04
            r14 = 0
            com.facebook.ads.redexgen.X.Ts r15 = r3.A00
            r0 = r4
            r4.<init>(r5, r6, r7, r9, r11, r13, r14, r15)
            r2.A03(r0)
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.HandlerC1943To.A0J(com.facebook.ads.redexgen.X.TW, int):void");
    }

    private void A0K(TW tw, Exception exc) {
        int i;
        DownloadRequest downloadRequest = tw.A07;
        int i2 = exc == null ? 3 : 4;
        long j = tw.A05;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = tw.A04;
        int i3 = tw.A03;
        if (exc == null) {
            i = 0;
        } else {
            i = 1;
        }
        TW tw2 = new TW(downloadRequest, i2, j, jCurrentTimeMillis, j2, i3, i, tw.A00);
        this.A0B.remove(A02(tw2.A07.A02));
        try {
            this.A0A.AIS(tw2);
        } catch (IOException e) {
            MV.A08(A08(2, 15, 107), A08(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 23, 55), e);
        }
        this.A07.obtainMessage(2, new C1941Tm(tw2, false, new ArrayList(this.A0B), exc)).sendToTarget();
    }

    private void A0L(S0 s0) {
        String str = s0.A04.A02;
        this.A0C.remove(str);
        boolean z = s0.A06;
        if (z) {
            this.A06 = false;
        } else {
            int i = this.A01 - 1;
            this.A01 = i;
            if (i == 0) {
                removeMessages(11);
            }
        }
        if (!s0.A08) {
            Exception exc = s0.A01;
            if (exc != null) {
                StringBuilder sb = new StringBuilder();
                String downloadId = A08(246, 13, 61);
                StringBuilder sbAppend = sb.append(downloadId).append(s0.A04);
                String downloadId2 = A08(0, 2, 56);
                String string = sbAppend.append(downloadId2).append(z).toString();
                String downloadId3 = A08(2, 15, 107);
                MV.A08(downloadId3, string, exc);
            }
            TW tw = (TW) AbstractC1747Ln.A01(A06(str, false));
            switch (tw.A02) {
                case 2:
                    AbstractC1747Ln.A08(!z);
                    A0K(tw, exc);
                    break;
                case 3:
                case 4:
                case 6:
                default:
                    throw new IllegalStateException();
                case 5:
                case 7:
                    AbstractC1747Ln.A08(z);
                    A0I(tw);
                    break;
            }
            A0B();
            return;
        }
        A0B();
    }

    private void A0M(S0 s0) {
        if (s0 != null) {
            AbstractC1747Ln.A08(!s0.A06);
            s0.A05(false);
        }
    }

    private void A0N(S0 s0, long j) {
        TW tw = (TW) AbstractC1747Ln.A01(A06(s0.A04.A02, false));
        if (j == tw.A04 || j == -1) {
            return;
        }
        A03(new TW(tw.A07, tw.A02, tw.A05, System.currentTimeMillis(), j, tw.A03, tw.A01, tw.A00));
    }

    private void A0O(S0 s0, TW tw) {
        if (s0 != null) {
            if (!s0.A06) {
                s0.A05(false);
            }
        } else {
            if (this.A06) {
                return;
            }
            S0 s02 = new S0(tw.A07, this.A09.A5v(tw.A07), tw.A00, true, this.A03, this);
            this.A0C.put(tw.A07.A02, s02);
            this.A06 = true;
            s02.start();
        }
    }

    private void A0P(S0 s0, TW tw, int i) {
        AbstractC1747Ln.A08(!s0.A06);
        if (!A0U() || i >= this.A02) {
            A04(tw, 0, 0);
            s0.A05(false);
        }
    }

    private void A0R(String str) {
        TW twA06 = A06(str, true);
        if (twA06 == null) {
            MV.A05(A08(2, 15, 107), A08(Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, 39, 26) + str);
        } else {
            A04(twA06, 5, 0);
            A0B();
        }
    }

    private void A0S(String str, int i) {
        String strA08 = A08(2, 15, 107);
        if (str == null) {
            for (int i2 = 0; i2 < this.A0B.size(); i2++) {
                A0J(this.A0B.get(i2), i);
            }
            try {
                this.A0A.AL8(i);
            } catch (IOException e) {
                MV.A08(strA08, A08(157, 32, 27), e);
            }
        } else {
            TW twA06 = A06(str, false);
            if (twA06 != null) {
                A0J(twA06, i);
            } else {
                try {
                    this.A0A.AL9(str, i);
                } catch (IOException e2) {
                    MV.A08(strA08, A08(189, 34, 92) + str, e2);
                }
            }
        }
        A0B();
    }

    private void A0T(boolean z) {
        this.A05 = z;
        A0B();
    }

    private boolean A0U() {
        return !this.A05 && this.A04 == 0;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        boolean z = true;
        try {
            switch (message.what) {
                case 0:
                    A0E(message.arg1);
                    break;
                case 1:
                    A0T(message.arg1 != 0);
                    break;
                case 2:
                    A0H(message.arg1);
                    break;
                case 3:
                    A0S((String) message.obj, message.arg1);
                    break;
                case 4:
                    A0F(message.arg1);
                    break;
                case 5:
                    A0G(message.arg1);
                    break;
                case 6:
                    A0Q((DownloadRequest) message.obj, message.arg1);
                    break;
                case 7:
                    A0R((String) message.obj);
                    break;
                case 8:
                    A0A();
                    break;
                case 9:
                    A0L((S0) message.obj);
                    z = false;
                    break;
                case 10:
                    A0N((S0) message.obj, N1.A0N(message.arg1, message.arg2));
                    return;
                case 11:
                    A0C();
                    return;
                case 12:
                    A09();
                    return;
                default:
                    throw new IllegalStateException();
            }
            this.A07.obtainMessage(1, z ? 1 : 0, this.A0C.size()).sendToTarget();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
