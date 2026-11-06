package com.facebook.ads.redexgen.X;

import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.ironsource.mediationsdk.metadata.a;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class SI implements InterfaceC1865Qo {
    public static boolean A0v;
    public static int A0w;
    public static ExecutorService A0x;
    public static byte[] A0y;
    public static String[] A0z = {"Vm34RtAuvH", "KApfs4NIeoMbH", "G6EQ", "58tGO1HlZwW4jqc6p7", "3lvK1zrQxpaAMv8YXmHvStKwjRQhCbHE", "FbO3sWXPQ3OcV2Ggvc", "bpi5G9jo4", "XZBql1qLDwgxzhX"};
    public static final Object A10;

    @MetaExoPlayerCustomization
    public static final AtomicInteger A11;
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public long A0C;
    public AudioTrack A0D;
    public VL A0E;
    public C1700Jq A0F;
    public UW A0G;
    public QD A0H;
    public InterfaceC1861Qk A0I;
    public R3 A0J;
    public R6 A0K;
    public R6 A0L;
    public R8 A0M;
    public R8 A0N;
    public RD A0O;
    public ByteBuffer A0P;
    public ByteBuffer A0Q;
    public ByteBuffer A0R;

    @MetaExoPlayerCustomization
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public boolean A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public byte[] A0c;
    public LZ[] A0d;
    public ByteBuffer[] A0e;
    public final int A0f;
    public final InterfaceC1734La A0g;
    public final C1756Lx A0h;
    public final OL A0i;
    public final QG A0j;
    public final C1871Qu A0k;
    public final AnonymousClass90 A0l;
    public final R4 A0m;
    public final RB<C1859Qi> A0n;
    public final RB<C1864Qn> A0o;
    public final C14278v A0p;
    public final ArrayDeque<R8> A0q;
    public final boolean A0r;
    public final boolean A0s;
    public final LZ[] A0t;
    public final LZ[] A0u;

    public static String A0L(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0y, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 67);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0T() {
        A0y = new byte[]{-53, -62, 8, 17, 20, -36, -62, -100, -67, -66, -71, -51, -60, -52, -103, -51, -68, -63, -57, -85, -63, -58, -61, -61, -10, -19, -50, -22, -33, -9, -29, -16, -72, -65, -13, -30, -25, -19, -46, -16, -33, -31, -23, -48, -29, -22, -29, -33, -15, -29, -46, -26, -16, -29, -33, -30, -77, -50, -42, -39, -46, -47, -115, -31, -36, -115, -32, -46, -31, -115, -35, -39, -50, -26, -49, -50, -48, -40, -115, -35, -50, -33, -50, -38, -32, -57, -20, -12, -33, -22, -25, -30, -98, -50, -63, -53, -98, -29, -20, -31, -19, -30, -25, -20, -27, -72, -98, -70, -33, -25, -46, -35, -38, -43, -111, -32, -26, -27, -31, -26, -27, -111, -44, -39, -46, -33, -33, -42, -35, -111, -44, -32, -33, -41, -38, -40, -111, -103, -34, -32, -43, -42, -82, -75, -38, -30, -51, -40, -43, -48, -116, -37, -31, -32, -36, -31, -32, -116, -47, -38, -49, -37, -48, -43, -38, -45, -116, -108, -39, -37, -48, -47, -87, -57, -32, -17, -36, -29, -13, 6, 20, 6, 21, 21, 10, 15, 8, -63, 20, 21, 2, 13, 13, 6, 5, -63, 2, 22, 5, 10, 16, -63, 21, 19, 2, 4, 12, 14, 39, 26, 27, 37, 30, -39, 45, 40, -39, 28, 40, 39, 31, 34, 32, 46, 43, 30, -39, 41, 26, 44, 44, 45, 33, 43, 40, 46, 32, 33, -39, 31, 40, 43, -13, -39, -79, -54, -63, -44, -52, -63, -65, -48, -63, -64, 124, -67, -47, -64, -59, -53, 124, -63, -54, -65, -53, -64, -59, -54, -61, -106, 124, -21, -1, -18, -13, -7, -71, -4, -21, 1};
    }

    static {
        A0T();
        A0v = false;
        A10 = new Object();
        A11 = new AtomicInteger(0);
    }

    @Deprecated
    public SI(QG qg, LZ[] lzArr) {
        this(new R5().A06((QG) AbstractC2022Wx.A00(qg, QG.A04)).A07(lzArr));
    }

    @RequiresNonNull
    public SI(R5 r5) {
        int i;
        this.A0j = r5.A03;
        this.A0g = r5.A02;
        this.A0s = N1.A02 >= 21 && r5.A05;
        this.A0r = N1.A02 >= 23 && r5.A04;
        if (N1.A02 >= 29) {
            i = r5.A01;
        } else {
            i = 0;
        }
        this.A0f = i;
        this.A0m = r5.A00;
        this.A0h = new C1756Lx(InterfaceC1754Lu.A00);
        this.A0h.A04();
        this.A0k = new C1871Qu(new SJ(this));
        this.A0l = new AnonymousClass90();
        this.A0p = new C14278v();
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new SK() { // from class: com.facebook.ads.redexgen.X.8x
            public static String[] A00 = {"24x7LE0aMCLmy4Cr90ILHi2URidISADe", "P7PEYEXmMLFT9vpOXmNxvTd4mu4rn2ac", "U0TQqwwEkBsVFFMA6Ld4YdAAnOqbP6j4", "osgQVriRl5RsHDZ79rlYoCUSxlSucoa4", "7Ulc7J5DGkrn9XdQEY9B52iinKq5Bi9I", "bG2Qd5VF4kAXA7csyfRNs1IikG7LyXl", "Z6rWJZjQgNpQgA24zjHn4zIAbIaGbZGe", "edYv1uFxrW0ntWc4yA09Ykoq3hihq0FM"};

            @Override // com.facebook.ads.redexgen.X.SK
            public final LX A09(LX lx) throws LY {
                int i2 = lx.A02;
                if (i2 == 3 || i2 == 2 || i2 == 268435456 || i2 == 536870912 || i2 == 805306368 || i2 == 4) {
                    if (i2 != 2) {
                        return new LX(lx.A03, lx.A01, 2);
                    }
                    return LX.A06;
                }
                throw new LY(lx);
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // com.facebook.ads.redexgen.X.LZ
            public final void AIU(ByteBuffer byteBuffer) {
                int iPosition = byteBuffer.position();
                int resampledSize = byteBuffer.limit();
                int limit = resampledSize - iPosition;
                int position = this.A05.A02;
                switch (position) {
                    case 3:
                        limit *= 2;
                        break;
                    case 4:
                    case 805306368:
                        limit /= 2;
                        break;
                    case 268435456:
                        break;
                    case 536870912:
                        int i2 = limit / 3;
                        if (A00[1].charAt(19) == 80) {
                            throw new RuntimeException();
                        }
                        A00[7] = "Kg0SQXP1Uwpo1gaOesPqkA58HhYguS7b";
                        limit = i2 * 2;
                        break;
                        break;
                    default:
                        throw new IllegalStateException();
                }
                ByteBuffer byteBufferA00 = A00(limit);
                int position2 = this.A05.A02;
                switch (position2) {
                    case 3:
                        while (iPosition < resampledSize) {
                            byteBufferA00.put((byte) 0);
                            int position3 = byteBuffer.get(iPosition);
                            byteBufferA00.put((byte) ((position3 & 255) - 128));
                            iPosition++;
                        }
                        int position4 = byteBuffer.limit();
                        byteBuffer.position(position4);
                        byteBufferA00.flip();
                        return;
                    case 4:
                        while (iPosition < resampledSize) {
                            int position5 = (int) (32767.0f * N1.A00(byteBuffer.getFloat(iPosition), -1.0f, 1.0f));
                            int limit2 = (short) position5;
                            int position6 = limit2 & 255;
                            byteBufferA00.put((byte) position6);
                            int position7 = limit2 >> 8;
                            byteBufferA00.put((byte) (position7 & 255));
                            iPosition += 4;
                        }
                        int position42 = byteBuffer.limit();
                        byteBuffer.position(position42);
                        byteBufferA00.flip();
                        return;
                    case 268435456:
                        while (iPosition < resampledSize) {
                            int position8 = iPosition + 1;
                            byte b = byteBuffer.get(position8);
                            String[] strArr = A00;
                            String str = strArr[2];
                            String str2 = strArr[3];
                            int limit3 = str.charAt(31);
                            int position9 = str2.charAt(31);
                            if (limit3 != position9) {
                                A00[7] = "WVsDZ5buKx70EJyZWDh4YQIYvha3TOO1";
                                byteBufferA00.put(b);
                                byteBufferA00.put(byteBuffer.get(iPosition));
                                iPosition += 0;
                            } else {
                                A00[5] = "rHWDG1MI";
                                byteBufferA00.put(b);
                                byteBufferA00.put(byteBuffer.get(iPosition));
                                iPosition += 2;
                            }
                        }
                        int position422 = byteBuffer.limit();
                        byteBuffer.position(position422);
                        byteBufferA00.flip();
                        return;
                    case 536870912:
                        while (iPosition < resampledSize) {
                            int position10 = iPosition + 1;
                            byteBufferA00.put(byteBuffer.get(position10));
                            int position11 = iPosition + 2;
                            byteBufferA00.put(byteBuffer.get(position11));
                            iPosition += 3;
                        }
                        int position4222 = byteBuffer.limit();
                        byteBuffer.position(position4222);
                        byteBufferA00.flip();
                        return;
                    case 805306368:
                        while (iPosition < resampledSize) {
                            int position12 = iPosition + 2;
                            byteBufferA00.put(byteBuffer.get(position12));
                            int position13 = iPosition + 3;
                            byteBufferA00.put(byteBuffer.get(position13));
                            iPosition += 4;
                        }
                        int position42222 = byteBuffer.limit();
                        byteBuffer.position(position42222);
                        byteBufferA00.flip();
                        return;
                    default:
                        throw new IllegalStateException();
                }
            }
        }, this.A0l, this.A0p);
        Collections.addAll(arrayList, this.A0g.A7Z());
        this.A0u = (LZ[]) arrayList.toArray(new LZ[0]);
        this.A0t = new LZ[]{new SK() { // from class: com.facebook.ads.redexgen.X.8y
            public static String[] A00 = {"vnIPpnF5mfadbb6vv6b6pryI1li4ODW4", "pcKpuoGw", "z4VvdyAHuTdzMXuwHe239FmRj1zsaN", "TIpV73gbBqS5DbWFFPtu7wnKcb18QYdd", "R9leefbXNFSmDQdE", "xv6XcaXZNK9bUIDl1OZ1nrWoKDG", "", "lpm9awGoRs4To0ugdbAeLdxa"};
            public static final int A01 = Float.floatToIntBits(Float.NaN);

            public static void A00(int i2, ByteBuffer byteBuffer) {
                float pcm32BitFloat = (float) (((double) i2) * 4.656612875245797E-10d);
                int floatBits = Float.floatToIntBits(pcm32BitFloat);
                if (floatBits == A01) {
                    floatBits = Float.floatToIntBits(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                }
                byteBuffer.putInt(floatBits);
            }

            @Override // com.facebook.ads.redexgen.X.SK
            public final LX A09(LX lx) throws LY {
                int i2 = lx.A02;
                if (N1.A14(i2)) {
                    if (i2 != 4) {
                        return new LX(lx.A03, lx.A01, 4);
                    }
                    return LX.A06;
                }
                throw new LY(lx);
            }

            @Override // com.facebook.ads.redexgen.X.LZ
            public final void AIU(ByteBuffer byteBuffer) {
                ByteBuffer buffer;
                int i2 = byteBuffer.position();
                int size = byteBuffer.limit();
                int limit = size - i2;
                int position = this.A05.A02;
                switch (position) {
                    case 536870912:
                        int position2 = limit / 3;
                        buffer = A00(position2 * 4);
                        while (i2 < size) {
                            int position3 = byteBuffer.get(i2);
                            int limit2 = (position3 & 255) << 8;
                            int position4 = i2 + 1;
                            int limit3 = limit2 | ((byteBuffer.get(position4) & 255) << 16);
                            int position5 = i2 + 2;
                            A00(limit3 | ((byteBuffer.get(position5) & 255) << 24), buffer);
                            i2 += 3;
                        }
                        break;
                    case 805306368:
                        buffer = A00(limit);
                        while (i2 < size) {
                            byte b = byteBuffer.get(i2);
                            if (A00[4].length() != 16) {
                                throw new RuntimeException();
                            }
                            String[] strArr = A00;
                            strArr[6] = "";
                            strArr[1] = "ihLtRy11";
                            int position6 = i2 + 1;
                            int limit4 = (b & 255) | ((byteBuffer.get(position6) & 255) << 8);
                            int position7 = i2 + 2;
                            int limit5 = limit4 | ((byteBuffer.get(position7) & 255) << 16);
                            int position8 = i2 + 3;
                            A00(limit5 | ((byteBuffer.get(position8) & 255) << 24), buffer);
                            i2 += 4;
                        }
                        break;
                    default:
                        throw new IllegalStateException();
                }
                int i3 = byteBuffer.limit();
                if (A00[0].charAt(14) == 85) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A00;
                strArr2[7] = "8UXbWGhdR90bMqntR97pq9Fh";
                strArr2[2] = "U50wiiPjEpdDhO7QiTcto1IrT7nYkJ";
                byteBuffer.position(i3);
                buffer.flip();
            }
        }};
        this.A00 = 1.0f;
        this.A0E = VL.A07;
        this.A01 = 0;
        this.A0F = new C1700Jq(0, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        this.A0N = new R8(UW.A05, false, 0L, 0L);
        this.A0G = UW.A05;
        this.A03 = -1;
        this.A0d = new LZ[0];
        this.A0e = new ByteBuffer[0];
        this.A0q = new ArrayDeque<>();
        this.A0n = new RB<>(100L);
        this.A0o = new RB<>(100L);
        this.A0i = null;
    }

    @MetaExoPlayerCustomization
    private int A00() {
        if (XL.A03(XQ.A2P)) {
            return A01(this.A0K.A06, this.A0K.A02, this.A0K.A03);
        }
        return 1000000;
    }

    public static int A01(int i, int i2, int i3) {
        int minBufferSize = AudioTrack.getMinBufferSize(i, i2, i3);
        AbstractC1747Ln.A08(minBufferSize != -2);
        if (A0z[7].length() != 15) {
            throw new RuntimeException();
        }
        String[] strArr = A0z;
        strArr[3] = "hde9tmFJyYnvwgND2M";
        strArr[5] = "CEfKXpgba9aNeWtlCc";
        return minBufferSize;
    }

    public static int A02(int i, ByteBuffer byteBuffer) {
        switch (i) {
            case 5:
            case 6:
            case 18:
                return AbstractC2051Yd.A03(byteBuffer);
            case 7:
            case 8:
                int iA00 = AbstractC2066Yt.A00(byteBuffer);
                String[] strArr = A0z;
                if (strArr[6].length() == strArr[2].length()) {
                    throw new RuntimeException();
                }
                A0z[7] = "V8hnj9LlpZTe9lZ";
                return iA00;
            case 9:
                int headerDataInBigEndian = ZA.A01(N1.A0F(byteBuffer, byteBuffer.position()));
                if (headerDataInBigEndian != -1) {
                    return headerDataInBigEndian;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return a.o;
            case 13:
            case 19:
            default:
                throw new IllegalStateException(A0L(244, 27, 25) + i);
            case 14:
                int syncframeOffset = AbstractC2051Yd.A02(byteBuffer);
                if (syncframeOffset == -1) {
                    return 0;
                }
                return AbstractC2051Yd.A04(byteBuffer, syncframeOffset) * 16;
            case 15:
                return EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
            case 16:
                return 1024;
            case 17:
                return AbstractC2054Yg.A01(byteBuffer);
            case 20:
                return ZF.A00(byteBuffer);
        }
    }

    private int A03(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        if (N1.A02 >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (!AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return 0;
        }
        if (N1.A02 != 30) {
            return 1;
        }
        String str = N1.A06;
        if (A0z[7].length() != 15) {
            throw new RuntimeException();
        }
        A0z[7] = "y2mCjJbKjRqrTFM";
        if (str.startsWith(A0L(173, 5, 52))) {
            return 2;
        }
        return 1;
    }

    public static int A04(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    private int A05(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (N1.A02 >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.A0P == null) {
            this.A0P = ByteBuffer.allocate(16);
            this.A0P.order(ByteOrder.BIG_ENDIAN);
            this.A0P.putInt(1431633921);
        }
        if (this.A02 == 0) {
            this.A0P.putInt(4, i);
            this.A0P.putLong(8, 1000 * j);
            this.A0P.position(0);
            this.A02 = i;
        }
        int result = this.A0P.remaining();
        if (result > 0) {
            int avSyncHeaderBytesRemaining = audioTrack.write(this.A0P, result, 1);
            if (avSyncHeaderBytesRemaining < 0) {
                this.A02 = 0;
                return avSyncHeaderBytesRemaining;
            }
            if (avSyncHeaderBytesRemaining < result) {
                return 0;
            }
        }
        int iA04 = A04(audioTrack, byteBuffer, i);
        if (iA04 < 0) {
            this.A02 = 0;
            return iA04;
        }
        this.A02 -= iA04;
        return iA04;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long A06() {
        if (this.A0K.A04 == 0) {
            return this.A0A / ((long) this.A0K.A01);
        }
        return this.A09;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long A07() {
        if (this.A0K.A04 == 0) {
            return this.A0C / ((long) this.A0K.A05);
        }
        return this.A0B;
    }

    private long A08(long j) {
        while (!this.A0q.isEmpty()) {
            R8 first = this.A0q.getFirst();
            if (A0z[1].length() == 12) {
                throw new RuntimeException();
            }
            A0z[7] = "Bn5bym0ViaigI51";
            if (j < first.A00) {
                break;
            }
            this.A0N = this.A0q.remove();
        }
        long j2 = j - this.A0N.A00;
        if (this.A0N.A02.equals(UW.A05)) {
            return this.A0N.A01 + j2;
        }
        if (this.A0q.isEmpty()) {
            long mediaDurationSinceLastCheckpointUs = this.A0g.A96(j2);
            long playoutDurationSinceLastCheckpointUs = this.A0N.A01;
            return playoutDurationSinceLastCheckpointUs + mediaDurationSinceLastCheckpointUs;
        }
        R8 first2 = this.A0q.getFirst();
        long jA0Q = N1.A0Q(first2.A00 - j, this.A0N.A02.A01);
        long playoutDurationSinceLastCheckpointUs2 = first2.A01;
        return playoutDurationSinceLastCheckpointUs2 - jA0Q;
    }

    private long A09(long j) {
        return this.A0K.A08(this.A0g.A9l()) + j;
    }

    public static AudioFormat A0D(int i, int i2, int i3) {
        return new AudioFormat.Builder().setSampleRate(i).setChannelMask(i2).setEncoding(i3).build();
    }

    private AudioTrack A0F() throws C1859Qi {
        try {
            return A0G((R6) AbstractC1747Ln.A01(this.A0K));
        } catch (C1859Qi e) {
            int retryBufferSize = A00();
            if (this.A0K.A00 > retryBufferSize) {
                R6 r6A0C = this.A0K.A0C(retryBufferSize);
                try {
                    AudioTrack audioTrackA0G = A0G(r6A0C);
                    this.A0K = r6A0C;
                    return audioTrackA0G;
                } catch (C1859Qi initialFailure) {
                    e.addSuppressed(initialFailure);
                    A0O();
                    throw e;
                }
            }
            A0O();
            throw e;
        }
    }

    private AudioTrack A0G(R6 r6) throws C1859Qi {
        try {
            AudioTrack audioTrackA0A = r6.A0A(this.A0b, this.A0E, this.A01);
            if (0 != 0) {
                A0l(audioTrackA0A);
            }
            return audioTrackA0A;
        } catch (C1859Qi e) {
            if (this.A0I != null) {
                this.A0I.AE2(e);
            }
            throw e;
        }
    }

    private UW A0I() {
        return A0K().A02;
    }

    private R8 A0K() {
        if (this.A0M != null) {
            return this.A0M;
        }
        if (!this.A0q.isEmpty()) {
            return this.A0q.getLast();
        }
        return this.A0N;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0004 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0N() {
        /*
            r3 = this;
            r2 = 0
        L1:
            com.facebook.ads.redexgen.X.LZ[] r0 = r3.A0d
            int r0 = r0.length
            if (r2 >= r0) goto L18
            com.facebook.ads.redexgen.X.LZ[] r0 = r3.A0d
            r0 = r0[r2]
            r0.flush()
            java.nio.ByteBuffer[] r1 = r3.A0e
            java.nio.ByteBuffer r0 = r0.A9G()
            r1[r2] = r0
            int r2 = r2 + 1
            goto L1
        L18:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.SI.A0N():void");
    }

    private void A0O() {
        if (!this.A0K.A0D()) {
            return;
        }
        this.A0W = true;
    }

    private void A0P() {
        if (!this.A0a) {
            this.A0a = true;
            this.A0k.A0H(A07());
            this.A0D.stop();
            this.A02 = 0;
        }
    }

    private void A0Q() {
        this.A0A = 0L;
        this.A09 = 0L;
        this.A0C = 0L;
        this.A0B = 0L;
        this.A0V = false;
        this.A04 = 0;
        this.A0N = new R8(A0I(), A0p(), 0L, 0L);
        this.A08 = 0L;
        this.A0M = null;
        this.A0q.clear();
        this.A0Q = null;
        this.A05 = 0;
        this.A0R = null;
        this.A0a = false;
        this.A0U = false;
        this.A03 = -1;
        this.A0P = null;
        this.A02 = 0;
        this.A0p.A0D();
        A0N();
    }

    private void A0R() {
        if (!A0h()) {
            return;
        }
        if (N1.A02 >= 21) {
            A0X(this.A0D, this.A00);
        } else {
            A0Y(this.A0D, this.A00);
        }
    }

    private void A0S() {
        LZ[] lzArr = this.A0K.A09;
        ArrayList arrayList = new ArrayList();
        for (LZ lz : lzArr) {
            if (lz.AB3()) {
                arrayList.add(lz);
            } else {
                lz.flush();
            }
        }
        int size = arrayList.size();
        LZ[] audioProcessors = new LZ[size];
        this.A0d = (LZ[]) arrayList.toArray(audioProcessors);
        this.A0e = new ByteBuffer[size];
        A0N();
    }

    private void A0U(long j) {
        UW uwA4g;
        boolean zA4h;
        if (A0i()) {
            uwA4g = this.A0g.A4g(A0I());
        } else {
            uwA4g = UW.A05;
        }
        if (A0i()) {
            zA4h = this.A0g.A4h(A0p());
        } else {
            zA4h = false;
        }
        this.A0q.add(new R8(uwA4g, zA4h, Math.max(0L, j), this.A0K.A08(A07())));
        A0S();
        if (this.A0I != null) {
            this.A0I.AH5(zA4h);
        }
    }

    private void A0V(long j) throws Exception {
        ByteBuffer input;
        int length = this.A0d.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                int count = i - 1;
                input = this.A0e[count];
            } else {
                ByteBuffer byteBuffer = this.A0Q;
                String[] strArr = A0z;
                String str = strArr[3];
                String str2 = strArr[5];
                int index = str.length();
                int count2 = str2.length();
                if (index != count2) {
                    throw new RuntimeException();
                }
                A0z[0] = "l";
                input = byteBuffer != null ? this.A0Q : LZ.A00;
            }
            if (i == length) {
                A0e(input, j);
            } else {
                LZ lz = this.A0d[i];
                int count3 = this.A03;
                if (i > count3) {
                    lz.AIU(input);
                }
                ByteBuffer byteBufferA9G = lz.A9G();
                this.A0e[i] = byteBufferA9G;
                if (byteBufferA9G.hasRemaining()) {
                    i++;
                }
            }
            if (input.hasRemaining()) {
                return;
            } else {
                i--;
            }
        }
    }

    private void A0W(AudioTrack audioTrack) {
        if (this.A0O == null) {
            this.A0O = new RD(this);
        }
        this.A0O.A00(audioTrack);
    }

    public static void A0X(AudioTrack audioTrack, float f) {
        audioTrack.setVolume(f);
    }

    public static void A0Y(AudioTrack audioTrack, float f) {
        audioTrack.setStereoVolume(f, f);
    }

    private void A0Z(final AudioTrack audioTrack, final C1756Lx c1756Lx, final InterfaceC1861Qk interfaceC1861Qk, final C1857Qg c1857Qg) {
        c1756Lx.A02();
        final Handler handler = new Handler(Looper.myLooper());
        synchronized (A10) {
            if (A0x == null) {
                A0x = N1.A0u(A0L(23, 33, 59));
            }
            A0w++;
            A0x.execute(new Runnable() { // from class: com.facebook.ads.redexgen.X.Qz
                @Override // java.lang.Runnable
                public final void run() {
                    SI.A0a(audioTrack, interfaceC1861Qk, handler, c1857Qg, c1756Lx);
                }
            });
        }
    }

    public static /* synthetic */ void A0a(AudioTrack audioTrack, final InterfaceC1861Qk interfaceC1861Qk, Handler handler, final C1857Qg c1857Qg, C1756Lx c1756Lx) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (interfaceC1861Qk != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Qy
                    @Override // java.lang.Runnable
                    public final void run() {
                        interfaceC1861Qk.AE4(c1857Qg);
                    }
                });
            }
            c1756Lx.A04();
            synchronized (A10) {
                A0w--;
                if (A0w == 0) {
                    A0x.shutdown();
                    A0x = null;
                }
            }
        } catch (Throwable th) {
            if (interfaceC1861Qk != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Qy
                    @Override // java.lang.Runnable
                    public final void run() {
                        interfaceC1861Qk.AE4(c1857Qg);
                    }
                });
            }
            c1756Lx.A04();
            synchronized (A10) {
                A0w--;
                if (A0w == 0) {
                    A0x.shutdown();
                    A0x = null;
                }
                throw th;
            }
        }
    }

    private void A0b(UW uw) {
        if (A0h()) {
            try {
                this.A0D.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(uw.A01).setPitch(uw.A00).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e) {
                MV.A0A(A0L(7, 16, 21), A0L(56, 29, 42), e);
            }
            PlaybackParams playbackParams = this.A0D.getPlaybackParams();
            float speed = playbackParams.getSpeed();
            PlaybackParams playbackParams2 = this.A0D.getPlaybackParams();
            uw = new UW(speed, playbackParams2.getPitch());
            this.A0k.A0G(uw.A01);
        }
        this.A0G = uw;
    }

    private void A0c(UW uw, boolean z) {
        R8 r8A0K = A0K();
        if (!uw.equals(r8A0K.A02) || z != r8A0K.A03) {
            R8 mediaPositionParameters = new R8(uw, z, -9223372036854775807L, -9223372036854775807L);
            if (A0h()) {
                this.A0M = mediaPositionParameters;
            } else {
                this.A0N = mediaPositionParameters;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0147  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0e(java.nio.ByteBuffer r13, long r14) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 393
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.SI.A0e(java.nio.ByteBuffer, long):void");
    }

    private boolean A0f() throws Exception {
        boolean z = false;
        if (this.A03 == -1) {
            this.A03 = 0;
            z = true;
        }
        while (this.A03 < this.A0d.length) {
            LZ lz = this.A0d[this.A03];
            if (z) {
                lz.AIT();
            }
            A0V(-9223372036854775807L);
            boolean audioProcessorNeedsEndOfStream = lz.AB7();
            if (!audioProcessorNeedsEndOfStream) {
                return false;
            }
            z = true;
            this.A03++;
        }
        if (this.A0R != null) {
            A0e(this.A0R, -9223372036854775807L);
            if (this.A0R != null) {
                return false;
            }
        }
        this.A03 = -1;
        return true;
    }

    @MetaExoPlayerCustomization
    private boolean A0g() throws C1859Qi {
        if (!this.A0h.A03()) {
            return false;
        }
        this.A0D = this.A0S ? A0F() : A0G(this.A0K);
        if (A0l(this.A0D)) {
            A0W(this.A0D);
            if (this.A0f != 3) {
                this.A0D.setOffloadDelayPadding(this.A0K.A07.A08, this.A0K.A07.A09);
            }
        }
        if (N1.A02 >= 31 && this.A0H != null) {
            R2.A00(this.A0D, this.A0H);
        }
        this.A01 = this.A0D.getAudioSessionId();
        this.A0k.A0I(this.A0D, this.A0K.A04 == 2, this.A0K.A03, this.A0K.A05, this.A0K.A00);
        A0R();
        if (this.A0F.A01 != 0) {
            this.A0D.attachAuxEffect(this.A0F.A01);
            this.A0D.setAuxEffectSendLevel(this.A0F.A00);
        }
        if (this.A0J != null && N1.A02 >= 23) {
            AudioTrack audioTrack = this.A0D;
            R3 r3 = this.A0J;
            if (A0z[4].charAt(3) != 'K') {
                throw new RuntimeException();
            }
            A0z[4] = "TOuKrcb9bBSyou7w4tIdRoCGV6m3sHcQ";
            R1.A00(audioTrack, r3);
        }
        this.A0Y = true;
        if (this.A0I != null) {
            this.A0I.AE3(this.A0K.A0B());
        }
        return true;
    }

    private boolean A0h() {
        return this.A0D != null;
    }

    private boolean A0i() {
        if (!this.A0b) {
            if (A0L(271, 9, 71).equals(this.A0K.A07.A0W) && !A0j(this.A0K.A07.A0C)) {
                return true;
            }
        }
        return false;
    }

    private boolean A0j(int i) {
        return this.A0s && N1.A14(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0k(int r4) {
        /*
            int r1 = com.facebook.ads.redexgen.X.N1.A02
            r0 = 24
            if (r1 < r0) goto L29
            r3 = -6
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.SI.A0z
            r0 = 4
            r1 = r1[r0]
            r0 = 3
            char r1 = r1.charAt(r0)
            r0 = 75
            if (r1 == r0) goto L1b
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L1b:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.SI.A0z
            java.lang.String r1 = "lrlu1YMM3"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "lPjq"
            r0 = 2
            r2[r0] = r1
            if (r4 == r3) goto L2d
        L29:
            r0 = -32
            if (r4 != r0) goto L2f
        L2d:
            r0 = 1
        L2e:
            return r0
        L2f:
            r0 = 0
            goto L2e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.SI.A0k(int):boolean");
    }

    public static boolean A0l(AudioTrack audioTrack) {
        return N1.A02 >= 29 && audioTrack.isOffloadedPlayback();
    }

    private boolean A0m(VC vc, VL vl) {
        int iA03;
        if (N1.A02 < 29 || this.A0f == 0 || (iA03 = L8.A03((String) AbstractC1747Ln.A01(vc.A0W), vc.A0R)) == 0) {
            return false;
        }
        int encoding = vc.A06;
        int channelConfig = N1.A01(encoding);
        if (channelConfig == 0) {
            return false;
        }
        int encoding2 = vc.A0G;
        AudioFormat audioFormatA0D = A0D(encoding2, channelConfig, iA03);
        Jo joA01 = vl.A01();
        String[] strArr = A0z;
        String str = strArr[3];
        String str2 = strArr[5];
        int channelConfig2 = str.length();
        int encoding3 = str2.length();
        if (channelConfig2 != encoding3) {
            throw new RuntimeException();
        }
        A0z[7] = "wr15FegATdwNzOE";
        switch (A03(audioFormatA0D, joA01.A00)) {
            case 0:
                return false;
            case 1:
                boolean z = (vc.A08 == 0 && vc.A09 == 0) ? false : true;
                int encoding4 = this.A0f == 1 ? 1 : 0;
                return !z || encoding4 == 0;
            case 2:
                return true;
            default:
                throw new IllegalStateException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b7 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A0o(com.facebook.ads.redexgen.X.VC r7) {
        /*
            r6 = this;
            r2 = 271(0x10f, float:3.8E-43)
            r1 = 9
            r0 = 71
            java.lang.String r1 = A0L(r2, r1, r0)
            java.lang.String r0 = r7.A0W
            boolean r0 = r1.equals(r0)
            r5 = 0
            r3 = 2
            if (r0 == 0) goto L75
            int r0 = r7.A0C
            boolean r0 = com.facebook.ads.redexgen.X.N1.A15(r0)
            if (r0 != 0) goto L46
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r2 = 85
            r1 = 22
            r0 = 59
            java.lang.String r0 = A0L(r2, r1, r0)
            java.lang.StringBuilder r1 = r3.append(r0)
            int r0 = r7.A0C
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r3 = r0.toString()
            r2 = 7
            r1 = 16
            r0 = 21
            java.lang.String r0 = A0L(r2, r1, r0)
            com.facebook.ads.redexgen.X.MV.A07(r0, r3)
            return r5
        L46:
            int r0 = r7.A0C
            if (r0 == r3) goto L6c
            boolean r4 = r6.A0s
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.SI.A0z
            r0 = 1
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 12
            if (r1 == r0) goto L6f
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.SI.A0z
            java.lang.String r1 = "Bw2a5srSe"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "3FVt"
            r0 = 2
            r2[r0] = r1
            if (r4 == 0) goto L6d
            int r1 = r7.A0C
            r0 = 4
            if (r1 != r0) goto L6d
        L6c:
            return r3
        L6d:
            r0 = 1
            return r0
        L6f:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L75:
            boolean r0 = r6.A0W
            if (r0 != 0) goto L82
            com.facebook.ads.redexgen.X.VL r0 = r6.A0E
            boolean r0 = r6.A0m(r7, r0)
            if (r0 == 0) goto L82
            return r3
        L82:
            com.facebook.ads.redexgen.X.QG r4 = r6.A0j
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.SI.A0z
            r0 = 6
            r1 = r2[r0]
            r0 = 2
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto La4
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.SI.A0z
            java.lang.String r1 = "BY0R3EI7a4MwoCm"
            r0 = 7
            r2[r0] = r1
            boolean r0 = r4.A0B(r7)
            if (r0 == 0) goto Lb7
        La3:
            return r3
        La4:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.SI.A0z
            java.lang.String r1 = "QSALspWmy"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "Vn1k"
            r0 = 2
            r2[r0] = r1
            boolean r0 = r4.A0B(r7)
            if (r0 == 0) goto Lb7
            goto La3
        Lb7:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.SI.A0o(com.facebook.ads.redexgen.X.VC):int");
    }

    public final boolean A0p() {
        return A0K().A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void A5i(VC vc, int i, int[] iArr) throws C1858Qh {
        int outputPcmFrameSize;
        LZ[] lzArr;
        int outputPcmFrameSize2;
        int outputEncoding;
        int outputSampleRate;
        int inputPcmFrameSize;
        int outputMode;
        int[] iArr2 = iArr;
        int iA7f = i;
        if (A0L(271, 9, 71).equals(vc.A0W)) {
            AbstractC1747Ln.A07(N1.A15(vc.A0C));
            outputPcmFrameSize = N1.A06(vc.A0C, vc.A06);
            if (A0j(vc.A0C)) {
                lzArr = this.A0t;
            } else {
                lzArr = this.A0u;
            }
            this.A0p.A0E(vc.A08, vc.A09);
            if (N1.A02 < 21 && vc.A06 == 8 && iArr2 == null) {
                String[] strArr = A0z;
                if (strArr[6].length() == strArr[2].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0z;
                strArr2[3] = "LMKFeEazs9KoiJg3dX";
                strArr2[5] = "3d4lOtTfogOvC64r6v";
                iArr2 = new int[6];
                int i2 = 0;
                while (true) {
                    int length = iArr2.length;
                    if (A0z[1].length() == 12) {
                        if (i2 >= length) {
                            break;
                        }
                        iArr2[i2] = i2;
                        i2++;
                    } else {
                        A0z[1] = "h";
                        if (i2 >= length) {
                            break;
                        }
                        iArr2[i2] = i2;
                        i2++;
                    }
                }
            }
            this.A0l.A0C(iArr2);
            LX lx = new LX(vc.A0G, vc.A06, vc.A0C);
            for (LZ lz : lzArr) {
                try {
                    LX lxA5g = lz.A5g(lx);
                    if (lz.AB3()) {
                        lx = lxA5g;
                    }
                } catch (LY e) {
                    throw new C1858Qh(e, vc);
                }
            }
            outputSampleRate = 0;
            inputPcmFrameSize = lx.A02;
            outputPcmFrameSize2 = lx.A03;
            int outputMode2 = lx.A01;
            outputMode = N1.A01(outputMode2);
            int outputMode3 = lx.A01;
            outputEncoding = N1.A06(inputPcmFrameSize, outputMode3);
        } else {
            outputPcmFrameSize = -1;
            lzArr = new LZ[0];
            outputPcmFrameSize2 = vc.A0G;
            outputEncoding = -1;
            if (A0m(vc, this.A0E)) {
                outputSampleRate = 1;
                inputPcmFrameSize = L8.A03((String) AbstractC1747Ln.A01(vc.A0W), vc.A0R);
                int outputMode4 = vc.A06;
                outputMode = N1.A01(outputMode4);
            } else {
                outputSampleRate = 2;
                Pair<Integer, Integer> pairA09 = this.A0j.A09(vc);
                if (pairA09 != null) {
                    inputPcmFrameSize = ((Integer) pairA09.first).intValue();
                    outputMode = ((Integer) pairA09.second).intValue();
                } else {
                    throw new C1858Qh(A0L(207, 37, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE) + vc, vc);
                }
            }
        }
        String strA0L = A0L(0, 7, 95);
        if (inputPcmFrameSize != 0) {
            if (outputMode != 0) {
                if (iA7f == 0) {
                    R4 r4 = this.A0m;
                    int iA01 = A01(outputPcmFrameSize2, outputMode, inputPcmFrameSize);
                    int outputChannelConfig = outputEncoding != -1 ? outputEncoding : 1;
                    iA7f = r4.A7f(iA01, inputPcmFrameSize, outputSampleRate, outputChannelConfig, outputPcmFrameSize2, vc.A05, this.A0r ? 8.0d : 1.0d);
                }
                this.A0W = false;
                R6 r6 = new R6(vc, outputPcmFrameSize, outputSampleRate, outputEncoding, outputPcmFrameSize2, outputMode, inputPcmFrameSize, iA7f, lzArr, this.A0b);
                if (A0h()) {
                    this.A0L = r6;
                    return;
                } else {
                    this.A0K = r6;
                    return;
                }
            }
            throw new C1858Qh(A0L(107, 36, 46) + outputSampleRate + strA0L + vc, vc);
        }
        throw new C1858Qh(A0L(143, 30, 41) + outputSampleRate + strA0L + vc, vc);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void A6Y() {
        if (this.A0b) {
            this.A0b = false;
            flush();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void A6v() {
        AbstractC1747Ln.A08(N1.A02 >= 21);
        AbstractC1747Ln.A08(this.A0T);
        if (!this.A0b) {
            this.A0b = true;
            flush();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void A72() {
        if (N1.A02 < 25) {
            flush();
            return;
        }
        this.A0o.A00();
        this.A0n.A00();
        if (!A0h()) {
            return;
        }
        A0Q();
        if (this.A0k.A0J()) {
            this.A0D.pause();
        }
        this.A0D.flush();
        this.A0k.A0E();
        this.A0k.A0I(this.A0D, this.A0K.A04 == 2, this.A0K.A03, this.A0K.A05, this.A0K.A00);
        this.A0Y = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final long A8G(boolean z) {
        if (!A0h() || this.A0Y) {
            if (A0z[0].length() == 24) {
                throw new RuntimeException();
            }
            A0z[7] = "q8RVGeKBIXt5NkT";
            return Long.MIN_VALUE;
        }
        long jA0D = this.A0k.A0D(z);
        R6 r6 = this.A0K;
        long positionUs = A07();
        return A09(A08(Math.min(jA0D, r6.A08(positionUs))));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final UW A9P() {
        if (this.A0r) {
            return this.A0G;
        }
        return A0I();
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0125, code lost:
    
        if (r7 == 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0127, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x012f, code lost:
    
        if (r7 == 0) goto L72;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x018d A[PHI: r2
      0x018d: PHI (r2v13 long) = (r2v7 long), (r2v14 long) binds: [B:102:0x01c3, B:89:0x018b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01ae  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean AAI(java.nio.ByteBuffer r12, long r13, int r15) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 572
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.SI.AAI(java.nio.ByteBuffer, long, int):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void AAL() {
        this.A0Z = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final boolean AAS() {
        return A0h() && this.A0k.A0L(A07());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final boolean AB7() {
        return !A0h() || (this.A0U && !AAS());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void AID() {
        this.A0X = true;
        if (A0h()) {
            this.A0k.A0F();
            this.A0D.play();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void AIF() throws C1864Qn {
        if (!this.A0U && A0h() && A0f()) {
            A0P();
            this.A0U = true;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void AKY(VL vl) {
        if (this.A0E.equals(vl)) {
            return;
        }
        this.A0E = vl;
        if (this.A0b) {
            return;
        }
        flush();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void AKZ(int i) {
        if (this.A01 != i) {
            this.A01 = i;
            this.A0T = i != 0;
            flush();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void AKa(C1700Jq c1700Jq) {
        if (this.A0F.equals(c1700Jq)) {
            return;
        }
        int i = c1700Jq.A01;
        float sendLevel = c1700Jq.A00;
        if (this.A0D != null) {
            int effectId = this.A0F.A01;
            if (effectId != i) {
                this.A0D.attachAuxEffect(i);
            }
            if (i != 0) {
                this.A0D.setAuxEffectSendLevel(sendLevel);
            }
        }
        this.A0F = c1700Jq;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    @MetaExoPlayerCustomization
    public final void AKi(boolean z) {
        this.A0S = z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void AKn(InterfaceC1861Qk interfaceC1861Qk) {
        this.A0I = interfaceC1861Qk;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void AKv(UW uw) {
        UW uw2 = new UW(N1.A00(uw.A01, 0.1f, 8.0f), N1.A00(uw.A00, 0.1f, 8.0f));
        if (this.A0r && N1.A02 >= 23) {
            A0b(uw2);
        } else {
            A0c(uw2, A0p());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void AKy(QD qd) {
        this.A0H = qd;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void AL0(AudioDeviceInfo audioDeviceInfo) {
        this.A0J = audioDeviceInfo == null ? null : new R3(audioDeviceInfo);
        if (this.A0D != null) {
            AudioTrack audioTrack = this.A0D;
            R3 r3 = this.A0J;
            if (A0z[1].length() == 12) {
                throw new RuntimeException();
            }
            A0z[4] = "TVwKDquzdZaj55ztHBjiT9RTXoYS6OEJ";
            R1.A00(audioTrack, r3);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void AL6(boolean z) {
        A0c(A0I(), z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final boolean ALg(VC vc) {
        return A0o(vc) != 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    @MetaExoPlayerCustomization
    public final boolean ALi(int i, int i2) {
        return N1.A15(i2) ? i2 != 4 || N1.A02 >= 21 : this.A0j != null && this.A0j.A0A(i2) && (i == -1 || i <= this.A0j.A08());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void flush() {
        if (A0h()) {
            A0Q();
            if (this.A0k.A0J()) {
                this.A0D.pause();
            }
            if (A0l(this.A0D)) {
                Object objA01 = AbstractC1747Ln.A01(this.A0O);
                if (A0z[7].length() != 15) {
                    throw new RuntimeException();
                }
                A0z[0] = "fKqFQdt";
                ((RD) objA01).A01(this.A0D);
            }
            if (N1.A02 < 21 && !this.A0T) {
                this.A01 = 0;
            }
            C1857Qg c1857QgA0B = this.A0K.A0B();
            if (this.A0L != null) {
                this.A0K = this.A0L;
                if (A0z[7].length() != 15) {
                    A0z[4] = "g5yKq1FwVJXj3CcJHGy7F4n7ymxANttp";
                    this.A0L = null;
                } else {
                    String[] strArr = A0z;
                    strArr[6] = "zu2aRVclY";
                    strArr[2] = "noOD";
                    this.A0L = null;
                }
            }
            this.A0k.A0E();
            A0Z(this.A0D, this.A0h, this.A0I, c1857QgA0B);
            this.A0D = null;
        }
        this.A0o.A00();
        this.A0n.A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void pause() {
        this.A0X = false;
        if (A0h() && this.A0k.A0K()) {
            this.A0D.pause();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1865Qo
    public final void setVolume(float f) {
        if (this.A00 != f) {
            this.A00 = f;
            A0R();
        }
    }
}
