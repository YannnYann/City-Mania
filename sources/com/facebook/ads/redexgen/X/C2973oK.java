package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Pair;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2973oK {
    public static byte[] A08;
    public static final ThreadFactoryC3114qf A09;
    public static final Executor A0A;
    public static final AtomicReference<InterfaceC2977oO> A0B;
    public long A00;
    public long A01;
    public InterfaceC2972oJ A02;
    public Map<String, String> A03;
    public final C2504ga A04;
    public final C1643Hi A05;
    public final C2974oL A06;
    public final String A07;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 80);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A08 = new byte[]{56, 63, 50, 56, 105, 63, 62, 57, 122, 105, 107, 119, 117, 78, 65, 68, 72, 67, 89, 82, 95, 72, 92, 88, 72, 94, 89, 82, 68, 73, 98, 88, 11, 121, 101, 17, 11, 100, 101, 10, 108, 99, 102, 102, 10, 88, 79, 73, 79, 67, 92, 79, 78, 20, 53, 122, 28, 51, 54, 54, 122, 63, 40, 40, 53, 40, 122, 57, 53, 62, 63, 122, 1, 127, 41, 7, 122, 127, 41, 15, 13, 6, 13, 26, 1, 11, 81, 90, 75, 72, 80, 77, 84, 40, 41, 0, 47, 42, 42, 14, 41, 41, 45, 41, 43, 54, 47, 48, 61, 60};
    }

    static {
        A0B();
        A09 = new ThreadFactoryC3114qf();
        A0A = Executors.newCachedThreadPool(A09);
        A0B = new AtomicReference<>();
    }

    public C2973oK(C1643Hi c1643Hi) {
        this(c1643Hi, AbstractC2505gb.A00(c1643Hi.A02()));
    }

    public C2973oK(C1643Hi c1643Hi, C2504ga c2504ga) {
        this.A01 = -1L;
        this.A00 = -1L;
        this.A05 = c1643Hi;
        this.A06 = C2974oL.A00();
        this.A07 = AbstractC2978oP.A01(c1643Hi);
        this.A04 = c2504ga;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public GJ A03(long j, C2970oH c2970oH) {
        return new GJ(this, c2970oH, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A() {
        if (this.A05 == null || !C2139af.A0A(this.A05)) {
            return;
        }
        C2812lg c2812lg = new C2812lg(A06(8, 5, 107));
        c2812lg.A05(1);
        this.A05.A08().ABz(A06(86, 7, 111), AbstractC2811lf.A1x, c2812lg);
    }

    private void A0C(int i, String str) {
        String strA06 = A06(37, 16, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE);
        String strA062 = A06(0, 8, 90);
        String strA063 = A06(93, 10, 22);
        AbstractC2958o5.A05(strA063, strA06, strA062);
        AbstractC2958o5.A04(strA063, String.format(Locale.US, A06(53, 26, 10), Integer.valueOf(i), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D(C2947nt c2947nt) {
        if (this.A02 != null) {
            this.A02.AEr(c2947nt);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0E(C2947nt c2947nt) {
        ExecutorC3104qV.A00(new GH(this, c2947nt));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0L(GG gg) {
        if (this.A02 != null) {
            this.A02.AHE(gg);
        } else {
            if (gg.A00() == null || gg.A00().A06() == null) {
                return;
            }
            C3013oz.A00(this.A05).A0D(gg.A00().A06().toString(), gg.A00().A0B());
        }
    }

    private void A0M(GG gg) {
        InterfaceC2786lG syncModule;
        ExecutorC3104qV.A00(new GI(this, gg));
        if (C2888mv.A2g(this.A05) && (syncModule = this.A05.A06()) != null) {
            syncModule.A7D();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0N(String str, long j, C2970oH c2970oH) {
        String clientChallenge;
        try {
        } catch (Exception e) {
            e = e;
        }
        try {
            C2976oN c2976oNA07 = this.A06.A07(this.A05, str, j);
            C2830ly c2830lyA00 = c2976oNA07.A00();
            if (c2830lyA00 != null) {
                C2888mv.A0T(this.A05).A39(c2830lyA00.A0A());
                if (C2888mv.A0w(this.A05) && c2830lyA00.A08() != null) {
                    AbstractC2840m9.A04(this.A05.A02(), c2830lyA00.A08());
                }
                if (C2888mv.A0x(this.A05) && c2830lyA00.A0C() != null) {
                    AbstractC2840m9.A05(this.A05.A02(), c2830lyA00.A0C());
                }
                this.A05.A08().ADG();
                this.A04.A0N(c2830lyA00.A07());
                AbstractC2969oG.A05(c2830lyA00.A05().A0B(), c2970oH);
                C3128qt.A01(this.A05, A0A, c2830lyA00);
                C2812lg c2812lg = new C2812lg(A06(30, 7, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE) + C3071py.A02());
                c2812lg.A06(1);
                c2812lg.A0A(false);
                this.A05.A08().AD0(A06(79, 7, 56), AbstractC2811lf.A1W, c2812lg);
            }
            switch (C2971oI.A00[c2976oNA07.A01().ordinal()]) {
                case 1:
                    GG gg = (GG) c2976oNA07;
                    if (c2830lyA00 != null) {
                        if (c2830lyA00.A05().A0E()) {
                            AbstractC2969oG.A07(str, c2970oH);
                        }
                        if (this.A03 != null) {
                            clientChallenge = this.A03.get(A06(13, 17, 93));
                        } else {
                            clientChallenge = null;
                        }
                        if (!TextUtils.isEmpty(c2976oNA07.A02()) && !TextUtils.isEmpty(clientChallenge)) {
                            this.A05.A03().AK0(this.A05, clientChallenge, c2976oNA07.A02());
                        }
                    }
                    this.A05.A0F().A3u(C3101qS.A01(this.A01), C3101qS.A02(this.A01, this.A00));
                    A0M(gg);
                    break;
                case 2:
                    GF gf = (GF) c2976oNA07;
                    String strA04 = gf.A04();
                    AdErrorType adErrorTypeAdErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(gf.A03(), AdErrorType.ERROR_MESSAGE);
                    A0C(gf.A03(), strA04);
                    if (strA04 == null) {
                        strA04 = str;
                    }
                    this.A05.A0F().A3t(C3101qS.A01(this.A01), adErrorTypeAdErrorTypeFromCode.getErrorCode(), strA04, adErrorTypeAdErrorTypeFromCode.isPublicError());
                    A0E(C2947nt.A01(adErrorTypeAdErrorTypeFromCode, strA04));
                    break;
                default:
                    AdErrorType adErrorType = AdErrorType.UNKNOWN_RESPONSE;
                    this.A05.A0F().A3t(C3101qS.A01(this.A01), adErrorType.getErrorCode(), str, adErrorType.isPublicError());
                    A0E(C2947nt.A01(adErrorType, str));
                    break;
            }
        } catch (Exception e2) {
            e = e2;
            String message = e.getMessage();
            AdErrorType adErrorType2 = AdErrorType.PARSER_FAILURE;
            this.A05.A0F().A3t(C3101qS.A01(this.A01), adErrorType2.getErrorCode(), message, adErrorType2.isPublicError());
            A0E(C2947nt.A01(adErrorType2, message));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0O(String str, long j, C2970oH c2970oH) {
        A0A.execute(new GK(this, str, j, c2970oH));
    }

    private boolean A0P(C2970oH c2970oH) {
        String string = c2970oH.A06().toString();
        if (C3013oz.A00(this.A05).A0F(string)) {
            return false;
        }
        int iA0A = C3013oz.A00(this.A05).A0A(string);
        int storedAdsCount = C2888mv.A0H(this.A05);
        int iA09 = C3013oz.A00(this.A05).A09(string);
        if (iA0A >= storedAdsCount || iA0A > iA09) {
            C3013oz c3013ozA00 = C3013oz.A00(this.A05);
            String type = c2970oH.A06().toString();
            Pair<String, String> pairA0B = c3013ozA00.A0B(type);
            if (pairA0B != null && pairA0B.second != null && pairA0B.first != null) {
                A0O(pairA0B.second.toString(), 0L, c2970oH);
                return true;
            }
        }
        return false;
    }

    public final void A0Q(C2970oH c2970oH) {
        this.A01 = System.currentTimeMillis();
        C2821lp.A0B(this.A05);
        A0B.get();
        if (0 != 0) {
            throw new NullPointerException(A06(103, 7, 9));
        }
        if (C2888mv.A00(this.A05) > 0 && A0P(c2970oH)) {
            return;
        }
        if (AbstractC2969oG.A08(c2970oH)) {
            ExecutorC3116qh.A06.execute(new GM(this));
            String strA02 = AbstractC2969oG.A02(c2970oH);
            if (strA02 != null) {
                this.A05.A0F().AM0();
                A0O(strA02, 0L, c2970oH);
                return;
            } else {
                AdErrorType error = AdErrorType.LOAD_TOO_FREQUENTLY;
                this.A05.A0F().A3t(C3101qS.A01(this.A01), error.getErrorCode(), error.getDefaultErrorMessage(), error.isPublicError());
                A0E(C2947nt.A01(error, null));
                return;
            }
        }
        A0A.execute(new GL(this, c2970oH));
    }

    public final void A0R(InterfaceC2972oJ interfaceC2972oJ) {
        this.A02 = interfaceC2972oJ;
    }
}
