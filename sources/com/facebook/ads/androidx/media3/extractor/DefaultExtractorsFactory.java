package com.facebook.ads.androidx.media3.extractor;

import android.net.Uri;
import com.facebook.ads.androidx.media3.extractor.DefaultExtractorsFactory;
import com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor;
import com.facebook.ads.redexgen.X.C1777Ms;
import com.facebook.ads.redexgen.X.C1790Nf;
import com.facebook.ads.redexgen.X.C1808Nx;
import com.facebook.ads.redexgen.X.C1827Oq;
import com.facebook.ads.redexgen.X.C1847Pr;
import com.facebook.ads.redexgen.X.C2064Yr;
import com.facebook.ads.redexgen.X.InterfaceC2063Yq;
import com.facebook.ads.redexgen.X.InterfaceC2068Yv;
import com.facebook.ads.redexgen.X.InterfaceC2072Yz;
import com.facebook.ads.redexgen.X.KZ;
import com.facebook.ads.redexgen.X.NV;
import com.facebook.ads.redexgen.X.OF;
import com.facebook.ads.redexgen.X.OH;
import com.facebook.ads.redexgen.X.OK;
import com.facebook.ads.redexgen.X.OO;
import com.facebook.ads.redexgen.X.P2;
import com.facebook.ads.redexgen.X.P4;
import com.facebook.ads.redexgen.X.PH;
import com.facebook.ads.redexgen.X.Pu;
import com.facebook.ads.redexgen.X.Q2;
import com.facebook.ads.redexgen.X.VC;
import com.facebook.ads.redexgen.X.XR;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.vungle.ads.internal.protos.Sdk;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class DefaultExtractorsFactory implements InterfaceC2072Yz {
    public static byte[] A0D;
    public static String[] A0E = {"o9C", "GXpkWwsbUyCdjMJss5Mlhy", "dX7kyu0ymu1tPk2MEjAuTC8bS", "CQJej7vggJCRVMlzrqPE0tiN", "jMocT0CgikAWlnOlhoP", "kPPXKPYJ9", "Q95avzczX4yS8nouaHMEsAoJkgDu5NL", "CsSLuTjAAQf3OuBEHFe3AyV6L"};
    public static final C2064Yr A0F;
    public static final C2064Yr A0G;
    public static final int[] A0H;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08 = 1;
    public int A09 = 112800;

    @MetaExoPlayerCustomization
    public List<VC> A0A = XR.A03(new VC[0]);
    public boolean A0B;
    public boolean A0C;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 54);
            String[] strArr = A0E;
            if (strArr[5].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[5] = "HZPlqvRiP";
            strArr2[0] = "iKB";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A0D = new byte[]{21, 33, 31, -32, 24, 19, 21, 23, 20, 33, 33, 29, -32, 19, 22, 37, -32, 19, 32, 22, 36, 33, 27, 22, 42, -32, 31, 23, 22, 27, 19, -27, -32, 22, 23, 21, 33, 22, 23, 36, -32, 31, 27, 22, 27, -32, -1, 27, 22, 27, -9, 42, 38, 36, 19, 21, 38, 33, 36, -29, -17, -19, -82, -26, -31, -29, -27, -30, -17, -17, -21, -82, -31, -28, -13, -82, -25, -17, -17, -25, -20, -27, -82, -31, -18, -28, -14, -17, -23, -28, -82, -27, -8, -17, -16, -20, -31, -7, -27, -14, -78, -82, -27, -8, -12, -82, -26, -20, -31, -29, -82, -58, -20, -31, -29, -59, -8, -12, -14, -31, -29, -12, -17, -14, -73, -61, -63, -126, -70, -75, -73, -71, -74, -61, -61, -65, -126, -75, -72, -57, -126, -69, -61, -61, -69, -64, -71, -126, -75, -62, -72, -58, -61, -67, -72, -126, -71, -52, -61, -60, -64, -75, -51, -71, -58, -122, -126, -71, -52, -56, -126, -70, -64, -75, -73, -126, -102, -64, -75, -73, -96, -67, -74, -58, -75, -58, -51, -13, -3, -53, 0, -21, -13, -10, -21, -20, -10, -17};
    }

    static {
        A05();
        A0H = new int[]{5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};
        A0F = new C2064Yr(new InterfaceC2063Yq() { // from class: com.facebook.ads.redexgen.X.QH
            @Override // com.facebook.ads.redexgen.X.InterfaceC2063Yq
            public final Constructor A82() {
                return DefaultExtractorsFactory.A01();
            }
        });
        A0G = new C2064Yr(new InterfaceC2063Yq() { // from class: com.facebook.ads.redexgen.X.QE
            @Override // com.facebook.ads.redexgen.X.InterfaceC2063Yq
            public final Constructor A82() {
                return DefaultExtractorsFactory.A02();
            }
        });
    }

    @MetaExoPlayerCustomization
    public DefaultExtractorsFactory() {
    }

    public static Constructor<? extends InterfaceC2068Yv> A01() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        boolean isFlacNativeLibraryAvailable = Boolean.TRUE.equals(Class.forName(A00(Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 63, 30)).getMethod(A00(187, 11, 84), new Class[0]).invoke(null, new Object[0]));
        if (!isFlacNativeLibraryAvailable) {
            return null;
        }
        return Class.forName(A00(59, 65, 74)).asSubclass(InterfaceC2068Yv.class).getConstructor(Integer.TYPE);
    }

    public static Constructor<? extends InterfaceC2068Yv> A02() throws NoSuchMethodException, ClassNotFoundException {
        return Class.forName(A00(0, 59, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE)).asSubclass(InterfaceC2068Yv.class).getConstructor(new Class[0]);
    }

    @MetaExoPlayerCustomization
    private void A06(int i, List<InterfaceC2068Yv> list) {
        int i2 = 2;
        switch (i) {
            case 0:
                list.add(new OO());
                return;
            case 1:
                list.add(new OK());
                return;
            case 2:
                int i3 = this.A00;
                boolean z = this.A0C;
                if (A0E[6].length() != 7) {
                    A0E[1] = "jXKq1Ha3Af98m8zeWTWpib";
                    int i4 = (z ? 1 : 0) | i3;
                    if (!this.A0B) {
                        i2 = 0;
                    }
                    list.add(new OH(i2 | i4));
                    return;
                }
                throw new RuntimeException();
            case 3:
                int i5 = (this.A0C ? 1 : 0) | this.A01;
                if (!this.A0B) {
                    i2 = 0;
                }
                list.add(new Q2(i2 | i5));
                return;
            case 4:
                InterfaceC2068Yv flacExtractor = A0F.A03(Integer.valueOf(this.A02));
                if (flacExtractor != null) {
                    list.add(flacExtractor);
                    return;
                } else {
                    list.add(new Pu(this.A02));
                    return;
                }
            case 5:
                list.add(new C1847Pr());
                return;
            case 6:
                list.add(new MatroskaExtractor(this.A04));
                return;
            case 7:
                int i6 = (this.A0C ? 1 : 0) | this.A05;
                if (!this.A0B) {
                    i2 = 0;
                }
                list.add(new PH(i2 | i6));
                return;
            case 8:
                list.add(new P2().A01(this.A03));
                list.add(new P4(this.A06));
                return;
            case 9:
                list.add(new C1827Oq());
                return;
            case 10:
                list.add(new C1808Nx());
                return;
            case 11:
                list.add(new C1790Nf(this.A08, new C1777Ms(0L), new OF(this.A07, this.A0A), this.A09));
                return;
            case 12:
                list.add(new NV());
                return;
            case 13:
            case 14:
            default:
                return;
            case 15:
                InterfaceC2068Yv midiExtractor = A0G.A03(new Object[0]);
                if (midiExtractor == null) {
                    return;
                }
                list.add(midiExtractor);
                return;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
    public final synchronized InterfaceC2068Yv[] A5w() {
        return A5x(Uri.EMPTY, new HashMap());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
    public final synchronized InterfaceC2068Yv[] A5x(Uri uri, Map<String, List<String>> responseHeaders) {
        List<Extractor> extractors;
        extractors = new ArrayList<>(A0H.length);
        int fileType = KZ.A02(responseHeaders);
        if (fileType != -1) {
            A06(fileType, extractors);
        }
        int iA00 = KZ.A00(uri);
        if (iA00 != -1 && iA00 != fileType) {
            A06(iA00, extractors);
        }
        for (int responseHeadersInferredFileType : A0H) {
            if (responseHeadersInferredFileType != fileType && responseHeadersInferredFileType != iA00) {
                A06(responseHeadersInferredFileType, extractors);
            }
        }
        return (InterfaceC2068Yv[]) extractors.toArray(new InterfaceC2068Yv[extractors.size()]);
    }
}
