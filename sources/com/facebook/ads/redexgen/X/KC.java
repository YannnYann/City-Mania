package com.facebook.ads.redexgen.X;

import android.os.Handler;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class KC implements InterfaceC2972oJ {
    public static byte[] A0E;
    public static String[] A0F = {"Um", "5O6Pi5UhekEiJBNtL2", "ByBiFstlzS", "VNZICTTmM6bBZ", "I3ykA2cHAONkN", "xnUs6VMzToWHuFoC", "Qkjm3fg24P6DD7pmZ7L4neN1zLjqdukp", "LFB8Dcv49A6aPeUL"};
    public InterfaceC2470g2 A00;
    public C2830ly A01;
    public String A02;
    public boolean A03;
    public final int A04;
    public final Handler A05;
    public final AdSize A06;
    public final C2398es A07;
    public final C1643Hi A08;
    public final InterfaceC2909nG A09;
    public final EnumC2950nx A0A;
    public final C2973oK A0B;
    public final Runnable A0C;
    public final String A0D;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A0F[2].length() != 10) {
                throw new RuntimeException();
            }
            A0F[1] = "uoxYJqIRleds8fPMMv";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 87);
            i4++;
        }
    }

    public static void A05() {
        byte[] bArr = {64, 65, -14, 66, 62, 51, 53, 55, 63, 55, 64, 70, -14, 59, 64, -14, 68, 55, 69, 66, 65, 64, 69, 55};
        if (A0F[0].length() != 2) {
            throw new RuntimeException();
        }
        A0F[1] = "dKV76OJFyRmVPWeRzZ";
        A0E = bArr;
    }

    static {
        A05();
        AbstractC3113qe.A02();
    }

    public KC(C1643Hi c1643Hi, String str, EnumC2950nx enumC2950nx, AdSize adSize, int i) {
        this.A08 = c1643Hi;
        this.A0D = str;
        this.A0A = enumC2950nx;
        this.A06 = adSize;
        this.A04 = i;
        this.A0B = new C2973oK(this.A08);
        this.A0B.A0R(this);
        this.A07 = new C2398es();
        this.A03 = true;
        this.A05 = new Handler();
        this.A0C = new G2<KC>(this) { // from class: com.facebook.ads.redexgen.X.7b
            public static String[] A00 = {"ByMq6MLqhjUJsdWB3RBIp", "zuOr3", "msyHKBX3wHVeYE5obxbctQprcgEzI02t", "I3sOgeRwcNYGF4oixOV5Q17", "dcB", "ibtCqc8qysdz0E5AMIDmPhuL1XZA", "mNtKCg4kzaH6sXUtb2oDuqx2", "ObFvkEusatMYzjWaq72f4FkWXHrQjerH"};

            {
                super(this);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
            public final void A07() {
                KC kcA08 = A08();
                if (kcA08 == null) {
                    return;
                }
                C1643Hi c1643Hi2 = kcA08.A08;
                String[] strArr = A00;
                if (strArr[3].length() == strArr[4].length()) {
                    throw new RuntimeException();
                }
                A00[5] = "SiVLKh";
                if (C3131qw.A02(c1643Hi2)) {
                    kcA08.A07();
                } else {
                    kcA08.A05.postDelayed(kcA08.A0C, 5000L);
                }
            }
        };
        this.A09 = c1643Hi.A0A();
        DynamicLoaderFactory.makeLoader(this.A08).getInitApi().onAdLoadInvoked(this.A08);
    }

    private List<C1741Lh> A04() {
        C2830ly c2830ly = this.A01;
        final ArrayList arrayList = new ArrayList(c2830ly.A02());
        for (C2828lw c2828lwA04 = c2830ly.A04(); c2828lwA04 != null; c2828lwA04 = c2830ly.A04()) {
            InterfaceC2393en interfaceC2393enA00 = this.A07.A00(this.A08, AdPlacementType.NATIVE);
            if (interfaceC2393enA00 != null && interfaceC2393enA00.A9N() == AdPlacementType.NATIVE) {
                final C1741Lh nativeAdapter = (C1741Lh) interfaceC2393enA00;
                nativeAdapter.A0L(this.A08, new KD() { // from class: com.facebook.ads.redexgen.X.7c
                    @Override // com.facebook.ads.redexgen.X.InterfaceC2408f2
                    public final void AG0(C1741Lh c1741Lh) {
                        arrayList.add(nativeAdapter);
                    }
                }, this.A09, new C2467fz(c2828lwA04.A04(), c2830ly.A05(), this.A0D, c2830ly.A05().A0C()), GT.A0K());
            }
        }
        return arrayList;
    }

    public final void A06() {
        this.A03 = false;
        this.A05.removeCallbacks(this.A0C);
    }

    public final void A07() {
        try {
            this.A0B.A0Q(new C2970oH(this.A08, this.A0D, this.A06 != null ? new C3087qE(this.A06.getWidth(), this.A06.getHeight()) : null, this.A0A, this.A04, new C2954o1(this.A08, null, null, null), AbstractC3093qK.A01(C2888mv.A0L(this.A08)), this.A02, null, new K5()));
        } catch (C2948nu e) {
            AEr(C2947nt.A02(e));
        }
    }

    public final void A08(InterfaceC2470g2 interfaceC2470g2) {
        this.A00 = interfaceC2470g2;
    }

    public final void A09(String str) {
        this.A02 = str;
    }

    public final boolean A0A() {
        return this.A01 == null || this.A01.A0H();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2972oJ
    public final void AEr(C2947nt c2947nt) {
        if (this.A03) {
            this.A05.postDelayed(this.A0C, 1800000L);
        }
        InterfaceC2470g2 interfaceC2470g2 = this.A00;
        if (A0F[2].length() != 10) {
            throw new RuntimeException();
        }
        A0F[2] = "yGn7NPCZVX";
        if (interfaceC2470g2 != null) {
            this.A00.AEr(c2947nt);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2972oJ
    public final void AHE(GG gg) {
        C2830ly c2830lyA00 = gg.A00();
        if (c2830lyA00 != null) {
            if (this.A03) {
                long jA0A = c2830lyA00.A05().A0A();
                if (jA0A == 0) {
                    jA0A = 1800000;
                }
                this.A05.postDelayed(this.A0C, jA0A);
            }
            this.A01 = c2830lyA00;
            List<C1741Lh> listA04 = A04();
            if (this.A00 != null) {
                if (listA04.isEmpty()) {
                    this.A00.AEr(C2947nt.A01(AdErrorType.NO_FILL, A03(0, 0, 68)));
                    return;
                } else {
                    this.A00.AG2(listA04);
                    return;
                }
            }
            return;
        }
        throw new IllegalStateException(A03(0, 24, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE));
    }
}
