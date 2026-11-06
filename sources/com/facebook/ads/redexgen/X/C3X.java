package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import com.facebook.ads.androidx.media3.common.ColorInfo;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.exoplayer.video.DummySurface;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3X, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3X extends C4H {
    public static boolean A0y;
    public static boolean A0z;
    public static byte[] A10;
    public static String[] A11 = {"RYIMeRWQ62G39l2OVauIZdmncmqxQuSx", "bDEe1VxjMLIaeYGjemsZIiA5L2aoyT0v", "F7IinEiVJZurDSY1", "qTkMRglA5JedC5ti1cNf8dUydPKqW6Sn", "5", "zPq5xDhZFx", "aMb", "iHy682td1SJKWmhJCWg02OfRO3R0e"};
    public static final int[] A12;
    public C1856Qf A00;
    public float A01;
    public float A02;
    public float A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public int A0E;
    public int A0F;
    public int A0G;
    public int A0H;
    public long A0I;
    public long A0J;
    public long A0K;
    public long A0L;
    public long A0M;
    public long A0N;
    public long A0O;
    public long A0P;
    public long A0Q;
    public long A0R;
    public MediaFormat A0S;
    public Surface A0T;
    public Surface A0U;
    public C1944Tp A0V;
    public XY A0W;
    public InterfaceC2038Xo A0X;
    public Object A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public boolean A0c;
    public boolean A0d;
    public boolean A0e;
    public boolean A0f;
    public boolean A0g;

    @MetaExoPlayerCustomization
    public boolean A0h;
    public boolean A0i;
    public boolean A0j;
    public boolean A0k;
    public final int A0l;
    public final int A0m;
    public final int A0n;
    public final long A0o;
    public final Context A0p;
    public final C2025Xa A0q;
    public final C2042Xt A0r;
    public final C2044Xw A0s;
    public final YB A0t;
    public final boolean A0u;
    public final boolean A0v;
    public final long[] A0w;
    public final long[] A0x;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Point A07(C1919Sq c1919Sq, VC vc) throws TK {
        boolean z = vc.A0A > vc.A0L;
        int i = z ? vc.A0A : vc.A0L;
        int i2 = z ? vc.A0L : vc.A0A;
        float f = i2;
        float f2 = i;
        if (A11[4].length() != 1) {
            throw new RuntimeException();
        }
        String[] strArr = A11;
        strArr[2] = "275Rll9dAnXddPRl";
        strArr[6] = "wiQ";
        float f3 = f / f2;
        for (int i3 : A12) {
            int i4 = (int) (i3 * f3);
            if (i3 <= i || i4 <= i2) {
                return null;
            }
            if (N1.A02 >= 21) {
                int i5 = z ? i4 : i3;
                if (!z) {
                    i3 = i4;
                }
                Point pointA0N = c1919Sq.A0N(i5, i3);
                if (c1919Sq.A0R(pointA0N.x, pointA0N.y, vc.A01)) {
                    return pointA0N;
                }
            } else {
                int iA05 = N1.A05(i3, 16) * 16;
                int iA052 = N1.A05(i4, 16) * 16;
                if (iA05 * iA052 <= TN.A00()) {
                    int i6 = z ? iA052 : iA05;
                    if (!z) {
                        iA05 = iA052;
                    }
                    return new Point(i6, iA05);
                }
            }
        }
        return null;
    }

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A10, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 33);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0P() {
        A10 = new byte[]{-62, -57, -63, -62, -56, -50, -56, -54, -75, -69, -75, -72, 111, 95, 94, 91, 101, 94, 116, 110, 94, 93, 90, 100, 93, 121, -118, 122, 127, 121, 122, -70, -85, -87, -86, -81, -38, -83, -87, -107, -117, -124, -124, -124, -127, -75, -95, -105, -112, -112, -112, -48, -52, -43, -45, 111, 101, 94, 95, 94, -113, 98, 102, 99, 89, 82, 84, 82, -125, 86, 90, 111, 116, -126, 111, 102, 107, 121, 115, -99, -81, -79, -81, -69, -76, -116, -116, -99, -96, 118, -120, -118, -120, -108, -115, 101, 101, 118, 121, 118, -45, -27, -25, -27, -15, -22, -62, -62, -45, -42, -43, -58, -40, -38, -40, -28, -35, -75, -75, -58, -55, -28, -73, -76, -31, -41, -27, -30, -32, -44, -21, -109, -76, -91, -87, -74, -89, -69, -38, 10, 14, -6, -23, 8, 16, -2, 11, -26, -99, -49, -47, -49, -69, -74, -98, -111, -116, -116, -89, -88, -104, -52, -55, -72, -74, -91, -58, -53, -68, -74, -119, -37, -27, -38, -36, -28, -58, -54, -15, -119, -103, -120, -99, -112, -120, 103, 123, -110, 103, 121, 119, 120, 124, 110, 126, 109, -126, 117, 109, -117, 109, -128, -126, 94, -31, -15, -32, -11, -24, -32, -2, -32, -13, -11, -46, -2, -45, -22, -104, -122, -48, -35, -59, -61, -60, -61, -20, -42, -67, -65, 110, 123, 115, 92, 97, 91, 100, -33, -20, -11, -44, -49, -5, -27, -52, -52, 127, -85, -96, -95, -97, 92, -87, -99, -76, 92, -82, -95, -81, -85, -88, -79, -80, -91, -85, -86, 92, -99, -96, -90, -79, -81, -80, -95, -96, 92, -80, -85, 118, 92, -66, -22, -24, -28, -22, -50, -84, -81, -97, -96, -98, -99, -122, -115, -106, -120, -126, -96, -126, 116, -96, -111, -77, -80, -31, -24, -15, -29, -35, -5, -22, 11, 16, 1, -123, -116, -107, -121, -127, -97, -112, -78, -87, -83, 116, 123, -124, 118, 112, -114, -127, -112, -88, -114, -121, -115, -66, -83, -70, -101, -68, -87, -70, -89, -101, -62, -81, -83, -83, -83, -52, -71, -73, -73, -71, -123, 114, 112, 112, 117, -63, -82, -83, -84, -84, -88, -107, -108, -109, -107, -113, 124, 123, 122, 126, -80, -99, -99, -101, -101, -36, -9, 2, 9, -5, -39, -2, -5, -7, 1, -74, -15, 2, -5, -3, -9, -7, 15, -36, 8, -9, 3, -5, -23, -1, 16, -5, -62, -74, -43, -41, -35, -36, -45, -45, -19, -43, -48, -38, -59, -63, -60, -66, -125, -123, -117, -118, -127, -127, -101, -113, -109, -109, 109, 114, 108, 117, -94, -92, -86, -87, -96, -96, -70, -82, -78, -78, -116, -111, -115, -110, -80, -78, -72, -73, -82, -82, -56, -68, -64, -64, -102, -97, -100, -102, 106, 108, 114, 113, 104, 104, -126, 122, 101, 111, 88, 90, 83, 91, -77, -75, -69, -70, -79, -79, -53, -61, -82, -72, -93, -97, -94, -95, -106, -104, -98, -99, -108, -108, -82, -90, -111, -101, -122, -124, -128, -120, -75, -41, -67, -68, -77, -77, -51, -79, -80, -70, -91, -93, -97, -95, 115, -107, 123, 122, 113, 113, -117, 115, 110, 120, 99, 95, 93, 101, -61, -48, -68, -46, -64, -60, -101, -55, -45, -49, -88, -57, -83, -76, -116, -101, -122, -112, -110, 113, -116, -26, -11, -31, -33, -21, -53, -26, 119, -122, 116, 124, 123, 123, -118, -119, -127, -122, 96, 123, 109, 124, 124, 102, 120, 82, 109, -37, 0, -8, -5, 0, -5, 10, -65, -22, -57, -55, -60, -69, -72, -53, 110, 119, 114, 81, 112, 86, 85, -90, -112, -117, -68, -113, -117, -107, -112, 118, -108, 125, 124, 121, -104, -109, 121, -103, 126, -127, 124, -80, -73, -111, -103, -108, -107, -101, -48, -23, -14, -13, -6, -13, -92, -59, -74, -76, -75, -70, -26, -73, -76, -58, -33, -24, -23, -16, -23, -102, -59, -85, -86, -37, -82, -86, -107, -82, -73, -72, -65, -72, 105, -108, -127, -121, 111, -99, -80, -88, -84, -67, -72, -62, -80, -104, -59, -48, -82, 110, -122, -123, -118, -126, 100, -112, -123, -122, -124, 119, -118, -123, -122, -112, 115, -122, -113, -123, -122, -109, -122, -109, 115, -107, -102, -107, 107, 88, 78, 90, 109, 83, 114, 122, 107, 79, -97, -63, -58, -63, -103, -123, -59, -51, -64, -69, -64, -72, -89, -79, -114, -115, -118, -93, -94, -84, -119, -117, -121, -98, 118, 116, 127, 85, -114, -106, -106, -114, -109, -116, -89, -58, -67, -88, -60, -51, -53, -115, -84, 113, 87, 89, 82, -59, -83, -86, -34, -48, -64, -69, -60, -59, -66, -37, -82, -91, -84, -109, -112, -106, -48, -57, -50, -74, -79, -80, -98, -107, -100, -124, 127, 127, -87, -91, -98, -55, -53, -56, -80, -52, -44, -20, -27, -14, -8, -13, -15, -70, -121, -96, -81, -100, -93, 87, 124, -107, -92, -107, 96, 89, 99, -117, 95, 115, -104, -79, -64, -79, 125, 117, 121, 120, -89, 124, -113, -59, -89, -87, -92, -61, -90, -92, -88, -94, -117, 110, 108, 113, 125, 96, 95, 93, 92, -28, -56, -50, -54, -82, -77, -43, -62, -36, -46, 117, 124, 85, -62, -43, -44, -35, -39, -112, -92, -56, -93, -74, -75, -66, -70, 113, -97, -64, -59, -74, 113, -125, -57, -38, -39, -30, -34, -107, -61, -28, -23, -38, -107, -88, -123, -104, -95, -105, -104, -91, 83, -94, -88, -89, -93, -88, -89, 83, -103, -108, -100, -97, -104, -105, -59, -40, -26, -30, -33, -24, -25, -36, -30, -31, -26, -109, -24, -31, -34, -31, -30, -22, -31, -95, -109, -74, -30, -41, -40, -42, -109, -32, -44, -21, -109, -27, -40, -26, -30, -33, -24, -25, -36, -30, -31, -83, -109, -77, -83, -115, -89, -103, -109, -107, -112, -15, -21, -53, -24, -48, -50, -50, -27, -13, -60, -66, -98, -69, -93, -95, -95, -66, -88, -94, -126, -93, -114, -122, -123, -89, -119, -97, -95, 
        -109, -115, -98, 108, -97, -123, -33, -30, -36, -71, -48, -32, -30, -67, -63, -74, -49, -60, -41, -56, -62, -77, -43, -46, -127, -99, -100, -89, 78, -126, -113, -112, -102, -109, -94, 78, -127, -101, -119, 122, 116, 126, 122, 119, -115, -36, -54, -69, -75, -65, -69, -72, -32, -82, -100, -115, -121, -110, -113, -118, -96, -69, -87, -102, -108, -97, -100, -105, -76, -101, -74, -74, 103, -76, -88, -75, -64, 103, -70, -69, -71, -84, -88, -76, 103, -86, -81, -88, -75, -82, -84, -70, 115, 103, -70, -74, 103, -85, -71, -74, -73, -73, -80, -75, -82, 103, -74, -83, -83, -70, -84, -69, -127, 103, -91, -128, -54, -90, -89, -69, -74, -80, -113, -70, -73, -100, -100, -108, -80, -117, -73, -96, -93, -123, 114, 95, -123, 125, 121, 86, 91, 91, 88, -100, 115, 116, -95, -110, -108, -111, -126, 96, 88, -111, -33, -94, -35, -120, -100, -117, -112, -106, 84, -102, -116, -102, -102, -112, -106, -107, 84, -112, -117, -76, -56, -57, -62, -128, -71, -59, -74, -60, -109, -113, -62, -49, -59, -45, -48, -54, -59, -113, -62, -41, -110, -114, -59, -62, -41, -110, -59, -113, -59, -58, -60, -48, -59, -58, -45, -49, -34, -37, -36, -103, -50, -37, -32, -32, -37, -39, -8, 7, 4, 5, -62, 1, -6, -5, 9, -87, -72, -75, -74, 115, -72, -81, -83, -82, -70, -52, -37, -40, -39, -106, -35, -40, -39, -43, -24, -93, -23, -4, -71, -21, -24, -11, -18, -24, -13, -44, -43, -46, -23, -9, -12, -11, -37, -18, -23, -22, -12, -57, -6, -21, -21, -22, -9, -14, -8, -5, 1, 10, 14, 15, 0, 13, -66, -54, -71, -59, -67, -123, -54, -71, -52, -67, -5, 10, -4, 10, 4, 15, 6, 3, 3, 6, 11, 3, 0, 4, 2, 3, 15, -41, -29, -46, -50, -44, -92, -91, -36, -37, -50, -45, -29, -28, -37, -92, -77, 125, -120, -127, 105, -124, -88, 120, 111, 114, 112, -36, -43, -44, -33, -33, -85, -86, -90, -88, -46, -84, -85, -93, -87, -115, -106, -115, -105, 90, 84, -53, -42, -57, -50, -63, -75, -106, -109, 6, -50, 20, 8, 16, 1, 5, 10, 15, -22, -32, -13, -28, -70, -125, -126, -124, 126, -11, -18, -24, 1, -65, -77, -74, -66, 116, -77, -88, -69, -84, -75, -86, -64, -39, -98, -116, -38, -37, -32, -47, -30, -42, -29, -29, -34, -29, -36, -44, -56, -39, -48, -43, -42, -58, -51, -80, -92, -69, 112, -85, -88, -84, -86, -85, -73, -21, -33, -10, -85, -25, -20, -18, -13, -14, -85, -15, -25, -8, -29, -32, -44, -21, -96, -22, -36, -41, -25, -37, -15, -20, -1, -5, -10, 1, -41, -45, -41, -49, -75, -88, -76, -88, -69, -81, -22, -27, -33, -25, -24, -35, -15, -17, -37, -30, -89, 105, 104, 105, -101, -116, -103, -112, -105, -105, -118, -113, -67, -82, -69, -78, -71, -71, -84, -79, -71, -107, -122, -109, -118, -111, -111, -124, -119, -104, -36, -51, -38, -47, -40, -40, -53, -48, -32, -6, -4, -13, -7, -4, -13, -2, 3, 15, 2, 9, 2, -2, 16, 2, -20, 18, 17, 13, 18, 17, -33, 18, 3, 3, 2, 15, -48, -51, -46, -65, -46, -57, -51, -52, -117, -62, -61, -59, -48, -61, -61, -47, -107, 91, 82, 87, -102, 82, 83, 90, 10, -8, 5, 11, 6, 5, 0, -65, -73, -75, -68, -94, -75, -80, -79, -69, -114, -63, -78, -78, -79, -66, -93, -112, -104, -109, -98, -114, -95, -98, -90, -100, -117, -108, -121, -115, -99, -58, -57, -64, -64, -73, -66, -73, -74, 127, -62, -66, -77, -53, -76, -77, -75, -67, -87, -104, -91, -95, -104, -104, -110, -128, 104, -36, -49, -54, -53, -43, -107, -103, -51, -42, -42, 8, -5, -10, -9, 1, -63, -13, 8, -62, -61, -61, -74, -79, -78, -68, 124, -82, -61, -80, -101, -114, -119, -118, -108, 84, -119, -108, -111, -121, -98, 82, -101, -114, -104, -114, -108, -109, -46, -59, -64, -63, -53, -117, -60, -63, -46, -65, -39, -52, -57, -56, -46, -110, -48, -45, -105, -39, -112, -56, -42, -57, -70, -75, -74, -64, -128, -55, 126, -57, -65, -75, 127, -64, -65, -125, 127, -57, -63, -119, -5, -18, -23, -22, -12, -76, -3, -78, -5, -13, -23, -77, -12, -13, -73, -77, -5, -11, -66, -5, -27, -8, -9, -13, -14, -7, -22, -5, -12, -25, -26, -9, -23, -28, -12, -24, -5, -13, -13, -24, -9, -29, -22, -13, -21, -21, -32, -17, -37, -30, -22, -71};
    }

    static {
        A0P();
        A12 = new int[]{1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    }

    @MetaExoPlayerCustomization
    public C3X(Context context, C2026Xc c2026Xc, C2029Xf c2029Xf, TG tg, long j, InterfaceC1897Ru interfaceC1897Ru, boolean z, boolean z2, Handler handler, YC yc, int i, int i2, int i3, int i4, int i5) {
        super(2, c2026Xc, c2029Xf, tg, interfaceC1897Ru, z, z2, i3, i4);
        this.A0e = true;
        this.A0Z = true;
        boolean z3 = false;
        this.A0f = false;
        this.A0K = -9223372036854775807L;
        this.A0c = false;
        this.A0h = false;
        this.A0v = XL.A03(XQ.A2Z);
        this.A0h = XL.A03(XQ.A1O);
        this.A0o = j;
        this.A0l = i;
        this.A0m = i2;
        this.A0p = context.getApplicationContext();
        this.A0n = i5;
        this.A0s = new C2044Xw(context);
        this.A0r = new C2042Xt(this.A0p);
        this.A0t = new YB(handler, yc);
        this.A0q = new C2025Xa(this.A0r, this, this.A0v);
        this.A0u = A0i();
        if (N1.A02 == 29 && N1.A06.startsWith(A0B(811, 6, 22))) {
            z3 = true;
        }
        this.A0a = z3;
        this.A0w = new long[10];
        this.A0x = new long[10];
        this.A0R = -9223372036854775807L;
        this.A0O = -9223372036854775807L;
        this.A0M = -9223372036854775807L;
        this.A08 = -1;
        this.A06 = -1;
        this.A01 = -1.0f;
        this.A02 = -1.0f;
        this.A0H = 1;
        A0F();
    }

    private int A00(VC vc) {
        if (vc.A0B != -1) {
            int i = 0;
            int i2 = vc.A0X.size();
            for (int initializationDataCount = 0; initializationDataCount < i2; initializationDataCount++) {
                int totalInitializationDataSize = vc.A0X.get(initializationDataCount).length;
                i += totalInitializationDataSize;
            }
            int totalInitializationDataSize2 = vc.A0B;
            return totalInitializationDataSize2 + i;
        }
        int i3 = vc.A0L;
        String str = vc.A0W;
        int width = vc.A0A;
        return A02(str, i3, width);
    }

    public static int A01(TG tg, VC vc, boolean z) throws TK {
        String mimeType = vc.A0W;
        if (!L8.A0F(mimeType)) {
            return 0;
        }
        DrmInitData drmInitData = vc.A0O;
        String mimeType2 = A11[5];
        if (mimeType2.length() == 10) {
            String[] strArr = A11;
            strArr[3] = "4WIAzxPkmNZM0HnozVlLcAJi4lpLtrSX";
            strArr[0] = "ImPv9HbUlRYmwalfuxil6RF5xU51dGSr";
            boolean requiresSecureDecryption = drmInitData != null;
            String str = vc.A0W;
            String mimeType3 = A11[4];
            if (mimeType3.length() == 1) {
                A11[1] = "2SfVYWqWVbqmIvTDx9Sy4z7vpVFv9Xu6";
                List<C1919Sq> listA8P = tg.A8P(str, requiresSecureDecryption, false);
                if (listA8P.isEmpty() && z) {
                    listA8P = A0C(tg, vc);
                }
                if (requiresSecureDecryption && listA8P.isEmpty()) {
                    if (!requiresSecureDecryption) {
                        return 1;
                    }
                    String mimeType4 = vc.A0W;
                    return !tg.A8P(mimeType4, false, false).isEmpty() ? 2 : 1;
                }
                if (listA8P.isEmpty()) {
                    return PX.A00(1);
                }
                if (!C4H.A1G(vc)) {
                    return PX.A00(2);
                }
                C1919Sq c1919Sq = listA8P.get(0);
                boolean zA0S = c1919Sq.A0S(vc);
                if (zA0S && vc.A0L > 0) {
                    int i = vc.A0A;
                    if (A11[1].charAt(9) == '5') {
                        throw new RuntimeException();
                    }
                    A11[7] = "oaL22TZcJwPgWtKUDlbRaj7B2UzHz";
                    if (i > 0) {
                        if (N1.A02 >= 21) {
                            zA0S = c1919Sq.A0R(vc.A0L, vc.A0A, vc.A01);
                        } else {
                            boolean decoderCapable = vc.A0L * vc.A0A <= TN.A00();
                            zA0S = decoderCapable;
                            if (!zA0S) {
                                StringBuilder sb = new StringBuilder();
                                String mimeType5 = A0B(380, 29, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
                                StringBuilder sbAppend = sb.append(mimeType5).append(vc.A0L);
                                String mimeType6 = A0B(1775, 1, 32);
                                StringBuilder sbAppend2 = sbAppend.append(mimeType6).append(vc.A0A);
                                String mimeType7 = A0B(1154, 3, 97);
                                StringBuilder sbAppend3 = sbAppend2.append(mimeType7);
                                String mimeType8 = N1.A04;
                                StringBuilder sbAppend4 = sbAppend3.append(mimeType8);
                                String mimeType9 = A0B(1153, 1, 19);
                                String string = sbAppend4.append(mimeType9).toString();
                                String mimeType10 = A0B(682, 23, 0);
                                MV.A04(mimeType10, string);
                            }
                        }
                    }
                }
                int i2 = c1919Sq.A04 ? 16 : 8;
                int adaptiveSupport = c1919Sq.A08 ? 32 : 0;
                return i2 | adaptiveSupport | (zA0S ? 4 : 3);
            }
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0011 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x000d  */
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
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
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
    public static int A02(java.lang.String r7, int r8, int r9) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3X.A02(java.lang.String, int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long A03(long j, long j2, long j3, long j4, boolean z) {
        double playbackSpeed = A1f();
        long j5 = (long) ((j4 - j) / playbackSpeed);
        if (z) {
            return j5 - (j3 - j2);
        }
        return j5;
    }

    @MetaExoPlayerCustomization
    private final MediaFormat A08(VC vc, XY xy, boolean z, int i) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(A0B(1462, 4, 73), vc.A0W);
        mediaFormat.setInteger(A0B(1755, 5, 95), vc.A0L);
        mediaFormat.setInteger(A0B(1307, 6, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE), vc.A0A);
        MX.A06(mediaFormat, vc.A0X);
        MX.A03(mediaFormat, A0B(1286, 10, 55), vc.A01);
        MX.A04(mediaFormat, A0B(1548, 16, 61), vc.A0F);
        MX.A02(mediaFormat, vc.A0N);
        mediaFormat.setInteger(A0B(1447, 9, 82), xy.A02);
        mediaFormat.setInteger(A0B(1423, 10, 34), xy.A00);
        MX.A04(mediaFormat, A0B(1433, 14, 93), xy.A01);
        if (N1.A02 >= 23) {
            mediaFormat.setInteger(A0B(1521, 8, 105), 0);
        }
        if (z) {
            mediaFormat.setInteger(A0B(1173, 8, 50), 0);
        }
        AbstractC2045Xx.A03(this.A0z, mediaFormat);
        if (i != 0) {
            A0T(mediaFormat, i);
        }
        return mediaFormat;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.facebook.ads.redexgen.X.XY A0A(com.facebook.ads.redexgen.X.C1919Sq r10, com.facebook.ads.redexgen.X.VC r11, com.facebook.ads.redexgen.X.VC[] r12) throws com.facebook.ads.redexgen.X.TK {
        /*
            r9 = this;
            int r4 = r11.A0L
            int r3 = r11.A0A
            int r2 = r9.A00(r11)
            int r1 = r12.length
            r0 = 1
            if (r1 != r0) goto L12
            com.facebook.ads.redexgen.X.XY r0 = new com.facebook.ads.redexgen.X.XY
            r0.<init>(r4, r3, r2)
            return r0
        L12:
            r8 = 0
            int r6 = r12.length
            r5 = 0
        L15:
            if (r5 >= r6) goto L45
            r7 = r12[r5]
            boolean r0 = r10.A04
            boolean r0 = A0v(r0, r11, r7)
            if (r0 == 0) goto L40
            int r0 = r7.A0L
            r1 = -1
            if (r0 == r1) goto L2a
            int r0 = r7.A0A
            if (r0 != r1) goto L43
        L2a:
            r0 = 1
        L2b:
            r8 = r8 | r0
            int r0 = r7.A0L
            int r4 = java.lang.Math.max(r4, r0)
            int r0 = r7.A0A
            int r3 = java.lang.Math.max(r3, r0)
            int r0 = r9.A00(r7)
            int r2 = java.lang.Math.max(r2, r0)
        L40:
            int r5 = r5 + 1
            goto L15
        L43:
            r0 = 0
            goto L2b
        L45:
            if (r8 == 0) goto Lc1
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r5 = 921(0x399, float:1.29E-42)
            r1 = 43
            r0 = 82
            java.lang.String r0 = A0B(r5, r1, r0)
            java.lang.StringBuilder r0 = r6.append(r0)
            java.lang.StringBuilder r6 = r0.append(r4)
            r5 = 1775(0x6ef, float:2.487E-42)
            r1 = 1
            r0 = 32
            java.lang.String r8 = A0B(r5, r1, r0)
            java.lang.StringBuilder r0 = r6.append(r8)
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r7 = r0.toString()
            r5 = 682(0x2aa, float:9.56E-43)
            r1 = 23
            r0 = 0
            java.lang.String r6 = A0B(r5, r1, r0)
            com.facebook.ads.redexgen.X.MV.A07(r6, r7)
            android.graphics.Point r1 = A07(r10, r11)
            if (r1 == 0) goto Lc1
            int r0 = r1.x
            int r4 = java.lang.Math.max(r4, r0)
            int r0 = r1.y
            int r3 = java.lang.Math.max(r3, r0)
            java.lang.String r0 = r11.A0W
            int r0 = A02(r0, r4, r3)
            int r2 = java.lang.Math.max(r2, r0)
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r5 = 246(0xf6, float:3.45E-43)
            r1 = 34
            r0 = 27
            java.lang.String r0 = A0B(r5, r1, r0)
            java.lang.StringBuilder r0 = r7.append(r0)
            java.lang.StringBuilder r0 = r0.append(r4)
            java.lang.StringBuilder r0 = r0.append(r8)
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r0 = r0.toString()
            com.facebook.ads.redexgen.X.MV.A07(r6, r0)
        Lc1:
            com.facebook.ads.redexgen.X.XY r0 = new com.facebook.ads.redexgen.X.XY
            r0.<init>(r4, r3, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3X.A0A(com.facebook.ads.redexgen.X.Sq, com.facebook.ads.redexgen.X.VC, com.facebook.ads.redexgen.X.VC[]):com.facebook.ads.redexgen.X.XY");
    }

    public static List<C1919Sq> A0C(TG tg, VC vc) throws TK {
        ArrayList arrayList = new ArrayList();
        String alternativeMimeType = TN.A0P(vc);
        if (alternativeMimeType != null) {
            List<C1919Sq> listA8P = tg.A8P(alternativeMimeType, false, false);
            if (N1.A02 >= 26) {
                if (A0B(1664, 18, 4).equals(vc.A0W) && !listA8P.isEmpty()) {
                    return listA8P;
                }
                return arrayList;
            }
            return arrayList;
        }
        return arrayList;
    }

    public static List<C1919Sq> A0D(TG tg, VC vc, boolean z) throws TK {
        String str = vc.A0W;
        if (str == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(tg.A8P(str, z, false));
    }

    private void A0E() {
        InterfaceC1916Sn interfaceC1916SnA1j;
        this.A0i = false;
        if (N1.A02 >= 23 && this.A0k && (interfaceC1916SnA1j = A1j()) != null) {
            this.A00 = new C1856Qf(this, interfaceC1916SnA1j);
        }
    }

    private void A0F() {
        this.A0G = -1;
        this.A0E = -1;
        this.A03 = -1.0f;
        this.A0F = -1;
    }

    @MetaExoPlayerCustomization
    private void A0G() {
        if (this.A0q.A0G() && XL.A03(XQ.A2X)) {
            this.A0q.A0A();
            throw null;
        }
    }

    private void A0H() {
        if (this.A0m > 0) {
            int i = this.A05;
            String[] strArr = A11;
            if (strArr[3].charAt(30) != strArr[0].charAt(30)) {
                throw new RuntimeException();
            }
            A11[7] = "uBoqitpfydoOhLSRZySYXOWxOvzyx";
            if (i > 0 && this.A05 >= this.A0m) {
                this.A0t.A00(this.A05, SystemClock.elapsedRealtime() - this.A0I);
            }
        }
        this.A05 = 0;
        this.A0I = SystemClock.elapsedRealtime();
    }

    private void A0I() {
        InterfaceC1916Sn interfaceC1916SnA1j = A1j();
        if (interfaceC1916SnA1j == null) {
            return;
        }
        boolean z = this.A0c;
        String[] strArr = A11;
        if (strArr[2].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A11;
        strArr2[3] = "qgvmWAjeo4QKnBkBe41vOj4ta3jaB5SF";
        strArr2[0] = "pKUJPsH6HibKXRAAirXH3EqC5s6YUiSU";
        if (!z && interfaceC1916SnA1j.A9x() > 30) {
            A0V(super.A0g);
            this.A0c = true;
        }
    }

    private void A0J() {
        if (this.A09 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long now = this.A0J;
            long elapsedMs = jElapsedRealtime - now;
            this.A0t.A01(this.A09, elapsedMs);
            this.A09 = 0;
            this.A0J = jElapsedRealtime;
        }
    }

    private void A0K() {
        if (this.A08 == -1 && this.A06 == -1) {
            return;
        }
        if (this.A0G != this.A08 || this.A0E != this.A06 || this.A0F != this.A07 || this.A03 != this.A01) {
            this.A0t.A07(new C1944Tp(this.A08, this.A06, this.A07, this.A01));
            this.A0G = this.A08;
            this.A0E = this.A06;
            this.A0F = this.A07;
            this.A03 = this.A01;
        }
    }

    private void A0L() {
        if (this.A0i) {
            this.A0t.A0D(this.A0U);
        }
    }

    private void A0M() {
        if (this.A0G != -1 || this.A0E != -1) {
            this.A0t.A07(new C1944Tp(this.A0G, this.A0E, this.A0F, this.A03));
        }
    }

    private void A0N() {
        long jElapsedRealtime;
        if (this.A0o > 0) {
            jElapsedRealtime = SystemClock.elapsedRealtime() + this.A0o;
        } else {
            jElapsedRealtime = -9223372036854775807L;
        }
        this.A0M = jElapsedRealtime;
    }

    @MetaExoPlayerCustomization
    private void A0O() {
        super.A0h.A03(super.A0f);
    }

    private final void A0Q(int i) {
        super.A0h.A04 += i;
        this.A09 += i;
        this.A05 += i;
        super.A0h.A07 = Math.max(this.A05, super.A0h.A07);
        if (this.A09 >= this.A0l) {
            A0J();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void A0R(long r10, long r12, float r14) {
        /*
            r9 = this;
            long r0 = com.facebook.ads.redexgen.X.KN.A01(r10)
            int r6 = (int) r0
            long r0 = com.facebook.ads.redexgen.X.KN.A01(r12)
            int r5 = (int) r0
            r3 = 1000(0x3e8, float:1.401E-42)
            if (r5 <= r3) goto L44
            r0 = 10000(0x2710, float:1.4013E-41)
            if (r5 >= r0) goto L44
            int r2 = r6 + r5
            int r1 = r9.A0A
            int r0 = r9.A0B
            int r1 = r1 + r0
            int r1 = r1 + r3
            if (r2 <= r1) goto L44
            int r0 = r9.A0A
            r7 = 4652007308841189376(0x408f400000000000, double:1000.0)
            if (r6 <= r0) goto L45
            int r1 = r9.A0A
            int r0 = r9.A0B
            int r1 = r1 + r0
            if (r6 >= r1) goto L45
            com.facebook.ads.redexgen.X.O7 r4 = r9.A0h
            int r3 = r4.A0E
            int r2 = r6 + r5
            int r1 = r9.A0A
            int r0 = r9.A0B
            int r1 = r1 + r0
            int r2 = r2 - r1
            float r0 = (float) r2
            float r0 = r0 * r14
            double r1 = (double) r0
            double r1 = r1 / r7
            int r0 = (int) r1
            int r3 = r3 + r0
            r4.A0E = r3
        L40:
            r9.A0A = r6
            r9.A0B = r5
        L44:
            return
        L45:
            int r1 = r9.A0A
            int r0 = r9.A0B
            int r1 = r1 + r0
            if (r6 <= r1) goto L40
            com.facebook.ads.redexgen.X.O7 r4 = r9.A0h
            int r3 = r4.A0E
            float r0 = (float) r5
            float r0 = r0 * r14
            double r1 = (double) r0
            double r1 = r1 / r7
            int r0 = (int) r1
            int r3 = r3 + r0
            r4.A0E = r3
            goto L40
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3X.A0R(long, long, float):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0S(long j, long j2, VC vc, MediaFormat mediaFormat) {
        if (this.A0X != null) {
            this.A0X.AHc(j, j2, vc, mediaFormat);
        }
    }

    public static void A0T(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled(A0B(1609, 17, 49), true);
        mediaFormat.setInteger(A0B(1157, 16, 6), i);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0U(android.view.Surface r11) throws com.facebook.ads.redexgen.X.AnonymousClass96 {
        /*
            Method dump skipped, instruction units count: 293
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3X.A0U(android.view.Surface):void");
    }

    private void A0V(VC vc) {
        InterfaceC1916Sn codec = A1j();
        if (codec != null && vc != null) {
            Pair<Long, Integer> pairA9M = codec.A9M();
            if (((Long) pairA9M.first).longValue() > 0) {
                super.A0h.A04(pairA9M);
                this.A0t.A04(super.A0h.A00, vc);
            }
        }
    }

    private final void A0W(InterfaceC1916Sn interfaceC1916Sn, int i, long j) {
        AbstractC1778Mt.A02(A0B(1262, 15, 100));
        interfaceC1916Sn.AIw(i, false);
        AbstractC1778Mt.A00();
        A0Q(1);
    }

    @MetaExoPlayerCustomization
    private final void A0X(InterfaceC1916Sn interfaceC1916Sn, int i, long j) {
        if (this.A0v) {
            A0Y(interfaceC1916Sn, i, j);
            return;
        }
        A0K();
        try {
            AbstractC1778Mt.A02(A0B(1529, 19, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE));
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            interfaceC1916Sn.AIw(i, true);
            long j2 = super.A0f;
            long startRenderTime = SystemClock.elapsedRealtime();
            super.A0f = j2 + (startRenderTime - jElapsedRealtime);
            this.A0P = SystemClock.elapsedRealtime() * 1000;
            super.A0h.A09++;
            A0H();
            A27();
            A0O();
        } finally {
            AbstractC1778Mt.A00();
        }
    }

    @MetaExoPlayerCustomization
    private final void A0Y(InterfaceC1916Sn interfaceC1916Sn, int i, long j) {
        AbstractC1778Mt.A02(A0B(1529, 19, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE));
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        interfaceC1916Sn.AIw(i, true);
        long j2 = super.A0f;
        long startRenderTime = SystemClock.elapsedRealtime();
        super.A0f = j2 + (startRenderTime - jElapsedRealtime);
        AbstractC1778Mt.A00();
        super.A0h.A09++;
        A0H();
        if (!this.A0q.A0G()) {
            this.A0P = SystemClock.elapsedRealtime() * 1000;
            A0K();
            A27();
        }
    }

    private final void A0Z(InterfaceC1916Sn interfaceC1916Sn, int i, long j) {
        AbstractC1778Mt.A02(A0B(1579, 15, 43));
        interfaceC1916Sn.AIw(i, false);
        AbstractC1778Mt.A00();
        super.A0h.A0B++;
    }

    @MetaExoPlayerCustomization
    private final void A0a(InterfaceC1916Sn interfaceC1916Sn, int i, long j, long j2) {
        if (this.A0v) {
            A0c(interfaceC1916Sn, i, j, j2, true);
            return;
        }
        A0K();
        A0S(j, j2, super.A0g, this.A0S);
        try {
            AbstractC1778Mt.A02(A0B(1529, 19, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE));
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            interfaceC1916Sn.AIv(i, j2);
            long j3 = super.A0f;
            long startRenderTime = SystemClock.elapsedRealtime();
            super.A0f = j3 + (startRenderTime - jElapsedRealtime);
            this.A0P = SystemClock.elapsedRealtime() * 1000;
            super.A0h.A09++;
            A0H();
            A27();
            A0O();
            AbstractC1778Mt.A00();
            if (A11[7].length() != 29) {
                throw new RuntimeException();
            }
            A11[7] = "qw8m2lMMOBhtwDKiqr9qPQKZQhksW";
        } catch (Throwable th) {
            AbstractC1778Mt.A00();
            throw th;
        }
    }

    private final void A0b(@MetaExoPlayerCustomization InterfaceC1916Sn interfaceC1916Sn, int i, long j, long j2, boolean z) {
        if (this.A0v) {
            A0c(interfaceC1916Sn, i, j, j2, z);
            return;
        }
        A0K();
        A0S(j, j2, super.A0g, this.A0S);
        try {
            AbstractC1778Mt.A02(A0B(1529, 19, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE));
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            interfaceC1916Sn.AIv(i, j2);
            long j3 = super.A0f;
            long startRenderTime = SystemClock.elapsedRealtime();
            super.A0f = j3 + (startRenderTime - jElapsedRealtime);
            this.A0P = SystemClock.elapsedRealtime() * 1000;
            super.A0h.A09++;
            A0H();
            A27();
            A0O();
        } finally {
            AbstractC1778Mt.A00();
        }
    }

    @MetaExoPlayerCustomization
    private final void A0c(InterfaceC1916Sn interfaceC1916Sn, int i, long j, long j2, boolean z) {
        if (z) {
            VC vc = super.A0g;
            if (A11[7].length() != 29) {
                throw new RuntimeException();
            }
            A11[4] = "P";
            A0S(j, j2, vc, this.A0S);
        }
        AbstractC1778Mt.A02(A0B(1529, 19, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE));
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        interfaceC1916Sn.AIv(i, j2);
        long j3 = super.A0f;
        long startRenderTime = SystemClock.elapsedRealtime();
        super.A0f = j3 + (startRenderTime - jElapsedRealtime);
        AbstractC1778Mt.A00();
        super.A0h.A09++;
        A0H();
        if (!this.A0q.A0G()) {
            this.A0P = SystemClock.elapsedRealtime() * 1000;
            A0K();
            A27();
            A0O();
        }
    }

    public static void A0d(InterfaceC1916Sn interfaceC1916Sn, Surface surface) {
        interfaceC1916Sn.AKt(surface);
    }

    @MetaExoPlayerCustomization
    private void A0f(Object obj) {
        this.A0d = ((Boolean) obj).booleanValue();
        A1j();
    }

    private boolean A0g() {
        if (this.A0n <= 0) {
            return false;
        }
        boolean z = this.A0K == -9223372036854775807L || System.currentTimeMillis() - this.A0K <= ((long) this.A0n);
        if (this.A0K == -9223372036854775807L) {
            MV.A07(A0B(682, 23, 0), A0B(EventTypeExtended.EVENT_TYPE_EXTENDED_WATERFALL_STARTED_VALUE, 20, 18));
            this.A0K = System.currentTimeMillis();
        }
        return z;
    }

    public static boolean A0h() {
        return N1.A02 >= 21;
    }

    public static boolean A0i() {
        if (N1.A02 <= 22 && A0B(1280, 6, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE).equals(N1.A03)) {
            String strA0B = A0B(725, 6, 86);
            String str = N1.A05;
            String[] strArr = A11;
            if (strArr[3].charAt(30) != strArr[0].charAt(30)) {
                throw new RuntimeException();
            }
            A11[5] = "hBo4sFlbfj";
            if (strA0B.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean A0k(long j) {
        return j < -30000;
    }

    public static boolean A0l(long j) {
        return j < -500000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean A0m(long r11, long r13) {
        /*
            r10 = this;
            int r1 = r10.A9n()
            r0 = 2
            r9 = 1
            if (r1 != r0) goto L67
            r8 = 1
        L9:
            boolean r0 = r10.A0j
            if (r0 != 0) goto L40
            if (r8 != 0) goto L13
            boolean r0 = r10.A0g
            if (r0 == 0) goto L3e
        L13:
            r7 = 1
        L14:
            long r1 = android.os.SystemClock.elapsedRealtime()
            r3 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 * r3
            long r3 = r10.A0P
            long r1 = r1 - r3
            long r3 = r10.A0M
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 != 0) goto L3c
            long r3 = r10.A1i()
            int r0 = (r11 > r3 ? 1 : (r11 == r3 ? 0 : -1))
            if (r0 < 0) goto L3c
            if (r7 != 0) goto L3b
            if (r8 == 0) goto L3c
            boolean r0 = r10.A0p(r13, r1)
            if (r0 == 0) goto L3c
        L3b:
            return r9
        L3c:
            r9 = 0
            goto L3b
        L3e:
            r7 = 0
            goto L14
        L40:
            boolean r3 = r10.A0i
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3X.A11
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 10
            if (r1 == r0) goto L55
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L55:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3X.A11
            java.lang.String r1 = "DsTcv7khaJnVA8M9XuBL8Qg5wFjhyDSr"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "YKx3K3PMQLLp7qgDz5oHLXhJn9ZQ21Sd"
            r0 = 0
            r2[r0] = r1
            if (r3 != 0) goto L65
            r7 = 1
            goto L14
        L65:
            r7 = 0
            goto L14
        L67:
            r8 = 0
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3X.A0m(long, long):boolean");
    }

    private final boolean A0n(long j, long j2) {
        return A0l(j);
    }

    private final boolean A0o(long j, long j2) {
        return A0k(j);
    }

    private final boolean A0p(long j, long j2) {
        return A0k(j) && j2 > 100000;
    }

    private final boolean A0q(InterfaceC1916Sn interfaceC1916Sn, int i, long j, long j2) throws AnonymousClass96 {
        int iA1Q = A1Q(j2);
        if (iA1Q == 0) {
            return false;
        }
        O7 o7 = super.A0h;
        int droppedSourceBufferCount = o7.A06;
        o7.A06 = droppedSourceBufferCount + 1;
        int droppedSourceBufferCount2 = this.A04;
        A0Q(droppedSourceBufferCount2 + iA1Q);
        A1m();
        if (!this.A0q.A0G()) {
            return true;
        }
        this.A0q.A09();
        throw null;
    }

    private boolean A0r(C1919Sq c1919Sq) {
        if (N1.A02 >= 23 && this.A0e) {
            boolean z = this.A0k;
            String[] strArr = A11;
            if (strArr[2].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            A11[4] = "E";
            if (!z && !A0u(c1919Sq.A03) && (!c1919Sq.A06 || DummySurface.A05(this.A0p))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:404:0x09cb  */
    /* JADX WARN: Removed duplicated region for block: B:493:0x0bdf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean A0u(java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 3992
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3X.A0u(java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0v(boolean r4, com.facebook.ads.redexgen.X.VC r5, com.facebook.ads.redexgen.X.VC r6) {
        /*
            java.lang.String r1 = r5.A0W
            java.lang.String r0 = r6.A0W
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L60
            int r1 = r5.A0F
            int r0 = r6.A0F
            if (r1 != r0) goto L60
            if (r4 != 0) goto L54
            int r3 = r5.A0L
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3X.A11
            r0 = 1
            r1 = r1[r0]
            r0 = 9
            char r1 = r1.charAt(r0)
            r0 = 53
            if (r1 == r0) goto L62
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3X.A11
            java.lang.String r1 = "Re9ApgitGxUJo4E1"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "XXS"
            r0 = 6
            r2[r0] = r1
            int r0 = r6.A0L
            if (r3 != r0) goto L60
            int r4 = r5.A0A
            int r3 = r6.A0A
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3X.A11
            r0 = 1
            r1 = r1[r0]
            r0 = 9
            char r1 = r1.charAt(r0)
            r0 = 53
            if (r1 == r0) goto L62
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3X.A11
            java.lang.String r1 = "pb1nOwe8niAjsswQ5ZTVk5zh1nDv9ZSU"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "tfbL2C7FYUAvSD84YSO7lyOOgsT48TSy"
            r0 = 0
            r2[r0] = r1
            if (r4 != r3) goto L60
        L54:
            com.facebook.ads.androidx.media3.common.ColorInfo r1 = r5.A0N
            com.facebook.ads.androidx.media3.common.ColorInfo r0 = r6.A0N
            boolean r0 = com.facebook.ads.redexgen.X.N1.A1E(r1, r0)
            if (r0 == 0) goto L60
            r0 = 1
        L5f:
            return r0
        L60:
            r0 = 0
            goto L5f
        L62:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3X.A0v(boolean, com.facebook.ads.redexgen.X.VC, com.facebook.ads.redexgen.X.VC):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1X() {
        super.A1X();
        this.A09 = 0;
        this.A0A = 0;
        this.A0B = 0;
        this.A0J = SystemClock.elapsedRealtime();
        this.A0P = SystemClock.elapsedRealtime() * 1000;
        if (this.A0v) {
            this.A0r.A0D();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1Y() {
        this.A0M = -9223372036854775807L;
        A0J();
        A0H();
        if (this.A0v) {
            this.A0r.A0E();
        }
        super.A1Y();
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1Z() {
        this.A08 = -1;
        this.A06 = -1;
        this.A01 = -1.0f;
        this.A02 = -1.0f;
        this.A0R = -9223372036854775807L;
        this.A0O = -9223372036854775807L;
        this.A0C = 0;
        A0F();
        A0E();
        this.A0s.A08();
        this.A00 = null;
        this.A0k = false;
        this.A0A = 0;
        this.A0B = 0;
        A0G();
        try {
            super.A1Z();
        } finally {
            super.A0h.A02();
            this.A0t.A09(super.A0h);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1a(long j, boolean z) throws AnonymousClass96 {
        super.A1a(j, z);
        if (this.A0q.A0G()) {
            this.A0q.A09();
            throw null;
        }
        A0E();
        if (A11[4].length() == 1) {
            A11[1] = "BBQSV1tNuVp7XpEZEQVDi8HnQiR1YTyl";
            if (this.A0v) {
                this.A0r.A0C();
            }
            this.A0N = -9223372036854775807L;
            this.A0L = -9223372036854775807L;
            this.A0O = -9223372036854775807L;
            this.A0A = 0;
            this.A0B = 0;
            if (this.A0C != 0) {
                long[] jArr = this.A0w;
                int i = this.A0C - 1;
                if (A11[1].charAt(9) != '5') {
                    A11[1] = "oSGEJC0mATgTjcfAGyy4ajz3RDZv7Lqy";
                    this.A0R = jArr[i];
                    this.A0C = 0;
                }
            }
            if (z) {
                A0N();
            } else {
                this.A0M = -9223372036854775807L;
            }
            A0H();
            return;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1b(boolean z, boolean z2) throws AnonymousClass96 {
        super.A1b(z, z2);
        this.A0k = A1V().A00;
        this.A0t.A0A(super.A0h);
        this.A0s.A09();
        this.A0g = z2;
        this.A0j = false;
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1c(VC[] vcArr, long j, long j2) throws AnonymousClass96 {
        if (this.A0R == -9223372036854775807L) {
            this.A0R = j2;
        } else {
            if (this.A0C == this.A0w.length) {
                MV.A07(A0B(682, 23, 0), A0B(1069, 45, 38) + this.A0w[this.A0C - 1]);
            } else {
                this.A0C++;
            }
            this.A0w[this.A0C - 1] = j2;
            this.A0x[this.A0C - 1] = this.A0O;
        }
        super.A1c(vcArr, j, j2);
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final int A1g(InterfaceC1916Sn interfaceC1916Sn, C1919Sq c1919Sq, VC vc, VC vc2) {
        if (AbstractC2045Xx.A04(this.A0z, vc.A0L, vc.A0A, vc2.A0L, vc2.A0A)) {
            return 0;
        }
        if (A21() && vc.A0W.equals(vc2.A0W) && vc.A0F == vc2.A0F) {
            return 1;
        }
        boolean zA0v = A0v(c1919Sq.A04, vc, vc2);
        if (A11[1].charAt(9) == '5') {
            throw new RuntimeException();
        }
        String[] strArr = A11;
        strArr[2] = "05kf3O4m1PmcWtyk";
        strArr[6] = "ivl";
        if (zA0v) {
            int i = vc2.A0L;
            XY xy = this.A0W;
            if (A11[7].length() != 29) {
                throw new RuntimeException();
            }
            A11[5] = "x3LPq4mLq3";
            if (i <= xy.A02 && vc2.A0A <= this.A0W.A00 && A00(vc2) <= this.A0W.A01) {
                return vc.A0A(vc2) ? 1 : 3;
            }
        }
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final int A1h(TG tg, InterfaceC1897Ru interfaceC1897Ru, VC vc) throws TK {
        if (A24(vc)) {
            return 20;
        }
        return A01(tg, vc, super.A0j);
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final List<C1919Sq> A1l(TG tg, VC vc, boolean z) throws TK {
        return A0D(tg, vc, z);
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1m() throws AnonymousClass96 {
        super.A1m();
        this.A04 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1n() {
        try {
            super.A1n();
        } finally {
            this.A04 = 0;
            if (this.A0T != null) {
                if (this.A0U == this.A0T) {
                    this.A0U = null;
                }
                this.A0T.release();
                this.A0T = null;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1q(long j) {
        super.A1q(j);
        this.A04--;
        while (this.A0C != 0 && j >= this.A0x[0]) {
            this.A0R = this.A0w[0];
            this.A0C--;
            System.arraycopy(this.A0w, 1, this.A0w, 0, this.A0C);
            System.arraycopy(this.A0x, 1, this.A0x, 0, this.A0C);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // com.facebook.ads.redexgen.X.C4H
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A1r(com.facebook.ads.redexgen.X.VC r7) {
        /*
            r6 = this;
            boolean r0 = r6.A24(r7)
            r5 = 0
            if (r0 == 0) goto L39
            com.facebook.ads.redexgen.X.VC r0 = r6.A0g
            if (r0 == 0) goto L31
            com.facebook.ads.redexgen.X.VC r0 = r6.A0g
            java.lang.String r3 = r0.A0W
            r2 = 1645(0x66d, float:2.305E-42)
            r1 = 10
            r0 = 113(0x71, float:1.58E-43)
            java.lang.String r0 = A0B(r2, r1, r0)
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L31
            r0 = 1
        L20:
            if (r0 == 0) goto L33
            com.facebook.ads.redexgen.X.Xa r0 = r6.A0q
            boolean r0 = r0.A0G()
            if (r0 == 0) goto L33
            com.facebook.ads.redexgen.X.Xa r0 = r6.A0q
            r0.A0A()
            r0 = 0
            throw r0
        L31:
            r0 = 0
            goto L20
        L33:
            com.facebook.ads.redexgen.X.Xa r0 = r6.A0q
            com.facebook.ads.redexgen.X.C2025Xa.A05(r0, r5)
            return
        L39:
            com.facebook.ads.redexgen.X.XP r0 = com.facebook.ads.redexgen.X.XP.A0B
            int r4 = com.facebook.ads.redexgen.X.XL.A00(r0)
            if (r4 <= 0) goto L66
            if (r7 == 0) goto L66
            int r3 = r7.A0L
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3X.A11
            r0 = 7
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 29
            if (r1 == r0) goto L58
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L58:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3X.A11
            java.lang.String r1 = "eA3sjnYK8PYaKj4ZxIZy4VKEWZVTdUhj"
            r0 = 1
            r2[r0] = r1
            if (r3 <= r4) goto L66
            com.facebook.ads.redexgen.X.Xa r0 = r6.A0q
            com.facebook.ads.redexgen.X.C2025Xa.A05(r0, r5)
        L66:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3X.A1r(com.facebook.ads.redexgen.X.VC):void");
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1s(VC vc) throws AnonymousClass96 {
        super.A1s(vc);
        this.A0t.A05(vc, null);
        this.A02 = vc.A02;
        this.A0D = vc.A0F;
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1t(VC vc) throws AnonymousClass96 {
        if (!this.A0q.A0G()) {
            this.A0q.A0J(vc, A1i());
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1u(T2 t2) {
        this.A04++;
        this.A0O = Math.max(t2.A01, this.A0O);
        if (N1.A02 < 23 && this.A0k) {
            A27();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1v(InterfaceC1916Sn interfaceC1916Sn, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        this.A0S = mediaFormat;
        String strA0B = A0B(1229, 10, 37);
        boolean zContainsKey = mediaFormat.containsKey(strA0B);
        String strA0B2 = A0B(1239, 8, 72);
        String strA0B3 = A0B(1209, 11, 75);
        String strA0B4 = A0B(1220, 9, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
        boolean z = zContainsKey && mediaFormat.containsKey(strA0B4) && mediaFormat.containsKey(strA0B3) && mediaFormat.containsKey(strA0B2);
        if (z) {
            integer = (mediaFormat.getInteger(strA0B) - mediaFormat.getInteger(strA0B4)) + 1;
        } else {
            integer = mediaFormat.getInteger(A0B(1755, 5, 95));
        }
        this.A08 = integer;
        if (z) {
            integer2 = (mediaFormat.getInteger(strA0B3) - mediaFormat.getInteger(strA0B2)) + 1;
        } else {
            integer2 = mediaFormat.getInteger(A0B(1307, 6, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE));
        }
        this.A06 = integer2;
        this.A01 = this.A02;
        if (N1.A02 >= 21) {
            int i = this.A0D;
            if (A11[5].length() == 10) {
                String[] strArr = A11;
                strArr[2] = "867Alqp2IE9rr1a1";
                strArr[6] = "BSf";
                if (i == 90 || this.A0D == 270) {
                    int i2 = this.A08;
                    int rotatedHeight = this.A06;
                    this.A08 = rotatedHeight;
                    this.A06 = i2;
                    this.A01 = 1.0f / this.A01;
                }
            }
            throw new RuntimeException();
        }
        if (!this.A0q.A0G()) {
            this.A07 = this.A0D;
        }
        int rotatedHeight2 = this.A0H;
        interfaceC1916Sn.ALA(rotatedHeight2);
        this.A0V = new C1944Tp(this.A08, this.A06, this.A07, this.A01);
        this.A0r.A0F(super.A0g.A01);
        if (this.A0q.A0G()) {
            C2025Xa c2025Xa = this.A0q;
            if (A11[1].charAt(9) != '5') {
                A11[1] = "9jhluCbSE08jdVbVPtpLuia4mkowKwVy";
                c2025Xa.A0D(super.A0g.A07().A0r(this.A08).A0f(this.A06).A0l(this.A07).A0Y(this.A01).A14());
                throw null;
            }
            throw new RuntimeException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d2  */
    @Override // com.facebook.ads.redexgen.X.C4H
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomizations
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A1w(com.facebook.ads.redexgen.X.C1919Sq r14, com.facebook.ads.redexgen.X.InterfaceC1916Sn r15, com.facebook.ads.redexgen.X.VC r16, android.media.MediaCrypto r17) throws com.facebook.ads.redexgen.X.TK {
        /*
            Method dump skipped, instruction units count: 239
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3X.A1w(com.facebook.ads.redexgen.X.Sq, com.facebook.ads.redexgen.X.Sn, com.facebook.ads.redexgen.X.VC, android.media.MediaCrypto):void");
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    @MetaExoPlayerCustomization
    public final void A1x(String str) {
        this.A0t.A0F(str);
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1y(String str, long j, long j2) {
        this.A0t.A0G(str, j, j2);
        this.A0b = A0u(str);
        if (this.A0v) {
            this.A0q.A0E(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    @MetaExoPlayerCustomization
    public final void A1z(String str, VC vc) throws AnonymousClass96 {
        this.A0t.A0F(str);
        if (!this.A0q.A0G()) {
            C2025Xa c2025Xa = this.A0q;
            long jA1i = A1i();
            if (A11[5].length() != 10) {
                throw new RuntimeException();
            }
            A11[4] = "d";
            c2025Xa.A0J(vc, jA1i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final boolean A20() {
        return this.A0a && SystemClock.elapsedRealtime() - this.A0Q < 500;
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final boolean A22() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01ed, code lost:
    
        if (com.facebook.ads.redexgen.X.N1.A02 < r11) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01f4, code lost:
    
        if (r6 >= 50000) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01f8, code lost:
    
        A0a(r37, r39, r0, r23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0201, code lost:
    
        r32.A0K = -9223372036854775807L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0209, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x020a, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x020f, code lost:
    
        if (A0g() != false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0211, code lost:
    
        return r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0212, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x021c, code lost:
    
        if (r6 >= 30000) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0222, code lost:
    
        if (r6 <= 11000) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0233, code lost:
    
        if (com.facebook.ads.redexgen.X.C3X.A11[1].charAt(9) == '5') goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0235, code lost:
    
        com.facebook.ads.redexgen.X.C3X.A11[5] = "KF7ZC8HIwZ";
        r6 = r6 - 10000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x023e, code lost:
    
        r6 = r6 - 10000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x023f, code lost:
    
        java.lang.Thread.sleep(r6 / 1000);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0245, code lost:
    
        java.lang.Thread.currentThread().interrupt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x024c, code lost:
    
        return r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x024d, code lost:
    
        A0X(r37, r39, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0250, code lost:
    
        r32.A0K = -9223372036854775807L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0253, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0254, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0259, code lost:
    
        if (A0g() != false) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x025b, code lost:
    
        return r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x025c, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x025d, code lost:
    
        r2 = r41 - r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0266, code lost:
    
        if (r32.A0g.A01 == (-1.0f)) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0268, code lost:
    
        r0 = r32.A0g.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x026c, code lost:
    
        A0R(r33, r2, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0274, code lost:
    
        return r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0275, code lost:
    
        r0 = 30.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0072, code lost:
    
        if (r10 == r32.A0T) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0078, code lost:
    
        if (A0k(r6) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007a, code lost:
    
        A0Z(r37, r39, r0);
        r32.A0K = -9223372036854775807L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0085, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0091, code lost:
    
        if (r10 == r32.A0T) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0094, code lost:
    
        return r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0095, code lost:
    
        r18 = android.os.SystemClock.elapsedRealtime() * 1000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a2, code lost:
    
        if (A9n() != 2) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a4, code lost:
    
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a9, code lost:
    
        if (r32.A0i == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ab, code lost:
    
        if (r15 == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b5, code lost:
    
        if (A0p(r6, r18 - r32.A0P) == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
    
        r5 = 21;
        r2 = -9223372036854775807L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c4, code lost:
    
        if (r32.A0q.A0G() == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c6, code lost:
    
        r32.A0q.A0K(r32.A0g, r0, r44);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d0, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d1, code lost:
    
        r5 = 21;
        r2 = -9223372036854775807L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d9, code lost:
    
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00df, code lost:
    
        if (com.facebook.ads.redexgen.X.N1.A02 < r5) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e1, code lost:
    
        r23 = java.lang.System.nanoTime();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e5, code lost:
    
        r6 = com.facebook.ads.redexgen.X.C3X.A11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00f9, code lost:
    
        if (r6[3].charAt(30) == r6[0].charAt(30)) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0100, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0101, code lost:
    
        com.facebook.ads.redexgen.X.C3X.A11[7] = "2QHTOj8kvcmWgIhhns8Rajex54zoF";
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0108, code lost:
    
        A0b(r37, r39, r0, r23, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0112, code lost:
    
        r1 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0114, code lost:
    
        r1 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0119, code lost:
    
        if (A0g() != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x011b, code lost:
    
        return r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x011c, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x011d, code lost:
    
        A0X(r37, r39, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0120, code lost:
    
        r32.A0K = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0123, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0124, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0129, code lost:
    
        if (A0g() != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x012b, code lost:
    
        return r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x012c, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x012d, code lost:
    
        if (r15 == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0133, code lost:
    
        if (r33 != r32.A0L) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0135, code lost:
    
        return r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0136, code lost:
    
        r6 = r6 - (r18 - r35);
        r18 = java.lang.System.nanoTime();
        r23 = r32.A0s.A07(r41, r18 + (r6 * 1000));
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0150, code lost:
    
        if (r32.A0q.A0G() != false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0152, code lost:
    
        r6 = (r23 - r18) / 1000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x015a, code lost:
    
        if (A0n(r6, r35) == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x015c, code lost:
    
        r11 = 21;
        r16 = com.facebook.ads.redexgen.X.C3X.A11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x016e, code lost:
    
        if (r16[2].length() == r16[6].length()) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0170, code lost:
    
        com.facebook.ads.redexgen.X.C3X.A11[5] = "JeMrXkiwyf";
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0185, code lost:
    
        if (A0q(r37, r39, r0, r33) == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0187, code lost:
    
        return r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0188, code lost:
    
        r16 = com.facebook.ads.redexgen.X.C3X.A11;
        r16[3] = "hdhMaNTNQgTUm79ORkLI0Fzd0F91yHSb";
        r16[0] = "A2R9MOy7HoGmmJRsJSNpUmOhRjd7gqSj";
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01a2, code lost:
    
        if (A0q(r37, r39, r0, r33) == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01a5, code lost:
    
        r11 = 21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01ab, code lost:
    
        if (A0o(r6, r35) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01ad, code lost:
    
        A0W(r37, r39, r0);
        r2 = com.facebook.ads.redexgen.X.C3X.A11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01c2, code lost:
    
        if (r2[3].charAt(30) == r2[0].charAt(30)) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01c9, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01ca, code lost:
    
        com.facebook.ads.redexgen.X.C3X.A11[1] = "fbU2VrE98PnDfYcDvsLqqJdsNJDNnw7d";
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01d2, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01d9, code lost:
    
        if (r32.A0q.A0G() == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01db, code lost:
    
        r32.A0q.A0B(r33, r35);
        r32.A0q.A0K(r32.A0g, r0, r44);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01ea, code lost:
    
        throw null;
     */
    @Override // com.facebook.ads.redexgen.X.C4H
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A23(long r33, long r35, com.facebook.ads.redexgen.X.InterfaceC1916Sn r37, java.nio.ByteBuffer r38, int r39, int r40, long r41, boolean r43, boolean r44) throws com.facebook.ads.redexgen.X.AnonymousClass96 {
        /*
            Method dump skipped, instruction units count: 632
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3X.A23(long, long, com.facebook.ads.redexgen.X.Sn, java.nio.ByteBuffer, int, int, long, boolean, boolean):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final boolean A25(C1919Sq c1919Sq) {
        return (this.A0U != null && (this.A0Z || this.A0U.isValid())) || A0r(c1919Sq);
    }

    public final Pair<ColorInfo, ColorInfo> A26(ColorInfo colorInfo) {
        if (!ColorInfo.A09(colorInfo)) {
            return Pair.create(ColorInfo.A09, ColorInfo.A09);
        }
        if (colorInfo.A03 == 7) {
            return Pair.create(colorInfo, colorInfo.A0A().A02(6).A03());
        }
        return Pair.create(colorInfo, colorInfo);
    }

    public final void A27() {
        this.A0j = true;
        if (!this.A0i) {
            this.A0i = true;
            this.A0t.A0D(this.A0U);
        }
    }

    @MetaExoPlayerCustomization
    public final boolean A28(long j, long j2, boolean z) {
        return A0k(j) && !z;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97, com.facebook.ads.redexgen.X.PR
    public final void AAM(int i, Object obj) throws AnonymousClass96 {
        if (i == 1) {
            A0U((Surface) obj);
            return;
        }
        if (A11[1].charAt(9) != '5') {
            A11[7] = "KREeACCHTlwu8ddK1Kzfi9bw16JB4";
            if (i == 4) {
                this.A0H = ((Integer) obj).intValue();
                InterfaceC1916Sn interfaceC1916SnA1j = A1j();
                if (interfaceC1916SnA1j == null) {
                    return;
                }
                int i2 = this.A0H;
                if (A11[4].length() != 1) {
                    A11[4] = "e";
                    interfaceC1916SnA1j.ALA(i2);
                    return;
                } else {
                    String[] strArr = A11;
                    strArr[3] = "xLrHRLKUW8a95n8rXuXAT7tESNXoYGSR";
                    strArr[0] = "zAWpFMEQW92aWBE2ysjWHFELYOwHv3Sb";
                    interfaceC1916SnA1j.ALA(i2);
                    return;
                }
            }
            if (i == 7) {
                InterfaceC2038Xo interfaceC2038Xo = (InterfaceC2038Xo) obj;
                if (A11[4].length() != 1) {
                    throw new RuntimeException();
                }
                A11[4] = "K";
                this.A0X = interfaceC2038Xo;
                return;
            }
            if (i == 10001) {
                A0f(obj);
                return;
            }
            if (i == 13) {
                this.A0q.A0F((List) AbstractC1747Ln.A01(obj));
                return;
            }
            if (i == 14) {
                C1773Mo c1773Mo = (C1773Mo) AbstractC1747Ln.A01(obj);
                if (c1773Mo.A03() == 0) {
                    return;
                }
                int iA02 = c1773Mo.A02();
                if (A11[1].charAt(9) != '5') {
                    A11[1] = "sATdPNQKTcJQDi0O9zGASS7KEwnur9li";
                    if (iA02 == 0 || this.A0U == null) {
                        return;
                    }
                    this.A0q.A0C(this.A0U, c1773Mo);
                    return;
                }
            } else {
                super.AAM(i, obj);
                return;
            }
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final boolean AB7() {
        boolean zAB7 = super.AB7();
        boolean isEnded = this.A0q.A0G();
        if (isEnded) {
            boolean isEnded2 = this.A0q.A0I();
            return zAB7 & isEnded2;
        }
        return zAB7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0097, code lost:
    
        if (r5 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009d, code lost:
    
        if (r9.A0U == r9.A0T) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a3, code lost:
    
        if (A1j() == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a7, code lost:
    
        if (r9.A0k == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ac, code lost:
    
        if (r5 != null) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b7  */
    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.InterfaceC1909Sg
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomizations
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean ABM() {
        /*
            r9 = this;
            boolean r0 = super.ABM()
            if (r0 == 0) goto L38
            boolean r0 = r9.A0i
            if (r0 != 0) goto L38
            android.view.Surface r3 = r9.A0T
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3X.A11
            r0 = 1
            r1 = r1[r0]
            r0 = 9
            char r1 = r1.charAt(r0)
            r0 = 53
            if (r1 == r0) goto L67
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3X.A11
            java.lang.String r1 = "B06qONTXcfa5EVD8D5PDXAL8fBLPP"
            r0 = 7
            r2[r0] = r1
            if (r3 == 0) goto L2a
            android.view.Surface r1 = r9.A0U
            android.view.Surface r0 = r9.A0T
            if (r1 == r0) goto L38
        L2a:
            com.facebook.ads.redexgen.X.Sn r0 = r9.A1j()
            if (r0 == 0) goto L38
            boolean r0 = r9.A0k
            if (r0 != 0) goto L38
            com.facebook.ads.redexgen.X.Xz r0 = com.facebook.ads.redexgen.X.EnumC2047Xz.A08
            r9.A0B = r0
        L38:
            boolean r0 = super.ABM()
            r8 = 1
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r0 == 0) goto Laf
            com.facebook.ads.redexgen.X.Xa r0 = r9.A0q
            boolean r0 = r0.A0G()
            if (r0 == 0) goto L54
            com.facebook.ads.redexgen.X.Xa r0 = r9.A0q
            boolean r0 = r0.A0H()
            if (r0 == 0) goto Laf
        L54:
            boolean r0 = r9.A0h
            if (r0 == 0) goto L76
            android.view.Surface r5 = r9.A0U
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3X.A11
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 10
            if (r1 == r0) goto L6d
        L67:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L6d:
            java.lang.String[] r4 = com.facebook.ads.redexgen.X.C3X.A11
            java.lang.String r1 = "v"
            r0 = 4
            r4[r0] = r1
            if (r5 == 0) goto Laf
        L76:
            boolean r0 = r9.A0i
            if (r0 != 0) goto La9
            android.view.Surface r5 = r9.A0T
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3X.A11
            r0 = 1
            r1 = r1[r0]
            r0 = 9
            char r1 = r1.charAt(r0)
            r0 = 53
            if (r1 == r0) goto Lac
            java.lang.String[] r4 = com.facebook.ads.redexgen.X.C3X.A11
            java.lang.String r1 = "7RbqHGJzwVZCwqLB37kuqdrRw0UUy7Sa"
            r0 = 3
            r4[r0] = r1
            java.lang.String r1 = "wGqa3WBPHRZIm8XzyHsbalyq4C9m6DSG"
            r0 = 0
            r4[r0] = r1
            if (r5 == 0) goto L9f
        L99:
            android.view.Surface r1 = r9.A0U
            android.view.Surface r0 = r9.A0T
            if (r1 == r0) goto La9
        L9f:
            com.facebook.ads.redexgen.X.Sn r0 = r9.A1j()
            if (r0 == 0) goto La9
            boolean r0 = r9.A0k
            if (r0 == 0) goto Laf
        La9:
            r9.A0M = r2
            return r8
        Lac:
            if (r5 == 0) goto L9f
            goto L99
        Laf:
            long r4 = r9.A0M
            r1 = 0
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 != 0) goto Lb7
            return r1
        Lb7:
            long r6 = android.os.SystemClock.elapsedRealtime()
            long r4 = r9.A0M
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 >= 0) goto Lc2
            return r8
        Lc2:
            r9.A0M = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3X.ABM():boolean");
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final void AJo(long j, long j2) throws AnonymousClass96 {
        super.AJo(j, j2);
        if (this.A0q.A0G()) {
            this.A0q.A0B(j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg, com.facebook.ads.redexgen.X.InterfaceC1838Pe
    public final String getName() {
        return A0B(682, 23, 0);
    }
}
