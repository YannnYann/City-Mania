package com.facebook.ads.redexgen.X;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class R6 {
    public static byte[] A0A;
    public static String[] A0B = {"tiwikVqfL0z2fxSY6lOHkavUIqgy6tr2", "jqVt0", "1kYEt4o2Oc1Nc6c6DCqgZxHprNvHkKTt", "jpl9i6nlC86a", "O0ZNuMyLZcymryzXd", "W", "khiSwei7gt24FAHpJuLbkwyNpdF4wcwM", "v5WZVl0qjHdbu6cFsaLpnhMzrLxS1FQK"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final VC A07;
    public final boolean A08;
    public final LZ[] A09;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 96);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A0A = new byte[]{-19, 14, 15, 10, 30, 21, 29, -22, 30, 13, 18, 24, -4, 18, 23, 20, -61, -42, -54, -51, -59, -94, -42, -59, -54, -48, -75, -45, -62, -60, -52, -101, -127, -44, -43, -62, -43, -58, -98, -122, -59, -115, -127, -62, -42, -59, -54, -48, -75, -45, -62, -60, -52, -94, -51, -51, -48, -60, -62, -43, -58, -59, -113, -56, -58, -43, -119, -118, -98, -122, -59};
    }

    static {
        A07();
    }

    public R6(VC vc, int i, int i2, int i3, int i4, int i5, int i6, int i7, LZ[] lzArr, boolean z) {
        this.A07 = vc;
        this.A01 = i;
        this.A04 = i2;
        this.A05 = i3;
        this.A06 = i4;
        this.A02 = i5;
        this.A03 = i6;
        this.A00 = i7;
        this.A09 = lzArr;
        this.A08 = z;
    }

    public static AudioAttributes A00() {
        return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
    }

    public static AudioAttributes A01(VL vl, boolean z) {
        if (z) {
            return A00();
        }
        return vl.A01().A00;
    }

    private AudioTrack A02(VL vl, int i) {
        int iA04 = N1.A04(vl.A05);
        if (i != 0) {
            return new AudioTrack(iA04, this.A06, this.A02, this.A03, this.A00, 1, i);
        }
        return new AudioTrack(iA04, this.A06, this.A02, this.A03, this.A00, 1);
    }

    private AudioTrack A03(boolean z, VL vl, int i) {
        if (N1.A02 >= 29) {
            return A05(z, vl, i);
        }
        if (N1.A02 >= 21) {
            return A04(z, vl, i);
        }
        return A02(vl, i);
    }

    private AudioTrack A04(boolean z, VL vl, int i) {
        return new AudioTrack(A01(vl, z), SI.A0D(this.A06, this.A02, this.A03), this.A00, 1, i);
    }

    private AudioTrack A05(boolean z, VL vl, int i) {
        AudioFormat audioFormatA0D = SI.A0D(this.A06, this.A02, this.A03);
        AudioAttributes audioTrackAttributes = A01(vl, z);
        AudioTrack.Builder audioFormat = new AudioTrack.Builder().setAudioAttributes(audioTrackAttributes).setAudioFormat(audioFormatA0D);
        boolean z2 = true;
        AudioTrack.Builder sessionId = audioFormat.setTransferMode(1).setBufferSizeInBytes(this.A00).setSessionId(i);
        if (this.A04 != 1) {
            z2 = false;
        }
        return sessionId.setOffloadedPlayback(z2).build();
    }

    public final long A08(long j) {
        return (1000000 * j) / ((long) this.A06);
    }

    public final long A09(long j) {
        return (1000000 * j) / ((long) this.A07.A0G);
    }

    @MetaExoPlayerCustomization
    public final AudioTrack A0A(boolean z, VL vl, int i) throws C1859Qi {
        try {
            AudioTrack audioTrackA03 = A03(z, vl, i);
            SI.A11.incrementAndGet();
            int state = audioTrackA03.getState();
            if (state == 1) {
                return audioTrackA03;
            }
            try {
                audioTrackA03.release();
                SI.A11.decrementAndGet();
            } catch (Exception e) {
                Object[] objArr = {Integer.valueOf(state), Integer.valueOf(SI.A11.get())};
                int state2 = A0B[4].length();
                if (state2 != 17) {
                    throw new RuntimeException();
                }
                A0B[4] = "7DxG5Namxux9JNrAx";
                MV.A08(A06(0, 16, 73), String.format(A06(16, 55, 1), objArr), e);
            }
            throw new C1859Qi(state, this.A06, this.A02, this.A00, this.A07, A0D(), null, SI.A11.get());
        } catch (IllegalArgumentException | UnsupportedOperationException e2) {
            throw new C1859Qi(0, this.A06, this.A02, this.A00, this.A07, A0D(), e2, SI.A11.get());
        }
    }

    public final C1857Qg A0B() {
        int i = this.A03;
        int i2 = this.A06;
        int i3 = this.A02;
        boolean z = this.A08;
        boolean z2 = this.A04 == 1;
        int i4 = this.A00;
        if (A0B[1].length() == 22) {
            throw new RuntimeException();
        }
        A0B[3] = "HV6cXx8EkhgZ";
        return new C1857Qg(i, i2, i3, z, z2, i4);
    }

    public final R6 A0C(int i) {
        return new R6(this.A07, this.A01, this.A04, this.A05, this.A06, this.A02, this.A03, i, this.A09, this.A08);
    }

    public final boolean A0D() {
        return this.A04 == 1;
    }

    public final boolean A0E(R6 r6) {
        if (r6.A04 == this.A04 && r6.A03 == this.A03 && r6.A06 == this.A06 && r6.A02 == this.A02) {
            int i = r6.A05;
            int i2 = this.A05;
            String[] strArr = A0B;
            if (strArr[0].charAt(1) == strArr[7].charAt(1)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0B;
            strArr2[0] = "SCqqHgq5nN0fL9Hcn1G9LJOP1fhFFGJA";
            strArr2[7] = "8raCMraBdNcHQARtABH2r6eJGP4SAUz0";
            if (i == i2) {
                return true;
            }
        }
        return false;
    }
}
