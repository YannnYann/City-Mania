package com.facebook.ads.redexgen.X;

import android.media.AudioTrack;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Qu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1871Qu {
    public static byte[] A0X;
    public static String[] A0Y = {"szrYTU0DS01XOv1t9rymuWvtHBzl9P36", "s7NaBqmAEHzFdiTFEJctKJZXErXLf66", "N2mrN2qAo9DY", "hoqZCfmYqy5nkA1tXBfpgkqYNSmjUTg6", "5xNJsSwnVbuYJKRd9AZ904GtC6jlbxv6", "fMEqBhIQX0E59kzTmDYun2REUlm12hF", "FOLMhvRYFOEelsj1LA7dnoiDqvOklTJg", "8FpEnMonefyKQskyao4ISAxL9Nu6yKBg"};
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public long A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public long A0C;
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
    public AudioTrack A0N;
    public C1868Qr A0O;
    public Method A0P;
    public boolean A0Q;
    public boolean A0R;
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public final InterfaceC1869Qs A0V;
    public final long[] A0W;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0X, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 62);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A0X = new byte[]{-88, -90, -75, -115, -94, -75, -90, -81, -92, -70};
    }

    static {
        A06();
    }

    public C1871Qu(InterfaceC1869Qs interfaceC1869Qs) {
        this.A0V = (InterfaceC1869Qs) AbstractC1747Ln.A01(interfaceC1869Qs);
        if (N1.A02 >= 18) {
            try {
                this.A0P = AudioTrack.class.getMethod(A03(0, 10, 3), null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.A0W = new long[10];
    }

    private long A00() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.A0M != -9223372036854775807L) {
            long currentTimeMs = this.A0M;
            long elapsedTimeSinceStopUs = (1000 * jElapsedRealtime) - currentTimeMs;
            long jA0Q = N1.A0Q(elapsedTimeSinceStopUs, this.A00);
            long mediaTimeSinceStopUs = this.A04;
            long elapsedTimeSinceStopUs2 = this.A07;
            long currentTimeMs2 = this.A0L;
            return Math.min(elapsedTimeSinceStopUs2, currentTimeMs2 + ((mediaTimeSinceStopUs * jA0Q) / 1000000));
        }
        long currentTimeMs3 = this.A0C;
        if (jElapsedRealtime - currentTimeMs3 >= 5) {
            A09(jElapsedRealtime);
            this.A0C = jElapsedRealtime;
        }
        return this.A0I + (this.A0J << 32);
    }

    private long A01() {
        return A02(A00());
    }

    private long A02(long j) {
        return (1000000 * j) / ((long) this.A04);
    }

    private void A04() {
        long jNanoTime = System.nanoTime() / 1000;
        long systemTimeUs = this.A0A;
        if (jNanoTime - systemTimeUs >= 30000) {
            long jA01 = A01();
            if (jA01 == 0) {
                return;
            }
            this.A0W[this.A02] = N1.A0R(jA01, this.A00) - jNanoTime;
            this.A02 = (this.A02 + 1) % 10;
            if (this.A05 < 10) {
                this.A05++;
            }
            this.A0A = jNanoTime;
            this.A0K = 0L;
            for (int i = 0; i < this.A05; i++) {
                long j = this.A0K;
                long j2 = this.A0W[i];
                long systemTimeUs2 = this.A05;
                this.A0K = j + (j2 / systemTimeUs2);
            }
        }
        if (this.A0T) {
            return;
        }
        A07(jNanoTime);
        if (A0Y[3].charAt(28) != 'U') {
            throw new RuntimeException();
        }
        A0Y[3] = "DvSCD4NKDEWcwB7K3eMl26qicMJQUKXN";
        A08(jNanoTime);
    }

    private void A05() {
        this.A0K = 0L;
        this.A05 = 0;
        this.A02 = 0;
        this.A0A = 0L;
        this.A0D = 0L;
        this.A0H = 0L;
        this.A0U = false;
    }

    private void A07(long j) {
        C1868Qr c1868Qr = (C1868Qr) AbstractC1747Ln.A01(this.A0O);
        if (!c1868Qr.A07(j)) {
            return;
        }
        long jA02 = c1868Qr.A02();
        long jA01 = c1868Qr.A01();
        long audioTimestampSystemTimeUs = A01();
        if (Math.abs(jA02 - j) > 5000000) {
            this.A0V.AHG(jA01, jA02, j, audioTimestampSystemTimeUs);
            c1868Qr.A04();
        } else if (Math.abs(A02(jA01) - audioTimestampSystemTimeUs) > 5000000) {
            this.A0V.AGU(jA01, jA02, j, audioTimestampSystemTimeUs);
            c1868Qr.A04();
        } else {
            c1868Qr.A03();
        }
    }

    private void A08(long j) {
        if (this.A0R) {
            Method method = this.A0P;
            if (A0Y[2].length() == 13) {
                throw new RuntimeException();
            }
            A0Y[3] = "LwDJ2adXsvmapAbFxE6aw0c9OronULJK";
            if (method != null && j - this.A09 >= 500000) {
                try {
                    this.A0E = (((long) ((Integer) N1.A0f((Integer) this.A0P.invoke(AbstractC1747Ln.A01(this.A0N), new Object[0]))).intValue()) * 1000) - this.A06;
                    this.A0E = Math.max(this.A0E, 0L);
                    if (this.A0E > 5000000) {
                        this.A0V.AFP(this.A0E);
                        this.A0E = 0L;
                    }
                } catch (Exception unused) {
                    this.A0P = null;
                }
                this.A09 = j;
            }
        }
    }

    private void A09(long j) {
        AudioTrack audioTrack = (AudioTrack) AbstractC1747Ln.A01(this.A0N);
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return;
        }
        long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & 4294967295L;
        if (this.A0T) {
            if (playState == 2 && playbackHeadPosition == 0) {
                long rawPlaybackHeadPosition = this.A0I;
                String[] strArr = A0Y;
                String str = strArr[5];
                String str2 = strArr[1];
                int state = str.length();
                if (state == str2.length()) {
                    String[] strArr2 = A0Y;
                    strArr2[4] = "NFpO21JovjOYB3sWlcx9YYztHikGNmG2";
                    strArr2[0] = "fMOZdlEOnc2DE7tPUHnxGyRttJbYpWs8";
                    this.A0F = rawPlaybackHeadPosition;
                }
                throw new RuntimeException();
            }
            long rawPlaybackHeadPosition2 = this.A0F;
            int state2 = A0Y[2].length();
            if (state2 != 13) {
                A0Y[3] = "80YL1s95COzXxFzHty8TdzJYnUYIUjxc";
                playbackHeadPosition += rawPlaybackHeadPosition2;
            }
            throw new RuntimeException();
        }
        int state3 = N1.A02;
        if (state3 <= 29) {
            if (playbackHeadPosition == 0 && this.A0I > 0 && playState == 3) {
                if (this.A08 == -9223372036854775807L) {
                    this.A08 = j;
                    return;
                }
                return;
            }
            this.A08 = -9223372036854775807L;
        }
        if (this.A0I > playbackHeadPosition) {
            long rawPlaybackHeadPosition3 = this.A0J;
            this.A0J = rawPlaybackHeadPosition3 + 1;
        }
        this.A0I = playbackHeadPosition;
    }

    private boolean A0A() {
        return this.A0T && ((AudioTrack) AbstractC1747Ln.A01(this.A0N)).getPlayState() == 2 && A00() == 0;
    }

    public static boolean A0B(int i) {
        if (N1.A02 < 23) {
            if (A0Y[3].charAt(28) == 'U') {
                A0Y[2] = "QimAKg1A2LR55QKN11U1CLfkq7IW";
                if (i != 5) {
                    String[] strArr = A0Y;
                    if (strArr[6].charAt(1) != strArr[7].charAt(1)) {
                        A0Y[3] = "L2En9myi31F5L6fXc4mZT0nWzJPEUu7U";
                        if (i == 6) {
                        }
                    }
                }
                return true;
            }
            throw new RuntimeException();
        }
        return false;
    }

    public final int A0C(long j) {
        int bytesPending = (int) (j - (A00() * ((long) this.A03)));
        return this.A01 - bytesPending;
    }

    public final long A0D(boolean z) {
        long jA0Q;
        if (((AudioTrack) AbstractC1747Ln.A01(this.A0N)).getPlayState() == 3) {
            A04();
        }
        long jNanoTime = System.nanoTime() / 1000;
        C1868Qr c1868Qr = (C1868Qr) AbstractC1747Ln.A01(this.A0O);
        boolean zA06 = c1868Qr.A06();
        if (zA06) {
            long jA02 = A02(c1868Qr.A01());
            long timestampPositionUs = c1868Qr.A02();
            jA0Q = jA02 + N1.A0Q(jNanoTime - timestampPositionUs, this.A00);
        } else {
            if (this.A05 == 0) {
                jA0Q = A01();
                String[] strArr = A0Y;
                if (strArr[6].charAt(1) != strArr[7].charAt(1)) {
                    String[] strArr2 = A0Y;
                    strArr2[6] = "xUEgxFtPACJPZIb13bP3hMWMIhEG7xMC";
                    strArr2[7] = "0FjmHQJcBH4LdF9PJy8ro8FAnByCJd6O";
                }
            } else {
                jA0Q = N1.A0Q(this.A0K + jNanoTime, this.A00);
            }
            if (!z) {
                jA0Q = Math.max(0L, jA0Q - this.A0E);
            }
        }
        if (this.A0S != zA06) {
            this.A0H = this.A0D;
            this.A0G = this.A0B;
        }
        long positionUs = this.A0H;
        long j = jNanoTime - positionUs;
        if (j < 1000000) {
            long positionUs2 = this.A0G;
            long positionUs3 = positionUs2 + N1.A0Q(j, this.A00);
            long j2 = (j * 1000) / 1000000;
            jA0Q = ((jA0Q * j2) + ((1000 - j2) * positionUs3)) / 1000;
        }
        if (!this.A0U) {
            long positionUs4 = this.A0B;
            if (jA0Q > positionUs4) {
                this.A0U = true;
                long positionUs5 = this.A0B;
                this.A0V.AGS(System.currentTimeMillis() - N1.A0P(N1.A0R(N1.A0P(jA0Q - positionUs5), this.A00)));
            }
        }
        this.A0D = jNanoTime;
        if (A0Y[3].charAt(28) != 'U') {
            throw new RuntimeException();
        }
        String[] strArr3 = A0Y;
        strArr3[5] = "K3IxgzHxuEJER65EhA3mjFQAs2l3WeJ";
        strArr3[1] = "Z33m0uFRo3mrV94OhR47SyLzttNMDNS";
        this.A0B = jA0Q;
        this.A0S = zA06;
        return jA0Q;
    }

    public final void A0E() {
        A05();
        this.A0N = null;
        this.A0O = null;
    }

    public final void A0F() {
        ((C1868Qr) AbstractC1747Ln.A01(this.A0O)).A05();
    }

    public final void A0G(float f) {
        this.A00 = f;
        if (this.A0O != null) {
            this.A0O.A05();
        }
        A05();
    }

    public final void A0H(long j) {
        this.A0L = A00();
        this.A0M = SystemClock.elapsedRealtime() * 1000;
        this.A07 = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0I(android.media.AudioTrack r6, boolean r7, int r8, int r9, int r10) {
        /*
            r5 = this;
            r5.A0N = r6
            r5.A03 = r9
            r5.A01 = r10
            com.facebook.ads.redexgen.X.Qr r0 = new com.facebook.ads.redexgen.X.Qr
            r0.<init>(r6)
            r5.A0O = r0
            int r0 = r6.getSampleRate()
            r5.A04 = r0
            r4 = 0
            if (r7 == 0) goto L6e
            boolean r3 = A0B(r8)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1871Qu.A0Y
            r0 = 6
            r1 = r2[r0]
            r0 = 7
            r2 = r2[r0]
            r0 = 1
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L70
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1871Qu.A0Y
            java.lang.String r1 = "dIBetfCUgBCqw8ZTIS6TfgpOfPDFDgf"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "8ghRGmMlPAoZuHZqxN9JEhdUZeZBQam"
            r0 = 1
            r2[r0] = r1
            if (r3 == 0) goto L6e
            r0 = 1
        L3c:
            r5.A0T = r0
            boolean r0 = com.facebook.ads.redexgen.X.N1.A15(r8)
            r5.A0R = r0
            boolean r0 = r5.A0R
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r0 == 0) goto L6c
            int r10 = r10 / r9
            long r0 = (long) r10
            long r0 = r5.A02(r0)
        L53:
            r5.A06 = r0
            r0 = 0
            r5.A0I = r0
            r5.A0J = r0
            r5.A0F = r0
            r5.A0Q = r4
            r5.A0M = r2
            r5.A08 = r2
            r5.A09 = r0
            r5.A0E = r0
            r0 = 1065353216(0x3f800000, float:1.0)
            r5.A00 = r0
            return
        L6c:
            r0 = r2
            goto L53
        L6e:
            r0 = 0
            goto L3c
        L70:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1871Qu.A0I(android.media.AudioTrack, boolean, int, int, int):void");
    }

    public final boolean A0J() {
        return ((AudioTrack) AbstractC1747Ln.A01(this.A0N)).getPlayState() == 3;
    }

    public final boolean A0K() {
        A05();
        if (this.A0M == -9223372036854775807L) {
            ((C1868Qr) AbstractC1747Ln.A01(this.A0O)).A05();
            return true;
        }
        return false;
    }

    public final boolean A0L(long j) {
        if (j <= A00()) {
            boolean zA0A = A0A();
            if (A0Y[3].charAt(28) != 'U') {
                throw new RuntimeException();
            }
            A0Y[2] = "3pZSLe1LS9RDIWdAAYgLn7usG";
            if (!zA0A) {
                return false;
            }
        }
        return true;
    }

    public final boolean A0M(long j) {
        return this.A08 != -9223372036854775807L && j > 0 && SystemClock.elapsedRealtime() - this.A08 >= 200;
    }

    public final boolean A0N(long j) {
        int playState = ((AudioTrack) AbstractC1747Ln.A01(this.A0N)).getPlayState();
        if (this.A0T) {
            if (playState == 2) {
                this.A0Q = false;
                return false;
            }
            if (playState == 1 && A00() == 0) {
                return false;
            }
        }
        boolean hadData = this.A0Q;
        this.A0Q = A0L(j);
        if (hadData) {
            boolean z = this.A0Q;
            if (A0Y[3].charAt(28) != 'U') {
                throw new RuntimeException();
            }
            A0Y[2] = "xzY9CvHn6cSZfbG";
            if (!z && playState != 1) {
                this.A0V.AHR(this.A01, N1.A0P(this.A06));
            }
        }
        return true;
    }
}
