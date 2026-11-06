package com.facebook.ads.redexgen.X;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView;
import com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$SavedState;
import com.facebook.ads.internal.util.parcelable.WrappedParcelable;
import com.google.android.gms.common.api.Api;
import com.ironsource.mediationsdk.demandOnly.e;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.metadata.a;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7O, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C7O extends ViewGroup {
    public static byte[] A18;
    public static String[] A19 = {"EzQ8zede2M", "Jhjgeach8ubRdn89CHbftPIFCkhy8Cmz", "AI0RoC", "LwFgY3t3Qwi2PJUU36Pvm2", "gOCwMU1oDfpLVyXTNaTi7eQdHjis00sx", "GZYggCcl1OWg4VOzBYKk2kBvqjxmktta", "Te26Sy6xLG0KtVPzJaOHws0Kts3F9NRb", "K773CdyIAwEU"};
    public static final Interpolator A1A;
    public static final boolean A1B;
    public static final boolean A1C;
    public static final boolean A1D;
    public static final boolean A1E;
    public static final boolean A1F;
    public static final boolean A1G;
    public static final int[] A1H;
    public static final int[] A1I;
    public static final Class<?>[] A1J;
    public JB A00;
    public C2609iK A01;
    public JA A02;
    public RunnableC2622iX A03;
    public AbstractC2633ik A04;
    public AbstractC2641is A05;
    public AbstractC2645iw A06;
    public InterfaceC2654j5 A07;
    public RunnableC2662jD A08;
    public C1663Ic A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public boolean A0K;
    public float A0L;
    public float A0M;
    public int A0N;
    public int A0O;
    public int A0P;
    public int A0Q;
    public int A0R;
    public int A0S;
    public int A0T;
    public int A0U;
    public int A0V;
    public int A0W;
    public int A0X;
    public VelocityTracker A0Y;
    public EdgeEffect A0Z;
    public EdgeEffect A0a;
    public EdgeEffect A0b;
    public EdgeEffect A0c;
    public C2547hJ A0d;
    public InterfaceC2636in A0e;
    public InterfaceC2639iq A0f;
    public AbstractC2648iz A0g;
    public InterfaceC2649j0 A0h;
    public AbstractC2650j1 A0i;
    public RecyclerView$SavedState A0j;
    public Runnable A0k;
    public List<RecyclerView.OnChildAttachStateChangeListener> A0l;
    public List<AbstractC2650j1> A0m;
    public boolean A0n;
    public boolean A0o;
    public final Rect A0p;
    public final RectF A0q;
    public final C2653j4 A0r;
    public final C2660jB A0s;
    public final C2671jM A0t;
    public final Runnable A0u;
    public final ArrayList<AbstractC2642it> A0v;
    public final List<AbstractC2663jE> A0w;
    public final int A0x;
    public final int A0y;
    public final Rect A0z;
    public final AccessibilityManager A10;
    public final C1677Ir A11;
    public final InterfaceC2670jL A12;
    public final ArrayList<InterfaceC2649j0> A13;
    public final int[] A14;
    public final int[] A15;
    public final int[] A16;
    public final int[] A17;

    public static String A0I(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A18, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 85);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0N() {
        /*
            Method dump skipped, instruction units count: 303
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.A0N():void");
    }

    public static void A0W() {
        A18 = new byte[]{-74, -74, -96, -74, -20, -1, -5, 13, -74, -34, 5, 2, -6, -5, 8, -74, -56, -48, -100, -33, -35, -22, -22, -21, -16, -100, -34, -31, -100, -30, -21, -15, -22, -32, -100, -34, -15, -16, -100, -27, -16, -100, -27, -17, -100, -22, -31, -33, -31, -17, -17, -35, -18, -11, -100, -30, -21, -18, -100, 126, -57, -47, 126, -65, -54, -48, -61, -65, -62, -41, 126, -65, -46, -46, -65, -63, -58, -61, -62, 126, -46, -51, 126, -65, 126, -80, -61, -63, -41, -63, -54, -61, -48, -76, -57, -61, -43, -104, -12, 61, 71, -12, 66, 67, 72, -12, 53, -12, 56, 61, 70, 57, 55, 72, -12, 55, 60, 61, 64, 56, -12, 67, 58, -12, -93, -15, -14, -9, -93, -23, -14, -8, -15, -25, -79, -93, -57, -20, -25, -93, -28, -15, -4, -93, -48, -14, -9, -20, -14, -15, -56, -7, -24, -15, -9, -10, -93, -22, -24, -9, -93, -10, -18, -20, -13, -13, -24, -25, -62, -45, -57, 8, 11, 8, 23, 27, 12, 25, -31, -117, 127, -62, -50, -51, -45, -60, -41, -45, -103, -56, -68, 8, -3, 21, 11, 17, 16, -42, 9, -18, 67, 65, 55, 60, 53, -18, 50, 51, 52, 47, 67, 58, 66, -18, 68, 47, 58, 67, 51, -67, -37, -26, -26, -33, -34, -102, -20, -33, -25, -23, -16, -33, -66, -33, -18, -37, -35, -30, -33, -34, -48, -29, -33, -15, -102, -15, -29, -18, -30, -102, -37, -102, -16, -29, -33, -15, -102, -15, -30, -29, -35, -30, -102, -29, -19, -102, -24, -23, -18, -102, -32, -26, -37, -31, -31, -33, -34, -102, -37, -19, -102, -18, -25, -22, -102, -34, -33, -18, -37, -35, -30, -33, -34, -88, -80, -50, -37, -37, -36, -31, -115, -50, -47, -47, -115, -42, -31, -46, -38, -115, -47, -46, -48, -36, -33, -50, -31, -42, -36, -37, -115, -47, -30, -33, -42, -37, -44, -115, -50, -115, -32, -48, -33, -36, -39, -39, -115, -115, -36, -33, -115, -39, -50, -26, -36, -30, -31, -55, -25, -12, -12, -11, -6, -90, -23, -25, -14, -14, -90, -6, -18, -17, -7, -90, -13, -21, -6, -18, -11, -22, -90, -17, -12, -90, -25, -90, -7, -23, -8, -11, -14, -14, -90, -23, -25, -14, -14, -24, -25, -23, -15, -76, -90, -39, -23, -8, -11, -14, -14, -90, -23, -25, -14, -14, -24, -25, -23, -15, -7, -90, -13, -17, -19, -18, -6, -24, -21, -90, -8, -5, -12, -90, -22, -5, -8, -17, -12, -19, -90, -25, -90, -13, -21, -25, -7, -5, -8, -21, -90, -84, -90, -14, -25, -1, -11, -5, -6, -90, -10, -25, -7, -7, -90, -3, -18, -21, -8, -21, -90, -1, -11, -5, -90, -23, -25, -12, -12, -11, -6, -90, -23, -18, -25, -12, -19, -21, -90, -6, -18, -21, -40, -21, -23, -1, -23, -14, -21, -8, -36, -17, -21, -3, -90, -22, -25, -6, -25, -76, -90, -57, -12, -1, -90, -13, -21, -6, -18, -11, -22, -90, -23, -25, -14, -14, -90, -6, -18, -25, -6, -90, -13, -17, -19, -18, -6, -90, -23, -18, -25, -12, -19, -21, -90, -6, -18, -21, -90, -7, -6, -8, -5, -23, -6, -5, -8, -21, -11, -20, -90, -6, -18, -21, -90, -40, -21, -23, -1, -23, -14, -21, -8, -36, -17, -21, -3, -90, -11, -8, -90, -6, -18, -21, -90, -25, -22, -25, -10, -6, -21, -8, -90, -23, -11, -12, -6, -21, -12, -6, -7, -90, -7, -18, -11, -5, -14, -22, -90, -24, -21, -90, -10, -11, -7, -6, -10, -11, -12, -21, -22, -90, -6, -11, -6, -18, -21, -90, -12, -21, -2, -6, -90, -20, -8, -25, -13, -21, -76, -28, 2, 15, 15, 16, 21, -63, 4, 2, 13, 13, -63, 21, 9, 10, 20, -63, 14, 6, 21, 9, 16, 5, -63, 24, 9, 10, 13, 6, -63, -13, 6, 4, 26, 4, 13, 6, 19, -9, 10, 6, 24, -63, 10, 20, -63, 4, 16, 14, 17, 22, 21, 10, 15, 8, -63, 2, -63, 13, 2, 26, 16, 22, 21, -63, 16, 19, -63, 20, 4, 19, 16, 13, 13, 10, 15, 8, -35, -5, 8, 8, 9, 14, -70, 0, 6, 3, 8, 1, -70, 17, 3, 14, 2, 9, 15, 14, -70, -5, -70, -26, -5, 19, 9, 15, 14, -25, -5, 8, -5, 1, -1, 12, -70, 13, -1, 14, -56, -70, -35, -5, 6, 6, -70, 13, -1, 14, -26, -5, 19, 9, 15, 14, -25, -5, 8, -5, 1, -1, 12, -70, 17, 3, 14, 2, -70, -5, -70, 8, 9, 8, -57, 8, 15, 6, 6, -70, -5, 12, 1, 15, 7, -1, 8, 14, -56, -33, -3, 10, 10, 11, 16, -68, 15, -1, 14, 11, 8, 8, -68, 16, 11, -68, 12, 11, 15, 5, 16, 5, 11, 10, -68, -3, -68, -24, -3, 21, 11, 17, 16, -23, -3, 10, -3, 3, 1, 14, -68, 15, 1, 16, -54, -68, -33, -3, 8, 8, -68, 15, 1, 16, -24, -3, 21, 11, 17, 16, -23, -3, 10, -3, 3, 1, 14, -68, 19, 5, 16, 4, -68, -3, -68, 10, 11, 10, -55, 10, 17, 8, 8, -68, -3, 14, 3, 17, 9, 1, 10, 16, -54, -29, 1, 14, 14, 15, 20, -64, 19, 3, 18, 15, 12, 12, -64, 23, 9, 20, 8, 15, 21, 20, -64, 1, -64, -20, 1, 25, 15, 21, 20, -19, 1, 14, 1, 7, 5, 18, -64, 19, 5, 20, -50, -64, -29, 1, 12, 12, -64, 19, 5, 20, -20, 1, 25, 15, 21, 20, -19, 1, 14, 1, 7, 5, 18, -64, 23, 9, 20, 8, -64, 1, -64, 14, 15, 14, -51, 14, 21, 12, 12, -64, 1, 18, 7, 21, 13, 5, 14, 20, -50, -19, 11, 24, 24, 25, 30, -54, 29, 23, 25, 25, 30, 18, -54, 29, 13, 28, 25, 22, 22, -54, 33, 19, 
        30, 18, 25, 31, 30, -54, 11, -54, -10, 11, 35, 25, 31, 30, -9, 11, 24, 11, 17, 15, 28, -54, 29, 15, 30, -40, -54, -19, 11, 22, 22, -54, 29, 15, 30, -10, 11, 35, 25, 31, 30, -9, 11, 24, 11, 17, 15, 28, -54, 33, 19, 30, 18, -54, 11, -54, 24, 25, 24, -41, 24, 31, 22, 22, -54, 11, 28, 17, 31, 23, 15, 24, 30, -40, -53, -10, -89, -11, -10, -5, -89, -6, -20, -5, -45, -24, 0, -10, -4, -5, -51, -7, -10, 1, -20, -11, -89, -16, -11, -89, -13, -24, 0, -10, -4, -5, -89, -10, -7, -89, -6, -22, -7, -10, -13, -13, -14, 31, 31, 28, 31, -51, 29, 31, 28, 16, 18, 32, 32, 22, 27, 20, -51, 32, 16, 31, 28, 25, 25, -24, -51, 29, 28, 22, 27, 33, 18, 31, -51, 22, 27, 17, 18, 37, -51, 19, 28, 31, -51, 22, 17, -51, -55, -34, -10, -20, -14, -15, -54, -34, -21, -34, -28, -30, -17, -99, -52, -19, -98, -33, -30, -33, -18, -14, -29, -16, -98, -33, -14, -14, -33, -31, -26, -29, -30, -71, -98, -15, -23, -25, -18, -18, -25, -20, -27, -98, -22, -33, -9, -19, -13, -14, -3, 30, -49, 27, 16, 40, 30, 36, 35, -49, 28, 16, 29, 16, 22, 20, 33, -49, 16, 35, 35, 16, 18, 23, 20, 19, -22, -49, 34, 26, 24, 31, 31, 24, 29, 22, -49, 27, 16, 40, 30, 36, 35, 3, 37, 34, 21, 31, 24, 32, -45, 42, 27, 28, 31, 24, -45, 32, 20, 39, 22, 27, 28, 33, 26, -45, 22, 27, 20, 33, 26, 24, 23, -45, 41, 28, 24, 42, -45, 27, 34, 31, 23, 24, 37, 38, -45, 42, 28, 39, 27, -45, 39, 27, 24, -45, 33, 24, 42, 34, 33, 24, 38, -31, -45, 7, 27, 24, -45, 35, 37, 24, -32, 31, 20, 44, 34, 40, 39, -45, 28, 33, 25, 34, 37, 32, 20, 39, 28, 34, 33, -45, 25, 34, 37, -45, 39, 27, 24, -45, 22, 27, 20, 33, 26, 24, -45, 27, 34, 31, 23, 24, 37, -45, -3, 1, -53, -15, 32, 23, 23, -12, 25, 33, 12, 23, 20, 15, 12, 31, 16, -7, -3, -57, -10, 21, -13, 8, 32, 22, 28, 27, -14, -10, -64, -16, 1, 18, 20, 9, 1, 12, -23, 14, 22, 1, 12, 9, 4, 1, 20, 5, -10, -6, -60, -9, 7, 22, 19, 16, 16, 1, 20, 18, 40, 18, 27, 20, 33, 5, 24, 20, 38, -72, -53, -55, -33, -55, -46, -53, -40, -68, -49, -53, -35, -122, -54, -43, -53, -39, -122, -44, -43, -38, -122, -39, -37, -42, -42, -43, -40, -38, -122, -39, -55, -40, -43, -46, -46, -49, -44, -51, -122, -38, -43, -122, -57, -44, -122, -57, -56, -39, -43, -46, -37, -38, -53, -122, -42, -43, -39, -49, -38, -49, -43, -44, -108, -122, -69, -39, -53, -122, -39, -55, -40, -43, -46, -46, -70, -43, -74, -43, -39, -49, -38, -49, -43, -44, -122, -49, -44, -39, -38, -53, -57, -54, 27, 46, 44, 66, 44, 53, 46, 59, 31, 50, 46, 64, -23, 49, 42, 60, -23, 55, 56, -23, 21, 42, 66, 56, 62, 61, 22, 42, 55, 42, 48, 46, 59, -10, 25, 17, -62, 6, 11, 8, 8, 7, 20, 7, 16, 22, -62, -8, 11, 7, 25, -22, 17, 14, 6, 7, 20, 21, -62, 10, 3, 24, 7, -62, 22, 10, 7, -62, 21, 3, 15, 7, -62, 5, 10, 3, 16, 9, 7, -62, -21, -26, -48, -62, -10, 10, 11, 21, -62, 15, 11, 9, 10, 22, -62, 10, 3, 18, 18, 7, 16, -62, 6, 23, 7, -62, 22, 17, -62, 11, 16, 5, 17, 16, 21, 11, 21, 22, 7, 16, 22, -62, -29, 6, 3, 18, 22, 7, 20, -62, 23, 18, 6, 3, 22, 7, -62, 7, 24, 7, 16, 22, 21, -62, 17, 20, -62, 11, 8, -62, 22, 10, 7, -62, -18, 3, 27, 17, 23, 22, -17, 3, 16, 3, 9, 7, 20, -62, 14, 3, 27, 21, -62, 17, 23, 22, -62, 22, 10, 7, -62, 21, 3, 15, 7, -62, -8, 11, 7, 25, -62, 15, 23, 14, 22, 11, 18, 14, 7, -62, 22, 11, 15, 7, 21, -48, -84, -62, -8, 11, 7, 25, -22, 17, 14, 6, 7, 20, -62, -45, -36, -31, 4, -4, -83, -15, -10, -13, -13, -14, -1, -14, -5, 1, -83, -29, -10, -14, 4, -43, -4, -7, -15, -14, -1, 0, -83, -11, -18, 3, -14, -83, 1, -11, -14, -83, 0, -18, -6, -14, -83, 0, 1, -18, -17, -7, -14, -83, -42, -47, -69, -83, -32, 1, -18, -17, -7, -14, -83, -42, -47, 0, -83, -10, -5, -83, 6, -4, 2, -1, -83, -18, -15, -18, -3, 1, -14, -1, -83, -38, -30, -32, -31, -83, -49, -46, -83, 2, -5, -10, -2, 2, -14, -83, -18, -5, -15, -83, -32, -43, -36, -30, -39, -47, -83, -37, -36, -31, -83, -16, -11, -18, -5, -12, -14, -69, -105, -83, -29, -10, -14, 4, -43, -4, -7, -15, -14, -1, -83, -66, -57, -4, 15, 11, 29, -58, 28, 30, 30, 32, 46, 46, 36, 29, 36, 39, 36, 47, 52, -53, -48, -39, -52, -54, -37, -48, -42, -43, -121, -44, -36, -38, -37, -121, -55, -52, -121, -56, -55, -38, -42, -45, -36, -37, -52, -107, -121, -39, -52, -54, -52, -48, -35, -52, -53, -95, -40, -41, -84, -47, -46, -43, -51, -65, -46, -50, -32, -86, -35, -35, -54, -52, -47, -50, -51, -67, -40, -64, -46, -41, -51, -40, -32, -34, -35, -78, -41, -40, -37, -45, -59, -40, -44, -26, -77, -44, -29, -48, -46, -41, -44, -45, -75, -31, -34, -36, -58, -40, -35, -45, -34, -26, -25, -26, -65, -35, -20, -69, -32, -31, -28, -36, 
        -68, -22, -39, -17, -31, -26, -33, -57, -22, -36, -35, -22, 18, 17, -20, 17, 23, 8, 21, 6, 8, 19, 23, -9, 18, 24, 6, 11, -24, 25, 8, 17, 23, 29, 15, 30, -3, 13, 28, 25, 22, 22, 19, 24, 17, -2, 25, 31, 13, 18, -3, 22, 25, 26, -46, -45, -28, -54, 12, 11, 14, -54, 11, 28, 17, 31, 23, 15, 24, 30, -54, 13, 25, 24, 29, 30, 11, 24, 30, -54};
    }

    static {
        A0W();
        A1I = new int[]{R.attr.nestedScrollingEnabled};
        A1H = new int[]{R.attr.clipToPadding};
        A1C = false;
        A1B = Build.VERSION.SDK_INT >= 23;
        A1D = true;
        A1E = true;
        A1F = false;
        A1G = false;
        Class<?> cls = Integer.TYPE;
        A1J = new Class[]{Context.class, AttributeSet.class, cls, cls};
        A1A = new InterpolatorC2632ij();
    }

    public C7O(Context context) {
        this(context, null);
    }

    public C7O(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C7O(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.A11 = new C1677Ir(this);
        this.A0r = new C2653j4(this);
        this.A0t = new C2671jM();
        this.A0u = new RunnableC2630ih(this);
        this.A0p = new Rect();
        this.A0z = new Rect();
        this.A0q = new RectF();
        this.A0v = new ArrayList<>();
        this.A13 = new ArrayList<>();
        this.A0O = 0;
        this.A0C = false;
        this.A0U = 0;
        this.A0N = 0;
        this.A05 = new C7S();
        this.A0W = 0;
        this.A0V = -1;
        this.A0L = Float.MIN_VALUE;
        this.A0M = Float.MIN_VALUE;
        this.A0o = true;
        this.A08 = new RunnableC2662jD(this);
        this.A02 = A1E ? new JA() : null;
        this.A0s = new C2660jB();
        this.A0G = false;
        this.A0H = false;
        this.A0f = new C1680Iu(this);
        this.A0K = false;
        this.A14 = new int[2];
        this.A17 = new int[2];
        this.A16 = new int[2];
        this.A15 = new int[2];
        this.A0w = new ArrayList();
        this.A0k = new RunnableC2631ii(this);
        this.A12 = new J2(this);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, A1H, i, 0);
            this.A0B = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
        } else {
            this.A0B = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.A0X = viewConfiguration.getScaledTouchSlop();
        this.A0L = AbstractC2566hc.A00(viewConfiguration, context);
        this.A0M = AbstractC2566hc.A01(viewConfiguration, context);
        this.A0y = viewConfiguration.getScaledMinimumFlingVelocity();
        this.A0x = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.A05.A0J(this.A0f);
        A0e();
        A0O();
        if (AbstractC2565hb.A00(this) == 0) {
            AbstractC2565hb.A09(this, 1);
        }
        this.A10 = (AccessibilityManager) getContext().getSystemService(A0I(1884, 13, 102));
        setAccessibilityDelegateCompat(new C1663Ic(this));
        setDescendantFocusability(262144);
        setNestedScrollingEnabled(true);
    }

    private int A0B(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            int id2 = view.getId();
            if (id2 != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    private final long A0C(AbstractC2663jE abstractC2663jE) {
        return this.A04.A0O() ? abstractC2663jE.A0V() : abstractC2663jE.A03;
    }

    private View A0D() {
        AbstractC2663jE abstractC2663jEA1H;
        int i = this.A0s.A01 != -1 ? this.A0s.A01 : 0;
        int iA03 = this.A0s.A03();
        for (int i2 = i; i2 < iA03; i2++) {
            AbstractC2663jE abstractC2663jEA1H2 = A1H(i2);
            if (abstractC2663jEA1H2 == null) {
                break;
            }
            if (abstractC2663jEA1H2.A0H.hasFocusable()) {
                return abstractC2663jEA1H2.A0H;
            }
        }
        int startFocusSearchIndex = Math.min(iA03, i);
        for (int limit = startFocusSearchIndex - 1; limit >= 0 && (abstractC2663jEA1H = A1H(limit)) != null; limit--) {
            if (abstractC2663jEA1H.A0H.hasFocusable()) {
                return abstractC2663jEA1H.A0H;
            }
        }
        return null;
    }

    private final AbstractC2663jE A0E(long j) {
        if (this.A04 == null || !this.A04.A0O()) {
            return null;
        }
        int iA06 = this.A01.A06();
        AbstractC2663jE abstractC2663jE = null;
        for (int i = 0; i < iA06; i++) {
            AbstractC2663jE holder = A0F(this.A01.A0A(i));
            if (holder != null && !holder.A0n()) {
                long jA0V = holder.A0V();
                String[] strArr = A19;
                String str = strArr[3];
                String str2 = strArr[0];
                int length = str.length();
                int childCount = str2.length();
                if (length == childCount) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A19;
                strArr2[2] = "zZZE93";
                strArr2[7] = "VhF552wVYFMR";
                if (jA0V != j) {
                    continue;
                } else if (this.A01.A0K(holder.A0H)) {
                    abstractC2663jE = holder;
                } else {
                    return holder;
                }
            }
        }
        return abstractC2663jE;
    }

    public static AbstractC2663jE A0F(View view) {
        if (view == null) {
            return null;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (A19[1].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[6] = "BAOGG7B6SgQWpjs0haC4kmkQlPV7A4k9";
        strArr[4] = "PAhaNRNZ3VZ1U75Bha3wwWQKZTmx8jYI";
        return ((C2646ix) layoutParams).A00;
    }

    private final AbstractC2663jE A0G(View view) {
        View itemView = A1G(view);
        if (itemView == null) {
            return null;
        }
        return A1K(itemView);
    }

    public static C7O A0H(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        boolean z = view instanceof C7O;
        if (A19[5].charAt(2) != 'Y') {
            throw new RuntimeException();
        }
        A19[1] = "St3OXKQiThZ0lO5vTnfaG6NXMltPJG5W";
        if (z) {
            return (C7O) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int count = viewGroup.getChildCount();
        for (int i = 0; i < count; i++) {
            C7O c7oA0H = A0H(viewGroup.getChildAt(i));
            if (c7oA0H != null) {
                return c7oA0H;
            }
        }
        return null;
    }

    private void A0J() {
        A0T();
        setScrollState(0);
    }

    private void A0K() {
        int i = this.A0P;
        this.A0P = 0;
        if (i != 0) {
            boolean zA1x = A1x();
            String[] strArr = A19;
            String str = strArr[2];
            String str2 = strArr[7];
            int length = str.length();
            int flags = str2.length();
            if (length == flags) {
                throw new RuntimeException();
            }
            String[] strArr2 = A19;
            strArr2[3] = "eU2cwXbbXfV7oR8qPBCYPw";
            strArr2[0] = "cj1lHsGs8Y";
            if (zA1x) {
                AccessibilityEvent event = AccessibilityEvent.obtain();
                event.setEventType(a.o);
                AbstractC2583hu.A01(event, i);
                sendAccessibilityEventUnchecked(event);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x01a1 A[PHI: r1
      0x01a1: PHI (r1v9 com.facebook.ads.redexgen.X.jE) = (r1v8 com.facebook.ads.redexgen.X.jE), (r1v12 com.facebook.ads.redexgen.X.jE) binds: [B:53:0x019e, B:50:0x0186] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0L() {
        /*
            Method dump skipped, instruction units count: 482
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.A0L():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0M() {
        /*
            r6 = this;
            r6.A1N()
            r6.A1O()
            com.facebook.ads.redexgen.X.jB r1 = r6.A0s
            r0 = 6
            r1.A04(r0)
            com.facebook.ads.redexgen.X.JB r0 = r6.A00
            r0.A0G()
            com.facebook.ads.redexgen.X.jB r1 = r6.A0s
            com.facebook.ads.redexgen.X.ik r0 = r6.A04
            int r0 = r0.A0B()
            r1.A03 = r0
            com.facebook.ads.redexgen.X.jB r0 = r6.A0s
            r3 = 0
            r0.A00 = r3
            com.facebook.ads.redexgen.X.jB r0 = r6.A0s
            r0.A09 = r3
            com.facebook.ads.redexgen.X.iw r2 = r6.A06
            com.facebook.ads.redexgen.X.j4 r1 = r6.A0r
            com.facebook.ads.redexgen.X.jB r0 = r6.A0s
            r2.A2Z(r1, r0)
            com.facebook.ads.redexgen.X.jB r0 = r6.A0s
            r0.A0D = r3
            r0 = 0
            r6.A0j = r0
            com.facebook.ads.redexgen.X.jB r4 = r6.A0s
            com.facebook.ads.redexgen.X.jB r0 = r6.A0s
            boolean r0 = r0.A0C
            if (r0 == 0) goto L7a
            com.facebook.ads.redexgen.X.is r5 = r6.A05
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            r0 = 3
            r1 = r2[r0]
            r0 = 0
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L8d
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            java.lang.String r1 = "QyMu0uKDVMcIUQ2WaaKkjpUJvINNzfF4"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "jnZHkwnP1Z9tC9uQsacmbdRp3FaoK01F"
            r0 = 4
            r2[r0] = r1
            if (r5 == 0) goto L7a
            r0 = 1
        L5f:
            r4.A0C = r0
            com.facebook.ads.redexgen.X.jB r4 = r6.A0s
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7O.A19
            r0 = 1
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 32
            if (r1 == r0) goto L7c
            r0 = 4
            r4.A04 = r0
            r6.A1P()
            r6.A1w(r3)
            return
        L7a:
            r0 = 0
            goto L5f
        L7c:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            java.lang.String r1 = "3IsVIAoReRfPbfS1EeUcjIwVgXkj1JVv"
            r0 = 1
            r2[r0] = r1
            r0 = 4
            r4.A04 = r0
            r6.A1P()
            r6.A1w(r3)
            return
        L8d:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.A0M():void");
    }

    private void A0O() {
        this.A01 = new C2609iK(new J1(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0P() {
        /*
            r7 = this;
            boolean r0 = r7.A0C
            if (r0 == 0) goto Le
            com.facebook.ads.redexgen.X.JB r0 = r7.A00
            r0.A0I()
            com.facebook.ads.redexgen.X.iw r0 = r7.A06
            r0.A2e(r7)
        Le:
            boolean r0 = r7.A10()
            if (r0 == 0) goto L51
            com.facebook.ads.redexgen.X.JB r0 = r7.A00
            r0.A0H()
        L19:
            boolean r0 = r7.A0G
            r3 = 0
            if (r0 != 0) goto L22
            boolean r0 = r7.A0H
            if (r0 == 0) goto L4f
        L22:
            r6 = 1
        L23:
            com.facebook.ads.redexgen.X.jB r4 = r7.A0s
            boolean r0 = r7.A0D
            if (r0 == 0) goto L57
            com.facebook.ads.redexgen.X.is r0 = r7.A05
            if (r0 == 0) goto L57
            boolean r0 = r7.A0C
            if (r0 != 0) goto L39
            if (r6 != 0) goto L39
            com.facebook.ads.redexgen.X.iw r0 = r7.A06
            boolean r0 = r0.A09
            if (r0 == 0) goto L57
        L39:
            boolean r5 = r7.A0C
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7O.A19
            r0 = 5
            r1 = r1[r0]
            r0 = 2
            char r1 = r1.charAt(r0)
            r0 = 89
            if (r1 == r0) goto L59
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L4f:
            r6 = 0
            goto L23
        L51:
            com.facebook.ads.redexgen.X.JB r0 = r7.A00
            r0.A0G()
            goto L19
        L57:
            r0 = 0
            goto L70
        L59:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            java.lang.String r1 = "q3lLGfTGOOnJqHZydaTklLew08TAvgTY"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "cayAc0YyiA2wrQyaXaOul4VyYlz5tKdZ"
            r0 = 4
            r2[r0] = r1
            if (r5 == 0) goto L6f
            com.facebook.ads.redexgen.X.ik r0 = r7.A04
            boolean r0 = r0.A0O()
            if (r0 == 0) goto L57
        L6f:
            r0 = 1
        L70:
            r4.A0C = r0
            com.facebook.ads.redexgen.X.jB r1 = r7.A0s
            com.facebook.ads.redexgen.X.jB r0 = r7.A0s
            boolean r0 = r0.A0C
            if (r0 == 0) goto L87
            if (r6 == 0) goto L87
            boolean r0 = r7.A0C
            if (r0 != 0) goto L87
            boolean r0 = r7.A10()
            if (r0 == 0) goto L87
            r3 = 1
        L87:
            r1.A0B = r3
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7O.A19
            r0 = 1
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 32
            if (r1 == r0) goto La3
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            java.lang.String r1 = "gWU7AH"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "O2IXTNL1mXfE"
            r0 = 7
            r2[r0] = r1
            return
        La3:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            java.lang.String r1 = "vAY5NMbknnGVxibfJ54Fdf4KbFDo9MxQ"
            r0 = 5
            r2[r0] = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.A0P():void");
    }

    private void A0Q() {
        View viewToFocus;
        if (this.A0o && this.A04 != null && hasFocus() && getDescendantFocusability() != 393216) {
            if (getDescendantFocusability() == 131072 && isFocused()) {
                return;
            }
            boolean zIsFocused = isFocused();
            if (A19[5].charAt(2) != 'Y') {
                throw new RuntimeException();
            }
            A19[5] = "GSYhD7ljhsNq0QcPBhSV8ATJlhol3xt1";
            if (!zIsFocused) {
                View focusedChild = getFocusedChild();
                if (A1G && (focusedChild.getParent() == null || !focusedChild.hasFocus())) {
                    if (this.A01.A05() == 0) {
                        requestFocus();
                        return;
                    }
                } else if (!this.A01.A0K(focusedChild)) {
                    return;
                }
            }
            AbstractC2663jE abstractC2663jEA0E = null;
            if (this.A0s.A08 != -1 && this.A04.A0O()) {
                abstractC2663jEA0E = A0E(this.A0s.A08);
            }
            View viewA0D = null;
            if (abstractC2663jEA0E == null || this.A01.A0K(abstractC2663jEA0E.A0H) || !abstractC2663jEA0E.A0H.hasFocusable()) {
                if (this.A01.A05() > 0) {
                    viewA0D = A0D();
                }
            } else {
                viewA0D = abstractC2663jEA0E.A0H;
            }
            if (viewA0D != null) {
                if (this.A0s.A02 != -1 && (viewToFocus = viewA0D.findViewById(this.A0s.A02)) != null && viewToFocus.isFocusable()) {
                    viewA0D = viewToFocus;
                }
                viewA0D.requestFocus();
            }
        }
    }

    private void A0R() {
        boolean zIsFinished = false;
        if (this.A0a != null) {
            this.A0a.onRelease();
            zIsFinished = this.A0a.isFinished();
        }
        if (this.A0c != null) {
            this.A0c.onRelease();
            boolean needsInvalidate = this.A0c.isFinished();
            zIsFinished |= needsInvalidate;
        }
        if (this.A0b != null) {
            this.A0b.onRelease();
            boolean needsInvalidate2 = this.A0b.isFinished();
            zIsFinished |= needsInvalidate2;
        }
        if (this.A0Z != null) {
            this.A0Z.onRelease();
            boolean needsInvalidate3 = this.A0Z.isFinished();
            zIsFinished |= needsInvalidate3;
        }
        if (zIsFinished) {
            AbstractC2565hb.A07(this);
        }
    }

    private void A0S() {
        this.A0s.A08 = -1L;
        this.A0s.A01 = -1;
        this.A0s.A02 = -1;
    }

    private void A0T() {
        if (this.A0Y != null) {
            this.A0Y.clear();
        }
        A1b(0);
        A0R();
    }

    private void A0U() {
        int iA0R;
        View focusedChild = null;
        if (this.A0o && hasFocus() && this.A04 != null) {
            focusedChild = getFocusedChild();
        }
        AbstractC2663jE abstractC2663jEA0G = focusedChild == null ? null : A0G(focusedChild);
        if (abstractC2663jEA0G == null) {
            A0S();
            return;
        }
        this.A0s.A08 = this.A04.A0O() ? abstractC2663jEA0G.A0V() : -1L;
        C2660jB c2660jB = this.A0s;
        if (this.A0C) {
            iA0R = -1;
        } else {
            iA0R = abstractC2663jEA0G.A0n() ? abstractC2663jEA0G.A01 : abstractC2663jEA0G.A0R();
        }
        c2660jB.A01 = iA0R;
        C2660jB c2660jB2 = this.A0s;
        View child = abstractC2663jEA0G.A0H;
        c2660jB2.A02 = A0B(child);
    }

    private void A0V() {
        this.A08.A08();
        if (this.A06 != null) {
            this.A06.A27();
        }
    }

    private final void A0X() {
        int iA06 = this.A01.A06();
        for (int i = 0; i < iA06; i++) {
            C2609iK c2609iK = this.A01;
            String[] strArr = A19;
            String str = strArr[3];
            String str2 = strArr[0];
            int i2 = str.length();
            int childCount = str2.length();
            if (i2 == childCount) {
                throw new RuntimeException();
            }
            String[] strArr2 = A19;
            strArr2[3] = "VFyFJGthyduvDNyVUqu48D";
            strArr2[0] = "uBjdUWzzez";
            AbstractC2663jE abstractC2663jEA0F = A0F(c2609iK.A0A(i));
            if (!abstractC2663jEA0F.A0s()) {
                abstractC2663jEA0F.A0X();
            }
        }
        this.A0r.A0L();
    }

    private final void A0Y() {
        AbstractC2633ik abstractC2633ik = this.A04;
        String strA0I = A0I(1423, 12, 90);
        if (abstractC2633ik == null) {
            Log.e(strA0I, A0I(1176, 36, 41));
            return;
        }
        if (this.A06 == null) {
            Log.e(strA0I, A0I(1212, 43, 90));
            return;
        }
        this.A0s.A0A = false;
        if (this.A0s.A04 == 1) {
            A0L();
            this.A06.A2g(this);
            A0M();
        } else if (this.A00.A0K() || this.A06.A1e() != getWidth() || this.A06.A1U() != getHeight()) {
            this.A06.A2g(this);
            A0M();
        } else {
            this.A06.A2g(this);
        }
        A0N();
    }

    private final void A0Z() {
        int state;
        for (int size = this.A0w.size() - 1; size >= 0; size--) {
            AbstractC2663jE abstractC2663jE = this.A0w.get(size);
            if (abstractC2663jE.A0H.getParent() == this && !abstractC2663jE.A0s() && (state = abstractC2663jE.A02) != -1) {
                AbstractC2565hb.A09(abstractC2663jE.A0H, state);
                abstractC2663jE.A02 = -1;
            }
        }
        this.A0w.clear();
    }

    private final void A0a() {
        if (this.A0Z != null) {
            return;
        }
        this.A0Z = new EdgeEffect(getContext());
        if (this.A0B) {
            this.A0Z.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            this.A0Z.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    private final void A0b() {
        if (this.A0a != null) {
            return;
        }
        this.A0a = new EdgeEffect(getContext());
        if (this.A0B) {
            EdgeEffect edgeEffect = this.A0a;
            int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            int measuredWidth = getMeasuredWidth() - getPaddingLeft();
            String[] strArr = A19;
            if (strArr[2].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A19;
            strArr2[6] = "GMHrLIeJxdXYoHZyaa7kSwSfzExGbrBL";
            strArr2[4] = "0YT1HYXH3vPYSlLI8aOL6WZeFeHH6VHe";
            edgeEffect.setSize(measuredHeight, measuredWidth - getPaddingRight());
            return;
        }
        this.A0a.setSize(getMeasuredHeight(), getMeasuredWidth());
    }

    private final void A0c() {
        if (this.A0b != null) {
            return;
        }
        this.A0b = new EdgeEffect(getContext());
        if (this.A0B) {
            this.A0b.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            this.A0b.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    private final void A0d() {
        if (this.A0c != null) {
            return;
        }
        this.A0c = new EdgeEffect(getContext());
        if (this.A0B) {
            this.A0c.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            return;
        }
        EdgeEffect edgeEffect = this.A0c;
        int measuredWidth = getMeasuredWidth();
        if (A19[1].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[2] = "10JS50";
        strArr[7] = "NY78MD5eAiV9";
        edgeEffect.setSize(measuredWidth, getMeasuredHeight());
    }

    private final void A0e() {
        this.A00 = new JB(new C1681Iv(this));
    }

    private final void A0f() {
        this.A0Z = null;
        this.A0c = null;
        this.A0b = null;
        this.A0a = null;
    }

    private final void A0g() {
        int iA06 = this.A01.A06();
        for (int i = 0; i < iA06; i++) {
            ((C2646ix) this.A01.A0A(i).getLayoutParams()).A01 = true;
        }
        this.A0r.A0N();
    }

    private final void A0h() {
        int iA06 = this.A01.A06();
        for (int i = 0; i < iA06; i++) {
            AbstractC2663jE abstractC2663jEA0F = A0F(this.A01.A0A(i));
            if (abstractC2663jEA0F != null && !abstractC2663jEA0F.A0s()) {
                abstractC2663jEA0F.A0e(6);
            }
        }
        A0g();
        this.A0r.A0O();
    }

    private final void A0i() {
        int iA06 = this.A01.A06();
        for (int i = 0; i < iA06; i++) {
            AbstractC2663jE abstractC2663jEA0F = A0F(this.A01.A0A(i));
            if (!abstractC2663jEA0F.A0s()) {
                abstractC2663jEA0F.A0c();
            }
        }
    }

    private void A0j(float f, float f2, float f3, float f4) {
        boolean z = false;
        if (f2 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            A0b();
            AbstractC2600iB.A00(this.A0a, (-f2) / getWidth(), 1.0f - (f3 / getHeight()));
            z = true;
        } else if (f2 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            A0c();
            AbstractC2600iB.A00(this.A0b, f2 / getWidth(), f3 / getHeight());
            z = true;
        }
        if (f4 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            A0d();
            AbstractC2600iB.A00(this.A0c, (-f4) / getHeight(), f / getWidth());
            z = true;
        } else if (f4 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            A0a();
            AbstractC2600iB.A00(this.A0Z, f4 / getHeight(), 1.0f - (f / getWidth()));
            z = true;
        }
        if (z || f2 != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || f4 != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            AbstractC2565hb.A07(this);
        }
    }

    private final void A0k(int i) {
        AbstractC2645iw abstractC2645iw = this.A06;
        if (this.A0i != null) {
            this.A0i.A0P(this, i);
        }
        List<AbstractC2650j1> list = this.A0m;
        String[] strArr = A19;
        if (strArr[2].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A19;
        strArr2[2] = "mB2qLC";
        strArr2[7] = "mQXIqdAaLius";
        if (list != null) {
            for (int size = this.A0m.size() - 1; size >= 0; size--) {
                this.A0m.get(size).A0P(this, i);
            }
        }
    }

    private final void A0l(int i, int i2, Interpolator interpolator) {
        if (this.A06 == null) {
            Log.e(A0I(1423, 12, 90), A0I(977, 97, 85));
            return;
        }
        boolean z = this.A0I;
        if (A19[1].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[2] = "pqK8Y9";
        strArr[7] = "UiASdGbGWO9v";
        if (z) {
            return;
        }
        if (!this.A06.A2v()) {
            i = 0;
        }
        if (!this.A06.A2w()) {
            i2 = 0;
        }
        if (i != 0 || i2 != 0) {
            this.A08.A0D(i, i2, interpolator);
        }
    }

    private void A0m(long j, AbstractC2663jE abstractC2663jE, AbstractC2663jE abstractC2663jE2) {
        int iA05 = this.A01.A05();
        for (int i = 0; i < iA05; i++) {
            AbstractC2663jE abstractC2663jEA0F = A0F(this.A01.A09(i));
            if (abstractC2663jEA0F != abstractC2663jE && A0C(abstractC2663jEA0F) == j) {
                AbstractC2633ik abstractC2633ik = this.A04;
                String strA0I = A0I(1, 17, 65);
                if (abstractC2633ik != null && this.A04.A0O()) {
                    throw new IllegalStateException(A0I(1749, Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR_VALUE, 56) + abstractC2663jEA0F + strA0I + abstractC2663jE + A1L());
                }
                throw new IllegalStateException(A0I(1561, 188, 77) + abstractC2663jEA0F + strA0I + abstractC2663jE + A1L());
            }
        }
        Log.e(A0I(1423, 12, 90), A0I(1255, 111, 94) + abstractC2663jE2 + A0I(18, 41, 39) + abstractC2663jE + A1L());
    }

    private void A0n(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        int pointerId = motionEvent.getPointerId(actionIndex);
        int actionIndex2 = this.A0V;
        if (pointerId != actionIndex2) {
            return;
        }
        int i = actionIndex == 0 ? 1 : 0;
        int actionIndex3 = motionEvent.getPointerId(i);
        this.A0V = actionIndex3;
        int actionIndex4 = (int) (motionEvent.getX(i) + 0.5f);
        this.A0S = actionIndex4;
        this.A0Q = actionIndex4;
        int actionIndex5 = (int) (motionEvent.getY(i) + 0.5f);
        this.A0T = actionIndex5;
        this.A0R = actionIndex5;
    }

    public static void A0o(View view, Rect rect) {
        C2646ix c2646ix = (C2646ix) view.getLayoutParams();
        Rect rect2 = c2646ix.A03;
        rect.set((view.getLeft() - rect2.left) - c2646ix.leftMargin, (view.getTop() - rect2.top) - c2646ix.topMargin, view.getRight() + rect2.right + c2646ix.rightMargin, view.getBottom() + rect2.bottom + c2646ix.bottomMargin);
    }

    private void A0p(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.A0p.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams focusedLayoutParams = view3.getLayoutParams();
        if (focusedLayoutParams instanceof C2646ix) {
            C2646ix c2646ix = (C2646ix) focusedLayoutParams;
            if (!c2646ix.A01) {
                Rect insets = c2646ix.A03;
                this.A0p.left -= insets.left;
                this.A0p.right += insets.right;
                this.A0p.top -= insets.top;
                this.A0p.bottom += insets.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.A0p);
            offsetRectIntoDescendantCoords(view, this.A0p);
        }
        this.A06.A35(this, view, this.A0p, !this.A0D, view2 == null);
    }

    private void A0q(AbstractC2633ik abstractC2633ik, boolean z, boolean z2) {
        if (this.A04 != null) {
            AbstractC2633ik abstractC2633ik2 = this.A04;
            C1677Ir c1677Ir = this.A11;
            String[] strArr = A19;
            if (strArr[2].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A19;
            strArr2[6] = "W0We85FJJqvSsXa60a6gd4EA7hDdiGkp";
            strArr2[4] = "7sp9VzUFxAlBM78ItapDbGKr6NkpOVCZ";
            abstractC2633ik2.A0J(c1677Ir);
            this.A04.A0N(this);
        }
        if (!z || z2) {
            A1R();
        }
        this.A00.A0I();
        AbstractC2633ik abstractC2633ik3 = this.A04;
        this.A04 = abstractC2633ik;
        if (abstractC2633ik != null) {
            abstractC2633ik.A0I(this.A11);
        }
        AbstractC2645iw abstractC2645iw = this.A06;
        C2653j4 c2653j4 = this.A0r;
        AbstractC2633ik oldAdapter = this.A04;
        c2653j4.A0Z(abstractC2633ik3, oldAdapter, z);
        this.A0s.A0D = true;
        A1T();
    }

    private final void A0r(AbstractC2642it abstractC2642it, int i) {
        if (this.A06 != null) {
            this.A06.A2p(A0I(294, 53, 24));
        }
        if (this.A0v.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            ArrayList<AbstractC2642it> arrayList = this.A0v;
            if (A19[1].length() != 32) {
                throw new RuntimeException();
            }
            A19[1] = "csPuyufcMVSbd4QNytjq4rBIum7WhxYp";
            arrayList.add(abstractC2642it);
        } else {
            this.A0v.add(i, abstractC2642it);
        }
        A0g();
        requestLayout();
    }

    private void A0s(AbstractC2663jE abstractC2663jE) {
        View view = abstractC2663jE.A0H;
        boolean z = view.getParent() == this;
        this.A0r.A0d(A1K(view));
        if (abstractC2663jE.A0p()) {
            C2609iK c2609iK = this.A01;
            String[] strArr = A19;
            if (strArr[3].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A19;
            strArr2[6] = "yAMck033yUmsKAwrNaBuaPdrYuAtD8a4";
            strArr2[4] = "2F1g5meBaFaT8Ughfaz4Efd5BOFwzFG2";
            c2609iK.A0H(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z) {
            this.A01.A0J(view, true);
        } else {
            this.A01.A0E(view);
        }
    }

    public static void A0t(AbstractC2663jE abstractC2663jE) {
        if (abstractC2663jE.A09 != null) {
            WeakReference<C7O> weakReference = abstractC2663jE.A09;
            if (A19[1].length() != 32) {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[6] = "Lp0Vudgnjyr9htx58aJuOXSG6zR0Rms0";
            strArr[4] = "QnOoNSP4qihOpTYseackLt73SA9jbFjz";
            C7O c7o = weakReference.get();
            while (c7o != null) {
                View item = abstractC2663jE.A0H;
                if (c7o == item) {
                    return;
                }
                Object parent = c7o.getParent();
                if (parent instanceof View) {
                    c7o = (View) parent;
                } else {
                    c7o = null;
                }
            }
            abstractC2663jE.A09 = null;
        }
    }

    private void A0u(AbstractC2663jE abstractC2663jE, AbstractC2663jE abstractC2663jE2, C2640ir c2640ir, C2640ir c2640ir2, boolean z, boolean z2) {
        abstractC2663jE.A0k(false);
        if (z) {
            A0s(abstractC2663jE);
        }
        if (abstractC2663jE != abstractC2663jE2) {
            if (z2) {
                A0s(abstractC2663jE2);
            }
            abstractC2663jE.A06 = abstractC2663jE2;
            A0s(abstractC2663jE);
            this.A0r.A0d(abstractC2663jE);
            abstractC2663jE2.A0k(false);
            abstractC2663jE2.A07 = abstractC2663jE;
        }
        if (this.A05.A0R(abstractC2663jE, abstractC2663jE2, c2640ir, c2640ir2)) {
            A1Q();
        }
    }

    private void A0y(int[] iArr) {
        int iA05 = this.A01.A05();
        if (iA05 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int maxPositionPreLayout = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int minPositionPreLayout = Integer.MIN_VALUE;
        for (int i = 0; i < iA05; i++) {
            AbstractC2663jE abstractC2663jEA0F = A0F(this.A01.A09(i));
            if (!abstractC2663jEA0F.A0s()) {
                int count = abstractC2663jEA0F.A0T();
                if (count < maxPositionPreLayout) {
                    maxPositionPreLayout = count;
                }
                if (count > minPositionPreLayout) {
                    minPositionPreLayout = count;
                }
            }
        }
        iArr[0] = maxPositionPreLayout;
        iArr[1] = minPositionPreLayout;
    }

    private boolean A0z() {
        int iA05 = this.A01.A05();
        for (int i = 0; i < iA05; i++) {
            AbstractC2663jE abstractC2663jEA0F = A0F(this.A01.A09(i));
            if (abstractC2663jEA0F != null && !abstractC2663jEA0F.A0s() && abstractC2663jEA0F.A0q()) {
                return true;
            }
        }
        return false;
    }

    private boolean A10() {
        return this.A05 != null && this.A06.A2x();
    }

    private boolean A12(int i, int i2) {
        A0y(this.A14);
        return (this.A14[0] == i && this.A14[1] == i2) ? false : true;
    }

    private final boolean A13(int i, int i2) {
        if (this.A06 == null) {
            Log.e(A0I(1423, 12, 90), A0I(IronSourceError.ERROR_NT_LOAD_PLACEMENT_CAPPED, 89, 69));
            return false;
        }
        if (this.A0I) {
            return false;
        }
        boolean zA2v = this.A06.A2v();
        boolean canScroll = this.A06.A2w();
        if (!zA2v || Math.abs(i) < this.A0y) {
            i = 0;
        }
        if (!canScroll || Math.abs(i2) < this.A0y) {
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return false;
        }
        boolean canScrollHorizontal = dispatchNestedPreFling(i, i2);
        if (!canScrollHorizontal) {
            boolean canScrollVertical = zA2v || canScroll;
            dispatchNestedFling(i, i2, canScrollVertical);
            if (this.A0g != null) {
                boolean canScrollHorizontal2 = this.A0g.A0B(i, i2);
                if (canScrollHorizontal2) {
                    return true;
                }
            }
            if (canScrollVertical) {
                int i3 = 0;
                if (zA2v) {
                    i3 = 0 | 1;
                }
                if (canScroll) {
                    i3 |= 2;
                }
                A21(i3, 1);
                int nestedScrollAxis = -this.A0x;
                int iMax = Math.max(nestedScrollAxis, Math.min(i, this.A0x));
                int nestedScrollAxis2 = -this.A0x;
                this.A08.A09(iMax, Math.max(nestedScrollAxis2, Math.min(i2, this.A0x)));
                return true;
            }
        }
        return false;
    }

    private final boolean A14(int i, int i2, MotionEvent motionEvent) {
        int unconsumedY = 0;
        int consumedX = 0;
        int iA1g = 0;
        int unconsumedX = 0;
        A1M();
        if (this.A04 != null) {
            A1N();
            A1O();
            AbstractC2527gy.A01(A0I(1414, 9, 79));
            A1q(this.A0s);
            if (i != 0) {
                iA1g = this.A06.A1g(i, this.A0r, this.A0s);
                unconsumedY = i - iA1g;
            }
            if (i2 != 0) {
                unconsumedX = this.A06.A1h(i2, this.A0r, this.A0s);
                consumedX = i2 - unconsumedX;
            }
            AbstractC2527gy.A00();
            A1S();
            A1P();
            A1w(false);
        }
        if (!this.A0v.isEmpty()) {
            invalidate();
        }
        if (A22(iA1g, unconsumedX, unconsumedY, consumedX, this.A17, 0)) {
            this.A0S -= this.A17[0];
            this.A0T -= this.A17[1];
            if (motionEvent != null) {
                motionEvent.offsetLocation(this.A17[0], this.A17[1]);
            }
            int[] iArr = this.A15;
            int i3 = iArr[0] + this.A17[0];
            String[] strArr = A19;
            if (strArr[6].charAt(17) != strArr[4].charAt(17)) {
                throw new RuntimeException();
            }
            A19[1] = "TzjapWGLjdNwrlMHhQTvw0KTjubTnl9R";
            iArr[0] = i3;
            int[] iArr2 = this.A15;
            iArr2[1] = iArr2[1] + this.A17[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null && !AbstractC2545hH.A00(motionEvent, 8194)) {
                float x = motionEvent.getX();
                float f = unconsumedY;
                float y = motionEvent.getY();
                float f2 = consumedX;
                if (A19[1].length() != 32) {
                    throw new RuntimeException();
                }
                A19[1] = "Rb7Wd2rB1Bk4FJnk1H23iqiZozoKDKpI";
                A0j(x, f, y, f2);
            }
            A1d(i, i2);
        }
        if (iA1g != 0 || unconsumedX != 0) {
            A1f(iA1g, unconsumedX);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (iA1g == 0 && unconsumedX == 0) ? false : true;
    }

    private boolean A15(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (0 != 0) {
            if (action == 0) {
                this.A0h = null;
            } else {
                if (action == 3 || action == 1) {
                    this.A0h = null;
                }
                return true;
            }
        }
        if (action != 0) {
            int action2 = this.A13.size();
            if (0 < action2) {
                this.A13.get(0);
                throw new NullPointerException(A0I(2012, 21, 78));
            }
            return false;
        }
        return false;
    }

    private boolean A16(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.A0h = null;
        }
        int action2 = this.A13.size();
        if (0 < action2) {
            this.A13.get(0);
            throw new NullPointerException(A0I(2012, 21, 78));
        }
        return false;
    }

    private boolean A17(View view, View view2, int i) {
        int absHorizontal;
        if (view2 == null || view2 == this) {
            return false;
        }
        if (view == null) {
            return true;
        }
        if (i == 2 || i == 1) {
            boolean z = this.A06.A1X() == 1;
            boolean rtl = i == 2;
            if (rtl ^ z) {
                absHorizontal = 66;
            } else {
                absHorizontal = 17;
            }
            if (A18(view, view2, absHorizontal)) {
                return true;
            }
            if (i == 2) {
                return A18(view, view2, Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR_VALUE);
            }
            return A18(view, view2, 33);
        }
        return A18(view, view2, i);
    }

    private boolean A18(View view, View view2, int i) {
        this.A0p.set(0, 0, view.getWidth(), view.getHeight());
        this.A0z.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.A0p);
        offsetDescendantRectToMyCoords(view2, this.A0z);
        switch (i) {
            case 17:
                return (this.A0p.right > this.A0z.right || this.A0p.left >= this.A0z.right) && this.A0p.left > this.A0z.left;
            case 33:
                return (this.A0p.bottom > this.A0z.bottom || this.A0p.top >= this.A0z.bottom) && this.A0p.top > this.A0z.top;
            case 66:
                int i2 = this.A0p.left;
                String[] strArr = A19;
                if (strArr[2].length() == strArr[7].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A19;
                strArr2[3] = "H3chOpt4vkJfacRirYduge";
                strArr2[0] = "3wUmDedSMI";
                return (i2 < this.A0z.left || this.A0p.right <= this.A0z.left) && this.A0p.right < this.A0z.right;
            case MRAID_DOWNLOAD_JS_ERROR_VALUE:
                return (this.A0p.top < this.A0z.top || this.A0p.bottom <= this.A0z.top) && this.A0p.bottom < this.A0z.bottom;
            default:
                throw new IllegalArgumentException(A0I(1897, 37, 18) + i + A1L());
        }
    }

    private final boolean A19(AccessibilityEvent accessibilityEvent) {
        if (A1z()) {
            int iA00 = 0;
            if (accessibilityEvent != null) {
                iA00 = AbstractC2583hu.A00(accessibilityEvent);
            }
            if (iA00 == 0) {
                iA00 = 0;
            }
            int type = this.A0P;
            this.A0P = type | iA00;
            return true;
        }
        return false;
    }

    public final int A1C(View view) {
        AbstractC2663jE holder = A0F(view);
        if (holder != null) {
            return holder.A0R();
        }
        return -1;
    }

    public final int A1D(View view) {
        AbstractC2663jE holder = A0F(view);
        if (holder != null) {
            return holder.A0T();
        }
        return -1;
    }

    public final int A1E(AbstractC2663jE abstractC2663jE) {
        if (!abstractC2663jE.A0v(IronSourceError.ERROR_PLACEMENT_CAPPED) && abstractC2663jE.A0l()) {
            return this.A00.A0E(abstractC2663jE.A03);
        }
        if (A19[5].charAt(2) != 'Y') {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[2] = "S0wUd1";
        strArr[7] = "zF1SY7WsjbFG";
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
    
        if (r4 != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.Rect A1F(android.view.View r9) {
        /*
            r8 = this;
            android.view.ViewGroup$LayoutParams r3 = r9.getLayoutParams()
            com.facebook.ads.redexgen.X.ix r3 = (com.facebook.ads.redexgen.X.C2646ix) r3
            boolean r0 = r3.A01
            if (r0 != 0) goto Ld
            android.graphics.Rect r0 = r3.A03
            return r0
        Ld:
            com.facebook.ads.redexgen.X.jB r0 = r8.A0s
            boolean r0 = r0.A07()
            if (r0 == 0) goto L44
            boolean r0 = r3.A01()
            if (r0 != 0) goto L41
            boolean r4 = r3.A03()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7O.A19
            r0 = 5
            r1 = r1[r0]
            r0 = 2
            char r1 = r1.charAt(r0)
            r0 = 89
            if (r1 == r0) goto L33
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L33:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            java.lang.String r1 = "R8RZJpxNRYJLmE7KdaIYiTLeL7r3Y7bS"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "BRrnvNJfpVwihHaR5a5gEdBxu0vp26qH"
            r0 = 4
            r2[r0] = r1
            if (r4 == 0) goto L44
        L41:
            android.graphics.Rect r0 = r3.A03
            return r0
        L44:
            android.graphics.Rect r6 = r3.A03
            r5 = 0
            r6.set(r5, r5, r5, r5)
            java.util.ArrayList<com.facebook.ads.redexgen.X.it> r0 = r8.A0v
            int r4 = r0.size()
            r2 = 0
        L51:
            if (r2 >= r4) goto L8e
            android.graphics.Rect r0 = r8.A0p
            r0.set(r5, r5, r5, r5)
            java.util.ArrayList<com.facebook.ads.redexgen.X.it> r0 = r8.A0v
            java.lang.Object r7 = r0.get(r2)
            com.facebook.ads.redexgen.X.it r7 = (com.facebook.ads.redexgen.X.AbstractC2642it) r7
            android.graphics.Rect r1 = r8.A0p
            com.facebook.ads.redexgen.X.jB r0 = r8.A0s
            r7.A02(r1, r9, r8, r0)
            int r1 = r6.left
            android.graphics.Rect r0 = r8.A0p
            int r0 = r0.left
            int r1 = r1 + r0
            r6.left = r1
            int r1 = r6.top
            android.graphics.Rect r0 = r8.A0p
            int r0 = r0.top
            int r1 = r1 + r0
            r6.top = r1
            int r1 = r6.right
            android.graphics.Rect r0 = r8.A0p
            int r0 = r0.right
            int r1 = r1 + r0
            r6.right = r1
            int r1 = r6.bottom
            android.graphics.Rect r0 = r8.A0p
            int r0 = r0.bottom
            int r1 = r1 + r0
            r6.bottom = r1
            int r2 = r2 + 1
            goto L51
        L8e:
            r3.A01 = r5
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.A1F(android.view.View):android.graphics.Rect");
    }

    public final View A1G(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public final AbstractC2663jE A1H(int i) {
        if (this.A0C) {
            return null;
        }
        int iA06 = this.A01.A06();
        AbstractC2663jE hidden = null;
        for (int i2 = 0; i2 < iA06; i2++) {
            AbstractC2663jE abstractC2663jEA0F = A0F(this.A01.A0A(i2));
            if (abstractC2663jEA0F != null && !abstractC2663jEA0F.A0n()) {
                int childCount = A1E(abstractC2663jEA0F);
                if (childCount != i) {
                    continue;
                } else if (this.A01.A0K(abstractC2663jEA0F.A0H)) {
                    hidden = abstractC2663jEA0F;
                } else {
                    return abstractC2663jEA0F;
                }
            }
        }
        return hidden;
    }

    public final AbstractC2663jE A1I(int i) {
        return A1J(i, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.AbstractC2663jE A1J(int r9, boolean r10) {
        /*
            r8 = this;
            com.facebook.ads.redexgen.X.iK r0 = r8.A01
            int r6 = r0.A06()
            r1 = 0
            r5 = 0
        L8:
            if (r5 >= r6) goto L5f
            com.facebook.ads.redexgen.X.iK r0 = r8.A01
            android.view.View r0 = r0.A0A(r5)
            com.facebook.ads.redexgen.X.jE r4 = A0F(r0)
            if (r4 == 0) goto L22
            boolean r0 = r4.A0n()
            if (r0 != 0) goto L22
            if (r10 == 0) goto L25
            int r0 = r4.A03
            if (r0 == r9) goto L2c
        L22:
            int r5 = r5 + 1
            goto L8
        L25:
            int r0 = r4.A0T()
            if (r0 == r9) goto L2c
            goto L22
        L2c:
            com.facebook.ads.redexgen.X.iK r7 = r8.A01
            android.view.View r3 = r4.A0H
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            r0 = 6
            r1 = r2[r0]
            r0 = 4
            r2 = r2[r0]
            r0 = 17
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L4a
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L4a:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            java.lang.String r1 = "j0pgcyCAMmCuelBFBaEKhw82BLWYdvOX"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "bxiKg4TrHtXBSvyNTaSo7IOhyUGlGIW4"
            r0 = 4
            r2[r0] = r1
            boolean r0 = r7.A0K(r3)
            if (r0 == 0) goto L5e
            r1 = r4
            goto L22
        L5e:
            return r4
        L5f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.A1J(int, boolean):com.facebook.ads.redexgen.X.jE");
    }

    public final AbstractC2663jE A1K(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return A0F(view);
        }
        throw new IllegalArgumentException(A0I(1879, 5, 81) + view + A0I(98, 26, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE) + this);
    }

    public final String A1L() {
        return A0I(0, 1, 65) + super.toString() + A0I(169, 10, 82) + this.A04 + A0I(189, 9, 71) + this.A06 + A0I(179, 10, 10) + getContext();
    }

    public final void A1M() {
        boolean z = this.A0D;
        String strA0I = A0I(1366, 17, 86);
        if (!z || this.A0C) {
            AbstractC2527gy.A01(strA0I);
            A0Y();
            AbstractC2527gy.A00();
            return;
        }
        if (!this.A00.A0J()) {
            return;
        }
        if (this.A00.A0L(4)) {
            boolean zA0L = this.A00.A0L(11);
            if (A19[5].charAt(2) != 'Y') {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[6] = "e84NaKOnn7I9zpRn8aasqpcOMtbsg9mo";
            strArr[4] = "iuEMZhfSQYSf3gJ7Ya7A7FZe771rQXKi";
            if (!zA0L) {
                AbstractC2527gy.A01(A0I(1394, 20, 75));
                A1N();
                A1O();
                this.A00.A0H();
                if (!this.A0J) {
                    if (A0z()) {
                        A0Y();
                    } else {
                        this.A00.A0F();
                    }
                }
                A1w(true);
                A1P();
                AbstractC2527gy.A00();
                return;
            }
        }
        if (this.A00.A0J()) {
            AbstractC2527gy.A01(strA0I);
            A0Y();
            AbstractC2527gy.A00();
        }
    }

    public final void A1N() {
        this.A0O++;
        if (this.A0O == 1 && !this.A0I) {
            this.A0J = false;
        }
    }

    public final void A1O() {
        this.A0U++;
    }

    public final void A1P() {
        A1v(true);
    }

    public final void A1Q() {
        if (!this.A0K && this.A0F) {
            AbstractC2565hb.A0D(this, this.A0k);
            this.A0K = true;
        }
    }

    public final void A1R() {
        if (this.A05 != null) {
            this.A05.A0H();
        }
        if (this.A06 != null) {
            this.A06.A2Y(this.A0r);
            this.A06.A2W(this.A0r);
        }
        this.A0r.A0Q();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A1S() {
        /*
            r9 = this;
            com.facebook.ads.redexgen.X.iK r0 = r9.A01
            int r8 = r0.A05()
            r7 = 0
        L7:
            if (r7 >= r8) goto L65
            com.facebook.ads.redexgen.X.iK r0 = r9.A01
            android.view.View r2 = r0.A09(r7)
            com.facebook.ads.redexgen.X.jE r1 = r9.A1K(r2)
            if (r1 == 0) goto L5c
            com.facebook.ads.redexgen.X.jE r0 = r1.A07
            if (r0 == 0) goto L5c
            com.facebook.ads.redexgen.X.jE r0 = r1.A07
            android.view.View r6 = r0.A0H
            int r5 = r2.getLeft()
            int r4 = r2.getTop()
            int r0 = r6.getLeft()
            if (r5 != r0) goto L31
            int r0 = r6.getTop()
            if (r4 == r0) goto L5c
        L31:
            int r3 = r6.getWidth()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            r0 = 2
            r1 = r2[r0]
            r0 = 7
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L5f
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            java.lang.String r1 = "Uubm7UlJXcXPQblsDCbwus"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "kvvVMTFBun"
            r0 = 0
            r2[r0] = r1
            int r3 = r3 + r5
            int r0 = r6.getHeight()
            int r0 = r0 + r4
            r6.layout(r5, r4, r3, r0)
        L5c:
            int r7 = r7 + 1
            goto L7
        L5f:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L65:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.A1S():void");
    }

    public final void A1T() {
        this.A0C = true;
        A0h();
    }

    public final void A1U() {
        if (this.A0m != null) {
            this.A0m.clear();
        }
    }

    public final void A1V() {
        setScrollState(0);
        A0V();
    }

    public final void A1W(int i) {
        if (this.A06 == null) {
            return;
        }
        this.A06.A2B(i);
        awakenScrollBars();
        if (A19[5].charAt(2) != 'Y') {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[2] = "0QEBPr";
        strArr[7] = "MYIDRbA0xlXg";
    }

    public final void A1X(int i) {
        int iA05 = this.A01.A05();
        for (int i2 = 0; i2 < iA05; i2++) {
            this.A01.A09(i2).offsetLeftAndRight(i);
        }
    }

    public final void A1Y(int i) {
        int iA05 = this.A01.A05();
        for (int i2 = 0; i2 < iA05; i2++) {
            this.A01.A09(i2).offsetTopAndBottom(i);
        }
    }

    public final void A1Z(int i) {
        if (this.A0I) {
            return;
        }
        A1V();
        if (this.A06 == null) {
            String strA0I = A0I(1423, 12, 90);
            String[] strArr = A19;
            if (strArr[6].charAt(17) != strArr[4].charAt(17)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A19;
            strArr2[6] = "bKq2dxkRCeugdKx9Xa6GvrcP2g1fh08B";
            strArr2[4] = "kU2aPHyT0THRQATybaGwdbwAtHBBu9qc";
            Log.e(strA0I, A0I(793, 94, 71));
            return;
        }
        this.A06.A2B(i);
        awakenScrollBars();
    }

    public final void A1a(int i) {
        if (this.A0I) {
            return;
        }
        AbstractC2645iw abstractC2645iw = this.A06;
        String[] strArr = A19;
        if (strArr[3].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A19;
        strArr2[6] = "WdHf0lV4QkHUB6jMNa4hJVyYAF4qnaeC";
        strArr2[4] = "5gGhKJie0DBDDFfkhapEv4fZOrT4upMj";
        if (abstractC2645iw != null) {
            this.A06.A2o(this, this.A0s, i);
            return;
        }
        String[] strArr3 = A19;
        if (strArr3[6].charAt(17) != strArr3[4].charAt(17)) {
            String[] strArr4 = A19;
            strArr4[6] = "tnW8WJDd0hyAXA7zkanproBVQy0r1bMC";
            strArr4[4] = "4Fp0w8uFB0Hn5lDXLaIQvmhL07bdVyXH";
            Log.e(A0I(1423, 10, 14), A0I(EventTypeExtended.EVENT_TYPE_EXTENDED_AD_UNIT_IMPRESSION_VALUE, 46, 18));
            return;
        }
        String[] strArr5 = A19;
        strArr5[3] = "z3A7CLBHtBtrAEYqxn9jPo";
        strArr5[0] = "loKczzo2gT";
        Log.e(A0I(1423, 12, 90), A0I(977, 97, 85));
    }

    public final void A1b(int i) {
        getScrollingChildHelper().A03(i);
    }

    public final void A1c(int i, int i2) {
        if (i < 0) {
            A0b();
            this.A0a.onAbsorb(-i);
        } else if (i > 0) {
            A0c();
            this.A0b.onAbsorb(i);
        }
        if (i2 < 0) {
            A0d();
            if (A19[5].charAt(2) != 'Y') {
                throw new RuntimeException();
            }
            A19[1] = "gyhAwDIMjNJoK3bJ2ki6wxmL7XFPannX";
            this.A0c.onAbsorb(-i2);
        } else if (i2 > 0) {
            A0a();
            this.A0Z.onAbsorb(i2);
        }
        if (i != 0 || i2 != 0) {
            AbstractC2565hb.A07(this);
        }
    }

    public final void A1d(int i, int i2) {
        boolean zIsFinished = false;
        if (this.A0a != null) {
            boolean needsInvalidate = this.A0a.isFinished();
            if (!needsInvalidate && i > 0) {
                this.A0a.onRelease();
                zIsFinished = this.A0a.isFinished();
            }
        }
        if (this.A0b != null) {
            boolean needsInvalidate2 = this.A0b.isFinished();
            if (!needsInvalidate2 && i < 0) {
                this.A0b.onRelease();
                boolean needsInvalidate3 = this.A0b.isFinished();
                zIsFinished |= needsInvalidate3;
            }
        }
        if (this.A0c != null) {
            boolean needsInvalidate4 = this.A0c.isFinished();
            if (!needsInvalidate4 && i2 > 0) {
                EdgeEffect edgeEffect = this.A0c;
                if (A19[1].length() != 32) {
                    throw new RuntimeException();
                }
                String[] strArr = A19;
                strArr[3] = "CkvbraPTkuNHVjG6c5toq1";
                strArr[0] = "anwNoWvWLV";
                edgeEffect.onRelease();
                boolean needsInvalidate5 = this.A0c.isFinished();
                zIsFinished |= needsInvalidate5;
            }
        }
        if (this.A0Z != null) {
            boolean needsInvalidate6 = this.A0Z.isFinished();
            if (!needsInvalidate6 && i2 < 0) {
                this.A0Z.onRelease();
                boolean needsInvalidate7 = this.A0Z.isFinished();
                zIsFinished |= needsInvalidate7;
            }
        }
        if (zIsFinished) {
            AbstractC2565hb.A07(this);
        }
    }

    public final void A1e(int i, int i2) {
        int iA0x = AbstractC2645iw.A0x(i, getPaddingLeft() + getPaddingRight(), AbstractC2565hb.A03(this));
        int paddingTop = getPaddingTop();
        int width = getPaddingBottom();
        int i3 = paddingTop + width;
        int width2 = AbstractC2565hb.A02(this);
        setMeasuredDimension(iA0x, AbstractC2645iw.A0x(i2, i3, width2));
    }

    public final void A1f(int i, int i2) {
        this.A0N++;
        int scrollY = getScrollX();
        int scrollX = getScrollY();
        onScrollChanged(scrollY, scrollX, scrollY, scrollX);
        if (this.A0i != null) {
            AbstractC2650j1 abstractC2650j1 = this.A0i;
            if (A19[5].charAt(2) != 89) {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[3] = "TUQYCncggzPoC9am3CD4xS";
            strArr[0] = "5ReBiiKNLm";
            abstractC2650j1.A0Q(this, i, i2);
        }
        if (this.A0m != null) {
            int size = this.A0m.size() - 1;
            while (size >= 0) {
                this.A0m.get(size).A0Q(this, i, i2);
                if (A19[1].length() != 32) {
                    size--;
                } else {
                    String[] strArr2 = A19;
                    strArr2[3] = "fStj6fnOv6bW6jot34QgdO";
                    strArr2[0] = "C6zDSGp1EH";
                    size--;
                }
            }
        }
        this.A0N--;
    }

    public final void A1g(int i, int i2) {
        int iA06 = this.A01.A06();
        for (int i3 = 0; i3 < iA06; i3++) {
            AbstractC2663jE abstractC2663jEA0F = A0F(this.A01.A0A(i3));
            if (abstractC2663jEA0F != null && !abstractC2663jEA0F.A0s()) {
                int i4 = abstractC2663jEA0F.A03;
                int i5 = A19[5].charAt(2);
                if (i5 != 89) {
                    throw new RuntimeException();
                }
                A19[1] = "WfIl2QLxhpsV1cZ5bwDa0wyCBTSIuEWm";
                if (i4 >= i) {
                    abstractC2663jEA0F.A0h(i2, false);
                    this.A0s.A0D = true;
                }
            }
        }
        this.A0r.A0S(i, i2);
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A1h(int r12, int r13) {
        /*
            r11 = this;
            com.facebook.ads.redexgen.X.iK r0 = r11.A01
            int r8 = r0.A06()
            if (r12 >= r13) goto L7c
            r7 = r12
            r6 = r13
            r5 = -1
        Lb:
            r4 = 0
        Lc:
            if (r4 >= r8) goto L80
            com.facebook.ads.redexgen.X.iK r0 = r11.A01
            android.view.View r0 = r0.A0A(r4)
            com.facebook.ads.redexgen.X.jE r3 = A0F(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7O.A19
            r0 = 5
            r1 = r1[r0]
            r0 = 2
            char r1 = r1.charAt(r0)
            r0 = 89
            if (r1 == r0) goto L2c
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L2c:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            java.lang.String r1 = "SA2Eyd"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "XMtlHmP9rGs3"
            r0 = 7
            r2[r0] = r1
            if (r3 == 0) goto L42
            int r0 = r3.A03
            if (r0 < r7) goto L42
            int r0 = r3.A03
            if (r0 <= r6) goto L45
        L42:
            int r4 = r4 + 1
            goto Lc
        L45:
            int r10 = r3.A03
            r9 = 0
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            r0 = 6
            r1 = r2[r0]
            r0 = 4
            r2 = r2[r0]
            r0 = 17
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L69
            if (r10 != r12) goto L78
        L5e:
            int r0 = r13 - r12
            r3.A0h(r0, r9)
        L63:
            com.facebook.ads.redexgen.X.jB r1 = r11.A0s
            r0 = 1
            r1.A0D = r0
            goto L42
        L69:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            java.lang.String r1 = "BcaezuMb6aDfAWKozakh45MfYrs0kuIc"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "5erwLY6dW1OUzDMynaZgWLcHWlHtC3ze"
            r0 = 4
            r2[r0] = r1
            if (r10 != r12) goto L78
            goto L5e
        L78:
            r3.A0h(r5, r9)
            goto L63
        L7c:
            r7 = r13
            r6 = r12
            r5 = 1
            goto Lb
        L80:
            com.facebook.ads.redexgen.X.j4 r0 = r11.A0r
            r0.A0T(r12, r13)
            r11.requestLayout()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.A1h(int, int):void");
    }

    public final void A1i(int i, int i2) {
        A0l(i, i2, null);
    }

    public final void A1j(int i, int i2, Object obj) {
        int iA06 = this.A01.A06();
        int i3 = i + i2;
        for (int i4 = 0; i4 < iA06; i4++) {
            View viewA0A = this.A01.A0A(i4);
            AbstractC2663jE abstractC2663jEA0F = A0F(viewA0A);
            if (abstractC2663jEA0F != null && !abstractC2663jEA0F.A0s()) {
                int i5 = abstractC2663jEA0F.A03;
                int positionEnd = A19[1].length();
                if (positionEnd != 32) {
                    throw new RuntimeException();
                }
                String[] strArr = A19;
                strArr[2] = "87XYbE";
                strArr[7] = "GV1T0vfadOcw";
                if (i5 >= i) {
                    int childCount = abstractC2663jEA0F.A03;
                    if (childCount < i3) {
                        abstractC2663jEA0F.A0e(2);
                        abstractC2663jEA0F.A0j(obj);
                        ((C2646ix) viewA0A.getLayoutParams()).A01 = true;
                    }
                }
            }
        }
        this.A0r.A0U(i, i2);
    }

    public final void A1k(int i, int i2, boolean z) {
        int i3 = i + i2;
        int iA06 = this.A01.A06();
        for (int i4 = 0; i4 < iA06; i4++) {
            AbstractC2663jE abstractC2663jEA0F = A0F(this.A01.A0A(i4));
            if (abstractC2663jEA0F != null && !abstractC2663jEA0F.A0s()) {
                int positionEnd = abstractC2663jEA0F.A03;
                if (positionEnd >= i3) {
                    int positionEnd2 = -i2;
                    abstractC2663jEA0F.A0h(positionEnd2, z);
                    this.A0s.A0D = true;
                } else {
                    int positionEnd3 = abstractC2663jEA0F.A03;
                    if (positionEnd3 >= i) {
                        int childCount = i - 1;
                        int positionEnd4 = -i2;
                        abstractC2663jEA0F.A0g(childCount, positionEnd4, z);
                        int childCount2 = A19[1].length();
                        if (childCount2 != 32) {
                            throw new RuntimeException();
                        }
                        String[] strArr = A19;
                        strArr[2] = "dcjb0S";
                        strArr[7] = "CcIDXd599Ygw";
                        this.A0s.A0D = true;
                    } else {
                        continue;
                    }
                }
            }
        }
        this.A0r.A0V(i, i2, z);
        requestLayout();
    }

    public final void A1l(View view) {
        int cnt;
        A0F(view);
        AbstractC2633ik abstractC2633ik = this.A04;
        List<RecyclerView.OnChildAttachStateChangeListener> list = this.A0l;
        if (A19[5].charAt(2) != 'Y') {
            throw new RuntimeException();
        }
        A19[5] = "qDYnzfveQxKkK3O0opuqDthRtcgsED9a";
        if (list != null && this.A0l.size() - 1 >= 0) {
            this.A0l.get(cnt);
            throw new NullPointerException(A0I(1934, 27, 20));
        }
    }

    public final void A1m(View view) {
        int cnt;
        A0F(view);
        AbstractC2633ik abstractC2633ik = this.A04;
        if (this.A0l != null && this.A0l.size() - 1 >= 0) {
            this.A0l.get(cnt);
            throw new NullPointerException(A0I(1961, 29, 26));
        }
    }

    public final void A1n(AbstractC2642it abstractC2642it) {
        A0r(abstractC2642it, -1);
    }

    public final void A1o(AbstractC2650j1 abstractC2650j1) {
        if (this.A0m == null) {
            this.A0m = new ArrayList();
        }
        this.A0m.add(abstractC2650j1);
    }

    public final void A1p(AbstractC2650j1 abstractC2650j1) {
        if (this.A0m != null) {
            this.A0m.remove(abstractC2650j1);
        }
    }

    public final void A1q(C2660jB c2660jB) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.A08.A01;
            c2660jB.A06 = overScroller.getFinalX() - overScroller.getCurrX();
            c2660jB.A07 = overScroller.getFinalY() - overScroller.getCurrY();
        } else {
            c2660jB.A06 = 0;
            c2660jB.A07 = 0;
        }
    }

    public final void A1r(AbstractC2663jE abstractC2663jE, C2640ir c2640ir) {
        abstractC2663jE.A0f(0, 8192);
        if (this.A0s.A0E && abstractC2663jE.A0q() && !abstractC2663jE.A0n() && !abstractC2663jE.A0s()) {
            this.A0t.A08(A0C(abstractC2663jE), abstractC2663jE);
        }
        this.A0t.A0F(abstractC2663jE, c2640ir);
    }

    public final void A1s(AbstractC2663jE abstractC2663jE, C2640ir c2640ir, C2640ir c2640ir2) {
        abstractC2663jE.A0k(false);
        if (this.A05.A0O(abstractC2663jE, c2640ir, c2640ir2)) {
            A1Q();
        }
    }

    public final void A1t(AbstractC2663jE abstractC2663jE, C2640ir c2640ir, C2640ir c2640ir2) {
        A0s(abstractC2663jE);
        abstractC2663jE.A0k(false);
        if (this.A05.A0P(abstractC2663jE, c2640ir, c2640ir2)) {
            A1Q();
        }
    }

    public final void A1u(String str) {
        if (A1z()) {
            if (str == null) {
                throw new IllegalStateException(A0I(LevelPlayAdError.ERROR_CODE_LOAD_FAILED_ALREADY_CALLED, 77, 76) + A1L());
            }
            throw new IllegalStateException(str);
        }
        if (this.A0N > 0) {
            Log.w(A0I(1423, 12, 90), A0I(347, 280, 49), new IllegalStateException(A0I(0, 0, 62) + A1L()));
        }
    }

    public final void A1v(boolean z) {
        this.A0U--;
        if (this.A0U < 1) {
            this.A0U = 0;
            if (z) {
                A0K();
                if (A19[1].length() != 32) {
                    throw new RuntimeException();
                }
                String[] strArr = A19;
                strArr[6] = "clcdgLago0QzUCUQna9RqUvMnx3zufId";
                strArr[4] = "dGTmnJIudyc2xKqsUaVYnInX4VXDIHXZ";
                A0Z();
            }
        }
    }

    public final void A1w(boolean z) {
        if (this.A0O < 1) {
            this.A0O = 1;
        }
        if (!z) {
            this.A0J = false;
        }
        if (this.A0O == 1) {
            if (z && this.A0J && !this.A0I && this.A06 != null && this.A04 != null) {
                A0Y();
            }
            if (!this.A0I) {
                this.A0J = false;
            }
        }
        this.A0O--;
    }

    public final boolean A1x() {
        if (this.A10 != null) {
            AccessibilityManager accessibilityManager = this.A10;
            String[] strArr = A19;
            if (strArr[6].charAt(17) != strArr[4].charAt(17)) {
                throw new RuntimeException();
            }
            A19[5] = "qqYNnQooq1iBe19qNxONRBmcR9jcXf5d";
            if (accessibilityManager.isEnabled()) {
                return true;
            }
        }
        return false;
    }

    public final boolean A1y() {
        return !this.A0D || this.A0C || this.A00.A0J();
    }

    public final boolean A1z() {
        return this.A0U > 0;
    }

    public final boolean A20(int i) {
        return getScrollingChildHelper().A09(i);
    }

    public final boolean A21(int i, int i2) {
        return getScrollingChildHelper().A0B(i, i2);
    }

    public final boolean A22(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return getScrollingChildHelper().A0D(i, i2, i3, i4, iArr, i5);
    }

    public final boolean A23(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().A0F(i, i2, iArr, iArr2, i3);
    }

    public final boolean A24(View view) {
        A1N();
        boolean zA0L = this.A01.A0L(view);
        if (zA0L) {
            AbstractC2663jE viewHolder = A0F(view);
            this.A0r.A0d(viewHolder);
            this.A0r.A0c(viewHolder);
        }
        boolean removed = !zA0L;
        A1w(removed);
        if (A19[1].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[3] = "2BT72D7B0XXfHPWJs3DbS8";
        strArr[0] = "RgGvPpmRJD";
        return zA0L;
    }

    public final boolean A25(AbstractC2663jE abstractC2663jE) {
        return this.A05 == null || this.A05.A0S(abstractC2663jE, abstractC2663jE.A0W());
    }

    public final boolean A26(AbstractC2663jE abstractC2663jE, int i) {
        if (A1z()) {
            abstractC2663jE.A02 = i;
            this.A0w.add(abstractC2663jE);
            return false;
        }
        AbstractC2565hb.A09(abstractC2663jE.A0H, i);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (this.A06 != null) {
            boolean zA37 = this.A06.A37(this, arrayList, i, i2);
            if (A19[5].charAt(2) != 'Y') {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[2] = "qzNrCd";
            strArr[7] = "bMAkXN6Kp1Dd";
            if (zA37) {
                return;
            }
        }
        super.addFocusables(arrayList, i, i2);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C2646ix) && this.A06.A33((C2646ix) layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        if (this.A06 != null && this.A06.A2v()) {
            return this.A06.A1r(this.A0s);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        if (this.A06 != null && this.A06.A2v()) {
            return this.A06.A1s(this.A0s);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        if (this.A06 == null) {
            return 0;
        }
        AbstractC2645iw abstractC2645iw = this.A06;
        if (A19[5].charAt(2) != 'Y') {
            throw new RuntimeException();
        }
        A19[1] = "GzwOa56ahdwGOmec9vc3XIggLcxaXOnz";
        if (abstractC2645iw.A2v()) {
            return this.A06.A1t(this.A0s);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        if (this.A06 == null) {
            return 0;
        }
        AbstractC2645iw abstractC2645iw = this.A06;
        String[] strArr = A19;
        if (strArr[3].length() != strArr[0].length()) {
            String[] strArr2 = A19;
            strArr2[2] = "Wsbuah";
            strArr2[7] = "lDl9g1VSjrmk";
            if (!abstractC2645iw.A2w()) {
                return 0;
            }
            AbstractC2645iw abstractC2645iw2 = this.A06;
            String[] strArr3 = A19;
            if (strArr3[3].length() != strArr3[0].length()) {
                A19[5] = "sfYwg45p3roym5legx720iFNlg07mmUN";
                return abstractC2645iw2.A1u(this.A0s);
            }
        }
        throw new RuntimeException();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        if (this.A06 != null && this.A06.A2w()) {
            return this.A06.A1v(this.A0s);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        if (this.A06 == null || !this.A06.A2w()) {
            return 0;
        }
        AbstractC2645iw abstractC2645iw = this.A06;
        if (A19[5].charAt(2) != 'Y') {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[6] = "NPPquBudgt65Kfhzva46C14iIBYgw5ng";
        strArr[4] = "gzaMlk0wrsXS1BjbnaI8sjsGlzE0u55w";
        return abstractC2645iw.A1w(this.A0s);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().A08(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().A07(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().A0E(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().A0C(i, i2, i3, i4, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
        dispatchThawSelfOnly(container);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray<Parcelable> container) {
        dispatchFreezeSelfOnly(container);
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x015f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void draw(android.graphics.Canvas r8) {
        /*
            Method dump skipped, instruction units count: 372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.draw(android.graphics.Canvas):void");
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00a2  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View focusSearch(android.view.View r9, int r10) {
        /*
            Method dump skipped, instruction units count: 259
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.focusSearch(android.view.View, int):android.view.View");
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        if (this.A06 != null) {
            return this.A06.A24();
        }
        throw new IllegalStateException(A0I(1528, 33, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE) + A1L());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        if (this.A06 != null) {
            return this.A06.A25(getContext(), attributeSet);
        }
        throw new IllegalStateException(A0I(1528, 33, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE) + A1L());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (this.A06 != null) {
            C2646ix c2646ixA26 = this.A06.A26(layoutParams);
            if (A19[1].length() != 32) {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[3] = "4uZ9QAUZcjEo06EXHPHPN1";
            strArr[0] = "ePNmh1lbEA";
            return c2646ixA26;
        }
        throw new IllegalStateException(A0I(1528, 33, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE) + A1L());
    }

    public AbstractC2633ik getAdapter() {
        return this.A04;
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.A06 != null) {
            int iA1S = this.A06.A1S();
            if (A19[1].length() != 32) {
                throw new RuntimeException();
            }
            A19[1] = "WUntfQVcja1qFzj09nDprclvV6sI7lKs";
            return iA1S;
        }
        return super.getBaseline();
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        if (0 == 0) {
            return super.getChildDrawingOrder(i, i2);
        }
        throw new NullPointerException(A0I(1990, 22, 35));
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.A0B;
    }

    public C1663Ic getCompatAccessibilityDelegate() {
        return this.A09;
    }

    public AbstractC2641is getItemAnimator() {
        return this.A05;
    }

    public AbstractC2645iw getLayoutManager() {
        return this.A06;
    }

    public int getMaxFlingVelocity() {
        return this.A0x;
    }

    public int getMinFlingVelocity() {
        return this.A0y;
    }

    public long getNanoTime() {
        if (A1E) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC2648iz getOnFlingListener() {
        return this.A0g;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.A0o;
    }

    public C2652j3 getRecycledViewPool() {
        return this.A0r.A0I();
    }

    public int getScrollState() {
        return this.A0W;
    }

    private C2547hJ getScrollingChildHelper() {
        if (this.A0d == null) {
            this.A0d = new C2547hJ(this);
        }
        return this.A0d;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().A05();
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.A0F;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().A06();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A0U = 0;
        boolean z = true;
        this.A0F = true;
        if (!this.A0D || isLayoutRequested()) {
            z = false;
        }
        this.A0D = z;
        if (this.A06 != null) {
            this.A06.A2f(this);
        }
        this.A0K = false;
        if (A1E) {
            this.A03 = RunnableC2622iX.A07.get();
            if (this.A03 == null) {
                this.A03 = new RunnableC2622iX();
                Display displayA04 = AbstractC2565hb.A04(this);
                float f = 60.0f;
                if (!isInEditMode() && displayA04 != null) {
                    float refreshRate = displayA04.getRefreshRate();
                    String[] strArr = A19;
                    if (strArr[2].length() == strArr[7].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A19;
                    strArr2[3] = "HPKMSTrO6rgllPECADdom7";
                    strArr2[0] = "yPSN9KqlOS";
                    if (refreshRate >= 30.0f) {
                        f = refreshRate;
                    }
                }
                this.A03.A00 = (long) (1.0E9f / f);
                RunnableC2622iX.A07.set(this.A03);
            }
            this.A03.A09(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.A05 != null) {
            this.A05.A0H();
        }
        A1V();
        this.A0F = false;
        if (this.A06 != null) {
            this.A06.A2n(this, this.A0r);
        }
        this.A0w.clear();
        removeCallbacks(this.A0k);
        this.A0t.A07();
        if (A1E && this.A03 != null) {
            this.A03.A0A(this);
            this.A03 = null;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.A0v.size();
        for (int i = 0; i < size; i++) {
            this.A0v.get(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b0  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onGenericMotionEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            com.facebook.ads.redexgen.X.iw r0 = r6.A06
            r5 = 0
            if (r0 != 0) goto L6
            return r5
        L6:
            boolean r3 = r6.A0I
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7O.A19
            r0 = 1
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 32
            if (r1 == r0) goto L1b
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L1b:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            java.lang.String r1 = "hfCCVZ"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "6Rxn0wTGDCgs"
            r0 = 7
            r2[r0] = r1
            if (r3 == 0) goto L2a
            return r5
        L2a:
            int r1 = r7.getAction()
            r0 = 8
            if (r1 != r0) goto L6b
            int r0 = r7.getSource()
            r0 = r0 & 2
            if (r0 == 0) goto L70
            com.facebook.ads.redexgen.X.iw r0 = r6.A06
            boolean r0 = r0.A2w()
            if (r0 == 0) goto L6e
            r0 = 9
            float r0 = r7.getAxisValue(r0)
            float r0 = -r0
        L49:
            com.facebook.ads.redexgen.X.iw r1 = r6.A06
            boolean r1 = r1.A2v()
            if (r1 == 0) goto L6c
            r1 = 10
            float r1 = r7.getAxisValue(r1)
        L57:
            r3 = 0
            int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r2 != 0) goto L60
            int r2 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r2 == 0) goto L6b
        L60:
            float r2 = r6.A0L
            float r2 = r2 * r1
            int r2 = (int) r2
            float r1 = r6.A0M
            float r1 = r1 * r0
            int r0 = (int) r1
            r6.A14(r2, r0, r7)
        L6b:
            return r5
        L6c:
            r1 = 0
            goto L57
        L6e:
            r0 = 0
            goto L49
        L70:
            int r4 = r7.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7O.A19
            r0 = 5
            r1 = r1[r0]
            r0 = 2
            char r1 = r1.charAt(r0)
            r0 = 89
            if (r1 == r0) goto L98
            r4 = r4 & r3
            if (r4 == 0) goto Lb0
        L87:
            r0 = 26
            float r1 = r7.getAxisValue(r0)
            com.facebook.ads.redexgen.X.iw r0 = r6.A06
            boolean r0 = r0.A2w()
            if (r0 == 0) goto La3
            float r0 = -r1
            r1 = 0
            goto L57
        L98:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            java.lang.String r1 = "SrYzqcFycO4E61WX0CCI79FBiQDWLxq8"
            r0 = 5
            r2[r0] = r1
            r4 = r4 & r3
            if (r4 == 0) goto Lb0
            goto L87
        La3:
            com.facebook.ads.redexgen.X.iw r0 = r6.A06
            boolean r0 = r0.A2v()
            if (r0 == 0) goto Lad
            r0 = 0
            goto L57
        Lad:
            r0 = 0
            r1 = 0
            goto L57
        Lb0:
            r0 = 0
            r1 = 0
            goto L57
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00f4 A[PHI: r1
      0x00f4: PHI (r1v16 int) = (r1v15 int), (r1v19 int) binds: [B:46:0x0129, B:33:0x00f2] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instruction units count: 450
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        AbstractC2527gy.A01(A0I(1383, 11, 82));
        A0Y();
        AbstractC2527gy.A00();
        this.A0D = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x010c, code lost:
    
        if (r4 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x010e, code lost:
    
        setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0119, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0126, code lost:
    
        if (r4 != false) goto L46;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instruction units count: 303
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (A1z()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof WrappedParcelable)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            classLoader = getContext().getClassLoader();
        }
        Parcelable state = ((WrappedParcelable) parcelable).unwrap(classLoader);
        if (!(state instanceof RecyclerView$SavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        this.A0j = (RecyclerView$SavedState) state;
        super.onRestoreInstanceState(this.A0j.A04());
        if (this.A06 != null && this.A0j.A00 != null) {
            this.A06.A2J(this.A0j.A00);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        RecyclerView$SavedState recyclerView$SavedState = new RecyclerView$SavedState(super.onSaveInstanceState());
        RecyclerView$SavedState state = this.A0j;
        if (state != null) {
            RecyclerView$SavedState state2 = this.A0j;
            recyclerView$SavedState.A05(state2);
        } else if (this.A06 != null) {
            recyclerView$SavedState.A00 = this.A06.A1x();
        } else {
            recyclerView$SavedState.A00 = null;
        }
        return new WrappedParcelable(recyclerView$SavedState);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3 || i2 != i4) {
            A0f();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x024a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r21) {
        /*
            Method dump skipped, instruction units count: 674
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        AbstractC2663jE abstractC2663jEA0F = A0F(view);
        if (abstractC2663jEA0F != null) {
            if (abstractC2663jEA0F.A0p()) {
                abstractC2663jEA0F.A0a();
            } else if (!abstractC2663jEA0F.A0s()) {
                throw new IllegalArgumentException(A0I(Sdk.SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE, 75, 37) + abstractC2663jEA0F + A1L());
            }
        }
        view.clearAnimation();
        A1m(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (!this.A06.A36(this, this.A0s, view, view2) && view2 != null) {
            A0p(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.A06.A34(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.A13.size();
        for (int i = 0; i < size; i++) {
            this.A13.get(i);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.A0O == 0 && !this.A0I) {
            super.requestLayout();
        } else {
            this.A0J = true;
        }
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        if (this.A06 == null) {
            Log.e(A0I(1423, 12, 90), A0I(887, 90, 75));
            return;
        }
        if (this.A0I) {
            return;
        }
        boolean zA2v = this.A06.A2v();
        boolean canScrollHorizontal = this.A06.A2w();
        if (zA2v || canScrollHorizontal) {
            if (!zA2v) {
                i = 0;
            }
            A14(i, canScrollHorizontal ? i2 : 0, null);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        Log.w(A0I(1423, 12, 90), A0I(1435, 93, 17));
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (A19(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(C1663Ic c1663Ic) {
        this.A09 = c1663Ic;
        AbstractC2565hb.A0B(this, this.A09);
    }

    public void setAdapter(AbstractC2633ik abstractC2633ik) {
        setLayoutFrozen(false);
        A0q(abstractC2633ik, false, true);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(InterfaceC2636in interfaceC2636in) {
        if (interfaceC2636in == null) {
            return;
        }
        this.A0e = interfaceC2636in;
        setChildrenDrawingOrderEnabled(0 != 0);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.A0B) {
            A0f();
        }
        this.A0B = z;
        super.setClipToPadding(z);
        if (this.A0D) {
            requestLayout();
        }
    }

    public void setHasFixedSize(boolean z) {
        this.A0E = z;
    }

    public void setItemAnimator(AbstractC2641is abstractC2641is) {
        if (this.A05 != null) {
            this.A05.A0H();
            this.A05.A0J(null);
        }
        this.A05 = abstractC2641is;
        if (this.A05 != null) {
            AbstractC2641is abstractC2641is2 = this.A05;
            InterfaceC2639iq interfaceC2639iq = this.A0f;
            if (A19[1].length() != 32) {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[3] = "lbql160khUomfa8gG92Y7q";
            strArr[0] = "AtGY6u7EZb";
            abstractC2641is2.A0J(interfaceC2639iq);
        }
    }

    public void setItemViewCacheSize(int i) {
        this.A0r.A0R(i);
    }

    public void setLayoutFrozen(boolean z) {
        if (z != this.A0I) {
            A1u(A0I(1074, 42, 50));
            if (!z) {
                this.A0I = false;
                if (this.A0J && this.A06 != null && this.A04 != null) {
                    requestLayout();
                }
                this.A0J = false;
                return;
            }
            long now = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(now, now, 3, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0));
            this.A0I = true;
            this.A0n = true;
            A1V();
        }
    }

    public void setLayoutManager(AbstractC2645iw abstractC2645iw) {
        if (abstractC2645iw == this.A06) {
            return;
        }
        A1V();
        if (this.A06 != null) {
            if (this.A05 != null) {
                this.A05.A0H();
            }
            this.A06.A2Y(this.A0r);
            this.A06.A2W(this.A0r);
            this.A0r.A0Q();
            if (this.A0F) {
                this.A06.A2n(this, this.A0r);
            }
            this.A06.A2h(null);
            this.A06 = null;
        } else {
            this.A0r.A0Q();
        }
        this.A01.A0B();
        this.A06 = abstractC2645iw;
        if (abstractC2645iw != null) {
            C7O c7o = abstractC2645iw.A03;
            if (A19[1].length() != 32) {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[6] = "5zwSvF43vthb6lIFeaOoDRJ244Dq07FI";
            strArr[4] = "COyIsU8he0MLuT7wFa9x9SZ5A7LzgdfA";
            if (c7o == null) {
                this.A06.A2h(this);
                if (this.A0F) {
                    this.A06.A2f(this);
                }
            } else {
                throw new IllegalArgumentException(A0I(e.a.i, 14, 40) + abstractC2645iw + A0I(59, 39, 9) + abstractC2645iw.A03.A1L());
            }
        }
        this.A0r.A0P();
        requestLayout();
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().A04(z);
    }

    public void setOnFlingListener(AbstractC2648iz abstractC2648iz) {
        this.A0g = abstractC2648iz;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC2650j1 abstractC2650j1) {
        this.A0i = abstractC2650j1;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.A0o = z;
    }

    public void setRecycledViewPool(C2652j3 c2652j3) {
        this.A0r.A0a(c2652j3);
    }

    public void setRecyclerListener(InterfaceC2654j5 interfaceC2654j5) {
        this.A07 = interfaceC2654j5;
    }

    public void setScrollState(int i) {
        if (i == this.A0W) {
            return;
        }
        this.A0W = i;
        if (i != 2) {
            A0V();
        }
        A0k(i);
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        switch (i) {
            case 0:
                break;
            case 1:
                this.A0X = viewConfiguration.getScaledPagingTouchSlop();
                return;
            default:
                Log.w(A0I(1423, 12, 90), A0I(2033, 47, 85) + i + A0I(198, 21, Sdk.SDKError.Reason.TPAT_ERROR_VALUE));
                break;
        }
        this.A0X = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(AbstractC2661jC abstractC2661jC) {
        this.A0r.A0b(abstractC2661jC);
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return getScrollingChildHelper().A0A(i);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().A02();
    }
}
