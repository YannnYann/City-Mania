package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.extractor.metadata.emsg.EventMessage;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.ironsource.mediationsdk.metadata.a;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public final class P8 implements InterfaceC2068Yv {
    public static byte[] A0Z;
    public static String[] A0a = {"GbdB0HkZ", "0khtInAcKEtI2jqch13P0eYGNFqXZuOY", "LZWX5ClLrF9P4vMBJaR9y172g", "yBv7loQvMt4jjHqTPWAs07zunhXrUzkj", "CewtKKSLldVQCYe9w4B9cNh5nQWxLZ8o", "bQpieFUvbpbEZwzL6H6u2AIw", "W8JFvx0mOk1lNAB4BQZLslHI", "OaMox1WIHJ4zdqOFJIN2Y0e4jTlHiKgk"};
    public static final InterfaceC2072Yz A0b;
    public static final VC A0c;
    public static final byte[] A0d;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;

    @MetaExoPlayerCustomization
    public long A0A;
    public long A0B;
    public long A0C;
    public C1769Mk A0D;
    public InterfaceC2069Yw A0E;
    public C2156aw A0F;
    public boolean A0G;
    public boolean A0H;
    public ZP[] A0I;
    public ZP[] A0J;
    public final int A0K;
    public final SparseArray<C2156aw> A0L;
    public final C1769Mk A0M;
    public final C1769Mk A0N;
    public final C1769Mk A0O;
    public final C1769Mk A0P;
    public final C1769Mk A0Q;
    public final C1777Ms A0R;
    public final ZP A0S;
    public final C2085Zm A0T;
    public final C2170bA A0U;
    public final ArrayDeque<PF> A0V;
    public final ArrayDeque<C2155av> A0W;
    public final List<VC> A0X;
    public final byte[] A0Y;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A01(C2156aw c2156aw, int i, int i2, C1769Mk c1769Mk, int i3) throws L9 {
        int i4 = i3;
        c1769Mk.A0f(8);
        int iA02 = AbstractC2140ag.A02(c1769Mk.A0C());
        C2170bA c2170bA = c2156aw.A05.A03;
        C2172bC c2172bC = c2156aw.A09;
        C2147an c2147an = (C2147an) N1.A0f(c2172bC.A06);
        c2172bC.A0C[i] = c1769Mk.A0L();
        c2172bC.A0E[i] = c2172bC.A04;
        if ((iA02 & 1) != 0) {
            long[] jArr = c2172bC.A0E;
            jArr[i] = jArr[i] + ((long) c1769Mk.A0C());
        }
        boolean z = (iA02 & 4) != 0;
        int iA0C = c2147an.A01;
        if (z) {
            iA0C = c1769Mk.A0C();
        }
        boolean z2 = (iA02 & 256) != 0;
        boolean z3 = (iA02 & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) != 0;
        boolean z4 = (iA02 & 1024) != 0;
        boolean z5 = (iA02 & a.o) != 0;
        boolean zA0a = A0a(c2170bA);
        String[] strArr = A0a;
        if (strArr[1].charAt(14) != strArr[3].charAt(14)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0a;
        strArr2[5] = "JgC1EGm7Fx9eG8uVateG9Vvp";
        strArr2[0] = "3mrAxl40";
        long j = zA0a ? ((long[]) N1.A0f(c2170bA.A09))[0] : 0L;
        int[] iArr = c2172bC.A0B;
        long[] jArr2 = c2172bC.A0D;
        boolean[] zArr = c2172bC.A0G;
        boolean z6 = c2170bA.A03 == 2 && (i2 & 1) != 0;
        int i5 = i4 + c2172bC.A0C[i];
        long j2 = c2170bA.A06;
        long j3 = c2172bC.A05;
        String[] strArr3 = A0a;
        if (strArr3[5].length() == strArr3[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr4 = A0a;
        strArr4[6] = "rkmmpZ5z24oQPil7tGTxxVdu";
        strArr4[2] = "cA6mphhzChqnYQJizy41QJzcg";
        while (i4 < i5) {
            int iA00 = A00(z2 ? c1769Mk.A0C() : c2147an.A00);
            int iA002 = A00(z3 ? c1769Mk.A0C() : c2147an.A03);
            int iA0C2 = z4 ? c1769Mk.A0C() : (i4 == 0 && z) ? iA0C : c2147an.A01;
            if (A0a[7].charAt(1) == 'U') {
                throw new RuntimeException();
            }
            String[] strArr5 = A0a;
            strArr5[6] = "Qlew9HE5j9b6KQPLMXRjUeH0";
            strArr5[2] = "OAcLMggQZDA2D6HaTGYPNrVeb";
            jArr2[i4] = N1.A0U((((long) (z5 ? c1769Mk.A0C() : 0)) + j3) - j, 1000000L, j2);
            if (!c2172bC.A09) {
                jArr2[i4] = jArr2[i4] + c2156aw.A05.A02;
            }
            iArr[i4] = iA002;
            zArr[i4] = ((iA0C2 >> 16) & 1) == 0 && (!z6 || i4 == 0);
            j3 += (long) iA00;
            i4++;
        }
        c2172bC.A05 = j3;
        return i5;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Pair<Long, QJ> A05(C1769Mk c1769Mk, long j) throws L9 {
        long jA0R;
        long jA0R2;
        c1769Mk.A0f(8);
        int iA03 = AbstractC2140ag.A03(c1769Mk.A0C());
        c1769Mk.A0g(4);
        long jA0Q = c1769Mk.A0Q();
        if (iA03 == 0) {
            jA0R = c1769Mk.A0Q();
            jA0R2 = j + c1769Mk.A0Q();
        } else {
            jA0R = c1769Mk.A0R();
            jA0R2 = j + c1769Mk.A0R();
        }
        long jA0U = N1.A0U(jA0R, 1000000L, jA0Q);
        c1769Mk.A0g(2);
        int iA0M = c1769Mk.A0M();
        int[] iArr = new int[iA0M];
        long[] jArr = new long[iA0M];
        long[] jArr2 = new long[iA0M];
        long[] jArr3 = new long[iA0M];
        long jA0U2 = jA0U;
        for (int i = 0; i < iA0M; i++) {
            int iA0C = c1769Mk.A0C();
            if ((Integer.MIN_VALUE & iA0C) != 0) {
                throw L9.A01(A0A(756, 28, 51), null);
            }
            long jA0Q2 = c1769Mk.A0Q();
            iArr[i] = Integer.MAX_VALUE & iA0C;
            jArr[i] = jA0R2;
            jArr3[i] = jA0U2;
            jA0R += jA0Q2;
            jA0U2 = N1.A0U(jA0R, 1000000L, jA0Q);
            jArr2[i] = jA0U2 - jArr3[i];
            c1769Mk.A0g(4);
            jA0R2 += (long) iArr[i];
        }
        return Pair.create(Long.valueOf(jA0U), new QJ(iArr, jArr, jArr2, jArr3));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2156aw A09(C1769Mk c1769Mk, SparseArray<C2156aw> sparseArray, boolean z) {
        c1769Mk.A0f(8);
        int iA02 = AbstractC2140ag.A02(c1769Mk.A0C());
        C2156aw c2156awValueAt = z ? sparseArray.valueAt(0) : sparseArray.get(c1769Mk.A0C());
        if (c2156awValueAt == null) {
            return null;
        }
        if ((iA02 & 1) != 0) {
            long jA0R = c1769Mk.A0R();
            c2156awValueAt.A09.A04 = jA0R;
            c2156awValueAt.A09.A03 = jA0R;
        }
        C2147an c2147an = c2156awValueAt.A04;
        int iA0C = (iA02 & 2) != 0 ? c1769Mk.A0C() - 1 : c2147an.A02;
        int i = iA02 & 8;
        String[] strArr = A0a;
        if (strArr[1].charAt(14) != strArr[3].charAt(14)) {
            throw new RuntimeException();
        }
        A0a[7] = "4ZukhBKNeObmYvJktZy4oUTI1PsvK2IF";
        c2156awValueAt.A09.A06 = new C2147an(iA0C, i != 0 ? c1769Mk.A0C() : c2147an.A00, (iA02 & 16) != 0 ? c1769Mk.A0C() : c2147an.A03, (iA02 & 32) != 0 ? c1769Mk.A0C() : c2147an.A01);
        return c2156awValueAt;
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Z, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0a;
            if (strArr[1].charAt(14) != strArr[3].charAt(14)) {
                throw new RuntimeException();
            }
            A0a[7] = "WWc1YgBpXnsK2CwFuCjgo1uYONcck7eP";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 10);
            i4++;
        }
    }

    public static void A0D() {
        A0Z = new byte[]{71, 14, 20, 71, 3, 14, 1, 1, 2, 21, 2, 9, 19, 71, 1, 21, 8, 10, 71, 1, 21, 6, 0, 10, 2, 9, 19, 71, 20, 6, 10, 23, 11, 2, 71, 4, 8, 18, 9, 19, 33, 104, 114, 33, 102, 115, 100, 96, 117, 100, 115, 33, 117, 105, 96, 111, 33, 103, 115, 96, 102, 108, 100, 111, 117, 33, 114, 96, 108, 113, 109, 100, 33, 98, 110, 116, 111, 117, 17, 36, 63, 61, 112, 35, 57, 42, 53, 112, 60, 53, 35, 35, 112, 36, 56, 49, 62, 112, 56, 53, 49, 52, 53, 34, 112, 60, 53, 62, 55, 36, 56, 112, 120, 37, 62, 35, 37, 32, 32, 63, 34, 36, 53, 52, 121, 126, 119, 92, 70, 64, 75, 18, 81, 93, 71, 92, 70, 18, 91, 92, 18, 65, 80, 85, 66, 18, 19, 15, 18, 3, 18, 26, 71, 92, 65, 71, 66, 66, 93, 64, 70, 87, 86, 27, 28, 59, 16, 10, 12, 7, 94, 29, 17, 11, 16, 10, 94, 23, 16, 94, 13, 25, 14, 26, 94, 95, 67, 94, 79, 94, 86, 11, 16, 13, 11, 14, 14, 17, 12, 10, 27, 26, 87, 80, 73, 125, 110, 104, 98, 106, 97, 123, 106, 107, 66, 127, 59, 74, 119, 123, 125, 110, 108, 123, 96, 125, 125, 83, 90, 91, 70, 93, 90, 83, 20, 90, 81, 83, 85, 64, 93, 66, 81, 20, 91, 82, 82, 71, 81, 64, 20, 64, 91, 20, 71, 85, 89, 68, 88, 81, 20, 80, 85, 64, 85, 26, 10, 45, 53, 34, 47, 42, 39, 99, 13, 2, 15, 99, 47, 38, 45, 36, 55, 43, 8, 33, 37, 34, 100, 37, 48, 43, 41, 100, 32, 33, 34, 45, 42, 33, 55, 100, 33, 60, 48, 33, 42, 32, 33, 32, 100, 37, 48, 43, 41, 100, 55, 45, 62, 33, 100, 108, 49, 42, 55, 49, 52, 52, 43, 54, 48, 33, 32, 109, 106, 125, 84, 80, 87, 17, 80, 69, 94, 92, 17, 70, 88, 69, 89, 17, 93, 84, 95, 86, 69, 89, 17, 15, 17, 3, 0, 5, 6, 5, 9, 2, 7, 5, 6, 17, 25, 68, 95, 66, 68, 65, 65, 94, 67, 69, 84, 85, 24, 31, 46, 7, 7, 18, 4, 21, 65, 21, 14, 65, 4, 15, 2, 19, 24, 17, 21, 8, 14, 15, 65, 5, 0, 21, 0, 65, 22, 0, 18, 65, 15, 4, 6, 0, 21, 8, 23, 4, 79, 39, 14, 14, 27, 13, 28, 72, 28, 7, 72, 13, 6, 12, 72, 7, 14, 72, 5, 12, 9, 28, 72, 31, 9, 27, 72, 6, 13, 15, 9, 28, 1, 30, 13, 70, 121, 64, 83, 68, 68, 95, 82, 95, 88, 81, 22, 98, 68, 87, 85, 93, 115, 88, 85, 68, 79, 70, 66, 95, 89, 88, 116, 89, 78, 22, 70, 87, 68, 87, 91, 83, 66, 83, 68, 69, 22, 95, 69, 22, 67, 88, 69, 67, 70, 70, 89, 68, 66, 83, 82, 24, 7, 53, 61, 46, 116, 39, 53, 57, 36, 56, 49, 116, 55, 59, 33, 58, 32, 116, 7, 49, 58, 55, 116, 39, 53, 57, 36, 56, 49, 116, 55, 59, 33, 58, 32, 116, 17, 41, 43, 50, 50, 39, 38, 98, 50, 49, 49, 42, 98, 35, 54, 45, 47, 98, 106, 36, 35, 43, 46, 39, 38, 98, 54, 45, 98, 39, 58, 54, 48, 35, 33, 54, 98, 55, 55, 43, 38, 107, 121, 65, 67, 90, 90, 67, 68, 77, 10, 75, 94, 69, 71, 10, 93, 67, 94, 66, 10, 70, 79, 68, 77, 94, 66, 10, 20, 10, 24, 27, 30, 29, 30, 18, 25, 28, 30, 29, 10, 2, 95, 68, 89, 95, 90, 90, 69, 88, 94, 79, 78, 3, 4, 7, 63, 61, 36, 36, 61, 58, 51, 116, 33, 58, 39, 33, 36, 36, 59, 38, 32, 49, 48, 116, 49, 57, 39, 51, 116, 34, 49, 38, 39, 61, 59, 58, 110, 116, 125, 70, 77, 80, 88, 77, 75, 92, 77, 76, 8, 69, 71, 71, 94, 8, 74, 71, 80, 6, 79, 116, 127, 98, 106, 127, 121, 110, 127, 126, 58, 116, 127, 125, 123, 110, 115, 108, 127, 58, 108, 123, 118, 111, 127, 32, 58, 18, 41, 34, 63, 55, 34, 36, 51, 34, 35, 103, 52, 38, 46, 40, 103, 34, 41, 51, 53, 62, 103, 36, 40, 50, 41, 51, 125, 103, 108, 87, 81, 88, 87, 93, 85, 92, 93, 25, 80, 87, 93, 80, 75, 92, 90, 77, 25, 75, 92, 95, 92, 75, 92, 87, 90, 92, 69, 114, 97, 122, 114, 113, 127, 118, 51, 127, 118, 125, 116, 103, 123, 51, 119, 118, 96, 112, 97, 122, 99, 103, 122, 124, 125, 51, 122, 125, 51, 96, 116, 99, 119, 51, 117, 124, 102, 125, 119, 51, 59, 102, 125, 96, 102, 99, 99, 124, 97, 103, 118, 119, 58, 88, 73, 73, 85, 80, 90, 88, 77, 80, 86, 87, 22, 65, 20, 92, 84, 74, 94, 85, 68, 68, 88, 93, 87, 85, 64, 93, 91, 90, 27, 76, 25, 89, 68, 0, 25, 66, 64, 64, 68, 80, 65, 76, 74, 10, 68, 70, 17, 21, 10, 7, 6, 12, 76, 11, 6, 21, 0, 7, 24, 21, 20, 30, 94, 28, 1, 69};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @MetaExoPlayerCustomization
    private void A0H(C1769Mk c1769Mk, Uri uri) {
        String str;
        String str2;
        long jA05;
        long jA0U;
        long jA0Q;
        if (this.A0J.length == 0) {
            return;
        }
        c1769Mk.A0f(8);
        int iA03 = AbstractC2140ag.A03(c1769Mk.A0C());
        long jA0U2 = -9223372036854775807L;
        switch (iA03) {
            case 0:
                str = (String) AbstractC1747Ln.A01(c1769Mk.A0U());
                str2 = (String) AbstractC1747Ln.A01(c1769Mk.A0U());
                long jA0Q2 = c1769Mk.A0Q();
                jA0U2 = N1.A0U(c1769Mk.A0Q(), 1000000L, jA0Q2);
                jA05 = this.A0C != -9223372036854775807L ? this.A0C + jA0U2 : -9223372036854775807L;
                jA0U = N1.A0U(c1769Mk.A0Q(), 1000L, jA0Q2);
                jA0Q = c1769Mk.A0Q();
                break;
            case 1:
                long jA0Q3 = c1769Mk.A0Q();
                long jA0R = c1769Mk.A0R();
                String[] strArr = A0a;
                if (strArr[5].length() == strArr[0].length()) {
                    throw new RuntimeException();
                }
                A0a[7] = "AYhjOe4t3139O6NlaflP6PY1FLDI2Tzg";
                jA05 = N1.A0U(jA0R, 1000000L, jA0Q3);
                jA0U = N1.A0U(c1769Mk.A0Q(), 1000L, jA0Q3);
                jA0Q = c1769Mk.A0Q();
                str = (String) AbstractC1747Ln.A01(c1769Mk.A0U());
                str2 = (String) AbstractC1747Ln.A01(c1769Mk.A0U());
                break;
                break;
            default:
                MV.A07(A0A(204, 22, 5), A0A(645, 35, 94) + iA03);
                return;
        }
        byte[] bArr = new byte[c1769Mk.A07()];
        c1769Mk.A0k(bArr, 0, c1769Mk.A07());
        int i = 0;
        C1769Mk c1769Mk2 = new C1769Mk(this.A0T.A01(new EventMessage(str, str2, jA0U, jA0Q, bArr)));
        int iA07 = c1769Mk2.A07();
        ZP[] zpArr = this.A0J;
        int length = zpArr.length;
        int i2 = 0;
        while (i2 < length) {
            ZP zp = zpArr[i2];
            c1769Mk2.A0f(i);
            zp.ALz(uri);
            zp.AK9(c1769Mk2, iA07);
            i2++;
            i = 0;
        }
        if (jA05 == -9223372036854775807L) {
            this.A0W.addLast(new C2155av(jA0U2, true, iA07));
            this.A03 += iA07;
            return;
        }
        if (!this.A0W.isEmpty()) {
            this.A0W.addLast(new C2155av(jA05, false, iA07));
            this.A03 += iA07;
            return;
        }
        if (this.A0R != null) {
            jA05 = this.A0R.A05(jA05);
        }
        if (this.A0A != -9223372036854775807L && !XL.A03(XQ.A1U)) {
            jA05 = this.A0A;
        }
        for (ZP zp2 : this.A0J) {
            zp2.AKC(jA05, 1, iA07, 0, null);
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0R(PF pf, SparseArray<C2156aw> sparseArray, boolean z, int i, byte[] bArr) throws L9 {
        C2156aw c2156awA09 = A09(((PE) AbstractC1747Ln.A01(pf.A03(1952868452))).A00, sparseArray, z);
        if (c2156awA09 == null) {
            return;
        }
        C2172bC c2172bC = c2156awA09.A09;
        long j = c2172bC.A05;
        boolean z2 = c2172bC.A09;
        c2156awA09.A08();
        c2156awA09.A06 = true;
        PE peA03 = pf.A03(1952867444);
        if (peA03 == null || (i & 2) != 0) {
            c2172bC.A05 = j;
            c2172bC.A09 = z2;
        } else {
            c2172bC.A05 = A03(peA03.A00);
            c2172bC.A09 = true;
        }
        A0S(pf, c2156awA09, i);
        C2171bB c2171bBA00 = c2156awA09.A05.A03.A00(((C2147an) AbstractC1747Ln.A01(c2172bC.A06)).A02);
        PE peA032 = pf.A03(1935763834);
        if (peA032 != null) {
            A0V((C2171bB) AbstractC1747Ln.A01(c2171bBA00), peA032.A00, c2172bC);
        }
        PE peA033 = pf.A03(1935763823);
        if (peA033 != null) {
            A0I(peA033.A00, c2172bC);
        }
        PE peA034 = pf.A03(1936027235);
        if (peA034 != null) {
            A0J(peA034.A00, c2172bC);
        }
        A0T(pf, c2171bBA00 != null ? c2171bBA00.A02 : null, c2172bC);
        int size = pf.A02.size();
        for (int i2 = 0; i2 < size; i2++) {
            PE pe = pf.A02.get(i2);
            if (((AbstractC2140ag) pe).A00 == 1970628964) {
                A0K(pe.A00, c2172bC, bArr);
            }
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A0T(com.facebook.ads.redexgen.X.PF r11, java.lang.String r12, com.facebook.ads.redexgen.X.C2172bC r13) throws com.facebook.ads.redexgen.X.L9 {
        /*
            Method dump skipped, instruction units count: 314
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P8.A0T(com.facebook.ads.redexgen.X.PF, java.lang.String, com.facebook.ads.redexgen.X.bC):void");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0V(C2171bB c2171bB, C1769Mk c1769Mk, C2172bC c2172bC) throws L9 {
        int i = c2171bB.A00;
        c1769Mk.A0f(8);
        if ((AbstractC2140ag.A02(c1769Mk.A0C()) & 1) == 1) {
            c1769Mk.A0g(8);
        }
        int iA0I = c1769Mk.A0I();
        int iA0L = c1769Mk.A0L();
        if (iA0L > c2172bC.A00) {
            throw L9.A01(A0A(EventTypeExtended.EVENT_TYPE_EXTENDED_IMPRESSION_OPPORTUNITY_VALUE, 18, 94) + iA0L + A0A(40, 38, 11) + c2172bC.A00, null);
        }
        int i2 = 0;
        if (iA0I == 0) {
            boolean[] zArr = c2172bC.A0F;
            for (int i3 = 0; i3 < iA0L; i3++) {
                int iA0I2 = c1769Mk.A0I();
                i2 += iA0I2;
                zArr[i3] = iA0I2 > i;
            }
        } else {
            boolean z = iA0I > i;
            i2 = 0 + (iA0I * iA0L);
            if (A0a[4].charAt(12) != 'C') {
                throw new RuntimeException();
            }
            A0a[7] = "3oPC3Onuzz53KD8lbAoghObbXCXpgcj5";
            Arrays.fill(c2172bC.A0F, 0, iA0L, z);
        }
        Arrays.fill(c2172bC.A0F, iA0L, c2172bC.A00, false);
        if (i2 > 0) {
            c2172bC.A02(i2);
        }
    }

    static {
        A0D();
        A0b = new InterfaceC2072Yz() { // from class: com.facebook.ads.redexgen.X.P9
            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final InterfaceC2068Yv[] A5w() {
                return P8.A0b();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final /* synthetic */ InterfaceC2068Yv[] A5x(Uri uri, Map map) {
                return AbstractC2071Yy.A01(this, uri, map);
            }
        };
        A0d = new byte[]{-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
        A0c = new C1714Ke().A11(A0A(839, 18, 51)).A14();
    }

    public P8() {
        this(0);
    }

    public P8(int i) {
        this(i, null);
    }

    public P8(int i, C1777Ms c1777Ms) {
        this(i, c1777Ms, null, Collections.emptyList());
    }

    public P8(int i, C1777Ms c1777Ms, C2170bA c2170bA, List<VC> list) {
        this(i, c1777Ms, c2170bA, list, null);
    }

    @MetaExoPlayerCustomization
    public P8(int i, C1777Ms c1777Ms, C2170bA c2170bA, List<VC> list, ZP zp) {
        this.A0A = -9223372036854775807L;
        this.A0K = i;
        this.A0R = c1777Ms;
        this.A0U = c2170bA;
        this.A0X = Collections.unmodifiableList(list);
        this.A0S = zp;
        this.A0T = new C2085Zm();
        this.A0M = new C1769Mk(16);
        this.A0P = new C1769Mk(ZE.A03);
        this.A0O = new C1769Mk(5);
        this.A0N = new C1769Mk();
        this.A0Y = new byte[16];
        this.A0Q = new C1769Mk(this.A0Y);
        this.A0V = new ArrayDeque<>();
        this.A0W = new ArrayDeque<>();
        this.A0L = new SparseArray<>();
        this.A08 = -9223372036854775807L;
        this.A0B = -9223372036854775807L;
        this.A0C = -9223372036854775807L;
        this.A0E = InterfaceC2069Yw.A00;
        this.A0J = new ZP[0];
        this.A0I = new ZP[0];
    }

    public static int A00(int i) throws L9 {
        if (i >= 0) {
            return i;
        }
        throw L9.A01(A0A(700, 27, 16) + i, null);
    }

    public static long A02(C1769Mk c1769Mk) {
        c1769Mk.A0f(8);
        int fullAtom = c1769Mk.A0C();
        return AbstractC2140ag.A03(fullAtom) == 0 ? c1769Mk.A0Q() : c1769Mk.A0R();
    }

    public static long A03(C1769Mk c1769Mk) {
        c1769Mk.A0f(8);
        int fullAtom = c1769Mk.A0C();
        int version = AbstractC2140ag.A03(fullAtom);
        return version == 1 ? c1769Mk.A0R() : c1769Mk.A0Q();
    }

    public static Pair<Integer, C2147an> A04(C1769Mk c1769Mk) {
        c1769Mk.A0f(12);
        int defaultSampleDescriptionIndex = c1769Mk.A0C();
        int trackId = c1769Mk.A0C();
        int defaultSampleFlags = c1769Mk.A0C();
        int defaultSampleSize = c1769Mk.A0C();
        int defaultSampleDuration = c1769Mk.A0C();
        return Pair.create(Integer.valueOf(defaultSampleDescriptionIndex), new C2147an(trackId - 1, defaultSampleFlags, defaultSampleSize, defaultSampleDuration));
    }

    public static DrmInitData A06(List<PE> list) {
        ArrayList arrayList = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            PE pe = list.get(i);
            int leafChildrenSize = ((AbstractC2140ag) pe).A00;
            if (leafChildrenSize == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArrA0l = pe.A00.A0l();
                UUID uuidA02 = AbstractC2163b3.A02(bArrA0l);
                if (uuidA02 == null) {
                    MV.A07(A0A(204, 22, 5), A0A(550, 42, 72));
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuidA02, A0A(897, 9, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE), bArrA0l));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private C2147an A07(SparseArray<C2147an> sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return (C2147an) AbstractC1747Ln.A01(sparseArray.get(i));
    }

    public static C2156aw A08(SparseArray<C2156aw> sparseArray) {
        C2156aw c2156aw = null;
        long sampleOffset = Long.MAX_VALUE;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            C2156aw c2156awValueAt = sparseArray.valueAt(i);
            if ((c2156awValueAt.A06 || c2156awValueAt.A01 != c2156awValueAt.A05.A01) && (!c2156awValueAt.A06 || c2156awValueAt.A02 != c2156awValueAt.A09.A01)) {
                long nextSampleOffset = c2156awValueAt.A05();
                if (nextSampleOffset < sampleOffset) {
                    c2156aw = c2156awValueAt;
                    sampleOffset = nextSampleOffset;
                }
            }
        }
        return c2156aw;
    }

    private void A0B() {
        this.A02 = 0;
        this.A00 = 0;
    }

    /* JADX WARN: Incorrect condition in loop: B:13:0x0054 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0C() {
        /*
            r7 = this;
            r5 = 100
            r0 = 2
            com.facebook.ads.redexgen.X.ZP[] r0 = new com.facebook.ads.redexgen.X.ZP[r0]
            r7.A0J = r0
            r6 = 0
            com.facebook.ads.redexgen.X.ZP r0 = r7.A0S
            if (r0 == 0) goto L15
            com.facebook.ads.redexgen.X.ZP[] r2 = r7.A0J
            int r1 = r6 + 1
            com.facebook.ads.redexgen.X.ZP r0 = r7.A0S
            r2[r6] = r0
            r6 = r1
        L15:
            int r0 = r7.A0K
            r0 = r0 & 4
            if (r0 == 0) goto L2c
            com.facebook.ads.redexgen.X.ZP[] r4 = r7.A0J
            int r3 = r6 + 1
            com.facebook.ads.redexgen.X.Yw r2 = r7.A0E
            int r1 = r5 + 1
            r0 = 5
            com.facebook.ads.redexgen.X.ZP r0 = r2.ALm(r5, r0)
            r4[r6] = r0
            r6 = r3
            r5 = r1
        L2c:
            com.facebook.ads.redexgen.X.ZP[] r0 = r7.A0J
            java.lang.Object[] r0 = com.facebook.ads.redexgen.X.N1.A1I(r0, r6)
            com.facebook.ads.redexgen.X.ZP[] r0 = (com.facebook.ads.redexgen.X.ZP[]) r0
            r7.A0J = r0
            com.facebook.ads.redexgen.X.ZP[] r4 = r7.A0J
            int r3 = r4.length
            r2 = 0
        L3a:
            if (r2 >= r3) goto L46
            r1 = r4[r2]
            com.facebook.ads.redexgen.X.VC r0 = com.facebook.ads.redexgen.X.P8.A0c
            r1.A7E(r0)
            int r2 = r2 + 1
            goto L3a
        L46:
            java.util.List<com.facebook.ads.redexgen.X.VC> r0 = r7.A0X
            int r0 = r0.size()
            com.facebook.ads.redexgen.X.ZP[] r0 = new com.facebook.ads.redexgen.X.ZP[r0]
            r7.A0I = r0
            r3 = 0
        L51:
            com.facebook.ads.redexgen.X.ZP[] r0 = r7.A0I
            int r0 = r0.length
            if (r3 >= r0) goto L72
            com.facebook.ads.redexgen.X.Yw r1 = r7.A0E
            int r2 = r5 + 1
            r0 = 3
            com.facebook.ads.redexgen.X.ZP r1 = r1.ALm(r5, r0)
            java.util.List<com.facebook.ads.redexgen.X.VC> r0 = r7.A0X
            java.lang.Object r0 = r0.get(r3)
            com.facebook.ads.redexgen.X.VC r0 = (com.facebook.ads.redexgen.X.VC) r0
            r1.A7E(r0)
            com.facebook.ads.redexgen.X.ZP[] r0 = r7.A0I
            r0[r3] = r1
            int r3 = r3 + 1
            r5 = r2
            goto L51
        L72:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P8.A0C():void");
    }

    private void A0E(long j) {
        while (!this.A0W.isEmpty()) {
            ArrayDeque<C2155av> arrayDeque = this.A0W;
            String[] strArr = A0a;
            if (strArr[6].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            A0a[7] = "vcbZdm4BuCEyLByA0jHTn0KQDqKFQQC3";
            C2155av c2155avRemoveFirst = arrayDeque.removeFirst();
            this.A03 -= c2155avRemoveFirst.A00;
            long jA05 = c2155avRemoveFirst.A01;
            if (c2155avRemoveFirst.A02) {
                jA05 += j;
            }
            if (this.A0R != null) {
                jA05 = this.A0R.A05(jA05);
            }
            for (ZP zp : this.A0J) {
                zp.AKC(jA05, 1, c2155avRemoveFirst.A00, this.A03, null);
            }
        }
    }

    private void A0F(long j) throws L9 {
        while (!this.A0V.isEmpty() && this.A0V.peek().A00 == j) {
            A0N(this.A0V.pop());
        }
        A0B();
    }

    public static void A0G(C1769Mk c1769Mk, int i, C2172bC c2172bC) throws L9 {
        c1769Mk.A0f(i + 8);
        int fullAtom = c1769Mk.A0C();
        int flags = AbstractC2140ag.A02(fullAtom);
        int fullAtom2 = flags & 1;
        if (fullAtom2 == 0) {
            int i2 = flags & 2;
            String[] strArr = A0a;
            String str = strArr[6];
            String str2 = strArr[2];
            int flags2 = str.length();
            int fullAtom3 = str2.length();
            if (flags2 != fullAtom3) {
                A0a[4] = "FJEFL3FZhdpiCewiJuk3IXLikQFq3Ola";
                boolean z = i2 != 0;
                int sampleCount = c1769Mk.A0L();
                if (sampleCount == 0) {
                    boolean[] zArr = c2172bC.A0F;
                    String[] strArr2 = A0a;
                    String str3 = strArr2[1];
                    String str4 = strArr2[3];
                    int flags3 = str3.charAt(14);
                    int fullAtom4 = str4.charAt(14);
                    if (flags3 == fullAtom4) {
                        A0a[4] = "7rjC7fsI9KwJCJwQh2i0OD7KPvouRdkX";
                        int fullAtom5 = c2172bC.A00;
                        Arrays.fill(zArr, 0, fullAtom5, false);
                        return;
                    }
                } else {
                    int fullAtom6 = c2172bC.A00;
                    if (sampleCount == fullAtom6) {
                        Arrays.fill(c2172bC.A0F, 0, sampleCount, z);
                        int fullAtom7 = c1769Mk.A07();
                        c2172bC.A02(fullAtom7);
                        c2172bC.A04(c1769Mk);
                        return;
                    }
                    StringBuilder sbAppend = new StringBuilder().append(A0A(532, 18, 94)).append(sampleCount).append(A0A(0, 40, 109));
                    int fullAtom8 = c2172bC.A00;
                    throw L9.A01(sbAppend.append(fullAtom8).toString(), null);
                }
            }
            throw new RuntimeException();
        }
        throw L9.A00(A0A(458, 56, 60));
    }

    public static void A0I(C1769Mk c1769Mk, C2172bC c2172bC) throws L9 {
        c1769Mk.A0f(8);
        int flags = c1769Mk.A0C();
        int fullAtom = AbstractC2140ag.A02(flags) & 1;
        if (fullAtom == 1) {
            c1769Mk.A0g(8);
        }
        int iA0L = c1769Mk.A0L();
        if (iA0L == 1) {
            int iA03 = AbstractC2140ag.A03(flags);
            long j = c2172bC.A03;
            String[] strArr = A0a;
            String str = strArr[6];
            String str2 = strArr[2];
            int fullAtom2 = str.length();
            int entryCount = str2.length();
            if (fullAtom2 == entryCount) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0a;
            strArr2[1] = "biHc1fQLnkoiM6qypOiDjo78xZay44TQ";
            strArr2[3] = "W1tS84fj2Nf0NuqlaagjTD68W6cPz2g7";
            c2172bC.A03 = j + (iA03 == 0 ? c1769Mk.A0Q() : c1769Mk.A0R());
            return;
        }
        throw L9.A01(A0A(727, 29, 77) + iA0L, null);
    }

    public static void A0J(C1769Mk c1769Mk, C2172bC c2172bC) throws L9 {
        A0G(c1769Mk, 0, c2172bC);
    }

    public static void A0K(C1769Mk c1769Mk, C2172bC c2172bC, byte[] bArr) throws L9 {
        c1769Mk.A0f(8);
        c1769Mk.A0k(bArr, 0, 16);
        if (!Arrays.equals(bArr, A0d)) {
            return;
        }
        A0G(c1769Mk, 16, c2172bC);
    }

    @MetaExoPlayerCustomization
    private void A0L(Q9 q9) throws IOException {
        int i = ((int) this.A07) - this.A00;
        C1769Mk c1769Mk = this.A0D;
        if (c1769Mk != null) {
            q9.readFully(c1769Mk.A0l(), 8, i);
            A0U(new PE(this.A01, c1769Mk), q9.A9Q(), q9.AA2());
        } else {
            q9.ALL(i);
        }
        A0F(q9.A9Q());
    }

    private void A0M(Q9 q9) throws IOException {
        C2156aw c2156awValueAt = null;
        long j = Long.MAX_VALUE;
        int size = this.A0L.size();
        for (int i = 0; i < size; i++) {
            C2156aw c2156awValueAt2 = this.A0L.valueAt(i);
            String[] strArr = A0a;
            if (strArr[6].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0a;
            strArr2[6] = "B45CYyguc15qhZ5veptBY4BW";
            strArr2[2] = "KOlmrZMESYKxeHHZ758A2mBdi";
            C2172bC c2172bC = c2156awValueAt2.A09;
            if (c2172bC.A0A && c2172bC.A03 < j) {
                j = c2172bC.A03;
                c2156awValueAt = this.A0L.valueAt(i);
            }
        }
        if (c2156awValueAt == null) {
            this.A02 = 3;
            return;
        }
        int iA9Q = (int) (j - q9.A9Q());
        if (iA9Q >= 0) {
            q9.ALL(iA9Q);
            c2156awValueAt.A09.A05(q9);
            return;
        }
        throw L9.A01(A0A(384, 39, 107), null);
    }

    private void A0N(PF pf) throws L9 {
        if (((AbstractC2140ag) pf).A00 == 1836019574) {
            A0P(pf);
        } else if (((AbstractC2140ag) pf).A00 == 1836019558) {
            A0O(pf);
        } else {
            if (this.A0V.isEmpty()) {
                return;
            }
            this.A0V.peek().A04(pf);
        }
    }

    private void A0O(PF pf) throws L9 {
        A0Q(pf, this.A0L, this.A0U != null, this.A0K, this.A0Y);
        DrmInitData drmInitDataA06 = A06(pf.A02);
        if (drmInitDataA06 != null) {
            SparseArray<C2156aw> sparseArray = this.A0L;
            String[] strArr = A0a;
            if (strArr[1].charAt(14) != strArr[3].charAt(14)) {
                throw new RuntimeException();
            }
            A0a[7] = "hcRTGMudGFHKKfZtNWKhzz7c0k3YpzB8";
            int size = sparseArray.size();
            for (int trackCount = 0; trackCount < size; trackCount++) {
                this.A0L.valueAt(trackCount).A0B(drmInitDataA06);
            }
        }
        if (this.A0B != -9223372036854775807L) {
            int size2 = this.A0L.size();
            for (int i = 0; i < size2; i++) {
                this.A0L.valueAt(i).A0A(this.A0B);
            }
            this.A0B = -9223372036854775807L;
        }
    }

    private void A0P(PF pf) throws L9 {
        AbstractC1747Ln.A0A(this.A0U == null, A0A(680, 20, 34));
        DrmInitData drmInitDataA06 = A06(pf.A02);
        PF pf2 = (PF) AbstractC1747Ln.A01(pf.A02(1836475768));
        SparseArray<C2147an> sparseArray = new SparseArray<>();
        long jA02 = -9223372036854775807L;
        int size = pf2.A02.size();
        for (int i = 0; i < size; i++) {
            PE pe = pf2.A02.get(i);
            if (((AbstractC2140ag) pe).A00 == 1953654136) {
                Pair<Integer, C2147an> pairA04 = A04(pe.A00);
                sparseArray.put(((Integer) pairA04.first).intValue(), (C2147an) pairA04.second);
            } else if (((AbstractC2140ag) pe).A00 == 1835362404) {
                jA02 = A02(pe.A00);
            }
        }
        List<C2173bD> listA0O = AbstractC2146am.A0O(pf, new Z6(), jA02, drmInitDataA06, (this.A0K & 16) != 0, false, new InterfaceC2023Wy() { // from class: com.facebook.ads.redexgen.X.PA
            @Override // com.facebook.ads.redexgen.X.InterfaceC2023Wy
            public final Object A4c(Object obj) {
                return this.A00.A0c((C2170bA) obj);
            }
        });
        int size2 = listA0O.size();
        if (this.A0L.size() == 0) {
            for (int i2 = 0; i2 < size2; i2++) {
                C2173bD c2173bD = listA0O.get(i2);
                C2170bA c2170bA = c2173bD.A03;
                this.A0L.put(c2170bA.A00, new C2156aw(this.A0E.ALm(i2, c2170bA.A03), c2173bD, A07(sparseArray, c2170bA.A00)));
                this.A08 = Math.max(this.A08, c2170bA.A04);
            }
            InterfaceC2069Yw interfaceC2069Yw = this.A0E;
            if (A0a[7].charAt(1) == 'U') {
                throw new RuntimeException();
            }
            String[] strArr = A0a;
            strArr[5] = "OrhQxg08UushiYwVaqK9LvBW";
            strArr[0] = "cRCSDWIC";
            interfaceC2069Yw.A6x();
            return;
        }
        AbstractC1747Ln.A08(this.A0L.size() == size2);
        for (int i3 = 0; i3 < size2; i3++) {
            C2173bD c2173bD2 = listA0O.get(i3);
            C2170bA c2170bA2 = c2173bD2.A03;
            this.A0L.get(c2170bA2.A00).A0C(c2173bD2, A07(sparseArray, c2170bA2.A00));
        }
    }

    public static void A0Q(PF pf, SparseArray<C2156aw> sparseArray, boolean z, int i, byte[] bArr) throws L9 {
        int size = pf.A01.size();
        for (int i2 = 0; i2 < size; i2++) {
            PF child = pf.A01.get(i2);
            int i3 = ((AbstractC2140ag) child).A00;
            if (i3 == 1953653094) {
                A0R(child, sparseArray, z, i, bArr);
            }
        }
    }

    public static void A0S(PF pf, C2156aw c2156aw, int i) throws L9 {
        int i2 = 0;
        int leafChildrenSize = 0;
        List<PE> list = pf.A02;
        int trunStartPosition = list.size();
        for (int i3 = 0; i3 < trunStartPosition; i3++) {
            PE pe = list.get(i3);
            int trunCount = ((AbstractC2140ag) pe).A00;
            if (trunCount == 1953658222) {
                C1769Mk c1769Mk = pe.A00;
                c1769Mk.A0f(12);
                int trunCount2 = c1769Mk.A0L();
                if (trunCount2 > 0) {
                    leafChildrenSize += trunCount2;
                    i2++;
                }
            }
        }
        c2156aw.A02 = 0;
        c2156aw.A00 = 0;
        c2156aw.A01 = 0;
        c2156aw.A09.A03(i2, leafChildrenSize);
        int i4 = 0;
        int trunCount3 = 0;
        for (int trunIndex = 0; trunIndex < trunStartPosition; trunIndex++) {
            PE pe2 = list.get(trunIndex);
            int totalSampleCount = ((AbstractC2140ag) pe2).A00;
            if (totalSampleCount == 1953658222) {
                trunCount3 = A01(c2156aw, i4, i, pe2.A00, trunCount3);
                i4++;
            }
        }
    }

    @MetaExoPlayerCustomization
    private void A0U(PE pe, long j, Uri uri) throws L9 {
        if (!this.A0V.isEmpty()) {
            this.A0V.peek().A05(pe);
            return;
        }
        if (((AbstractC2140ag) pe).A00 == 1936286840) {
            Pair<Long, QJ> pairA05 = A05(pe.A00, j);
            this.A0C = ((Long) pairA05.first).longValue();
            this.A0E.AKP((ZK) pairA05.second);
            this.A0G = true;
            return;
        }
        int i = ((AbstractC2140ag) pe).A00;
        if (A0a[7].charAt(1) == 'U') {
            throw new RuntimeException();
        }
        String[] strArr = A0a;
        strArr[6] = "spdRTJ9gc0V8C8dawfdzzmzq";
        strArr[2] = "7no20bYvIU1AJm1N2ikVgT8N4";
        if (i != 1701671783 || uri == null) {
            return;
        }
        A0H(pe.A00, uri);
    }

    public static boolean A0W(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    public static boolean A0X(int i) {
        return i == 1751411826 || i == 1835296868 || i == 1836476516 || i == 1936286840 || i == 1937011556 || i == 1937011827 || i == 1668576371 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1937011571 || i == 1952867444 || i == 1952868452 || i == 1953196132 || i == 1953654136 || i == 1953658222 || i == 1886614376 || i == 1935763834 || i == 1935763823 || i == 1936027235 || i == 1970628964 || i == 1935828848 || i == 1936158820 || i == 1701606260 || i == 1835362404 || i == 1701671783;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0146, code lost:
    
        if (r9 == 1835295092) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0148, code lost:
    
        r11.A0F = r7;
        r11.A09 = r11.A07 + r2;
        r11.A02 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0152, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x015b, code lost:
    
        if (r9 == 1835295092) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x015e, code lost:
    
        r3 = r11.A01;
        r2 = com.facebook.ads.redexgen.X.P8.A0a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0170, code lost:
    
        if (r2[5].length() == r2[0].length()) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0172, code lost:
    
        com.facebook.ads.redexgen.X.P8.A0a[4] = "0S8elcTiMKARCn8aCrl6ynMdGK5dBFmZ";
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x017d, code lost:
    
        if (A0W(r3) == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x017f, code lost:
    
        r5 = (r12.A9Q() + r11.A07) - 8;
        r11.A0V.push(new com.facebook.ads.redexgen.X.PF(r11.A01, r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x019c, code lost:
    
        if (r11.A07 != r11.A00) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x019e, code lost:
    
        A0F(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01a1, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01a2, code lost:
    
        A0B();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01af, code lost:
    
        if (A0X(r11.A01) == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01b3, code lost:
    
        if (r11.A00 != 8) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01b9, code lost:
    
        if (r11.A07 > 2147483647L) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01bb, code lost:
    
        r2 = new com.facebook.ads.redexgen.X.C1769Mk((int) r11.A07);
        java.lang.System.arraycopy(r11.A0M.A0l(), 0, r2.A0l(), 0, 8);
        r11.A0D = r2;
        r11.A02 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01d9, code lost:
    
        if (r11.A07 > 2147483647L) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01db, code lost:
    
        r11.A0D = r7;
        r11.A02 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ee, code lost:
    
        throw com.facebook.ads.redexgen.X.L9.A00(A0A(335, 49, 59));
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01fd, code lost:
    
        throw com.facebook.ads.redexgen.X.L9.A00(A0A(284, 51, 78));
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x020c, code lost:
    
        throw com.facebook.ads.redexgen.X.L9.A00(A0A(592, 53, 32));
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e6 A[PHI: r7
      0x00e6: PHI (r7v6 long) = (r7v3 long), (r7v8 long) binds: [B:44:0x0125, B:32:0x00e4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A0Y(com.facebook.ads.redexgen.X.Q9 r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 546
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P8.A0Y(com.facebook.ads.redexgen.X.Q9):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0264 A[LOOP:1: B:74:0x0264->B:78:0x0283, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0303  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A0Z(com.facebook.ads.redexgen.X.Q9 r22) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 780
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P8.A0Z(com.facebook.ads.redexgen.X.Q9):boolean");
    }

    public static boolean A0a(C2170bA c2170bA) {
        if (c2170bA.A08 == null || c2170bA.A08.length != 1 || c2170bA.A09 == null) {
            return false;
        }
        if (c2170bA.A08[0] == 0) {
            return true;
        }
        long j = c2170bA.A08[0] + c2170bA.A09[0];
        long j2 = c2170bA.A05;
        if (A0a[7].charAt(1) == 'U') {
            throw new RuntimeException();
        }
        A0a[4] = "0Q88ZbcvQEIxCc32UKwkG70cQi1Rc0cj";
        long editListEndMediaTimeUs = N1.A0U(j, 1000000L, j2);
        return editListEndMediaTimeUs >= c2170bA.A04;
    }

    public static /* synthetic */ InterfaceC2068Yv[] A0b() {
        return new InterfaceC2068Yv[]{new P7()};
    }

    public final C2170bA A0c(C2170bA c2170bA) {
        return c2170bA;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AAq(InterfaceC2069Yw interfaceC2069Yw) {
        this.A0E = interfaceC2069Yw;
        A0B();
        A0C();
        if (this.A0U != null) {
            this.A0L.put(0, new C2156aw(interfaceC2069Yw.ALm(0, this.A0U.A03), new C2173bD(this.A0U, new long[0], new int[0], 0, new long[0], new int[0], 0L), new C2147an(0, 0, 0, 0)));
            this.A0E.A6x();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        while (true) {
            switch (this.A02) {
                case 0:
                    if (!A0Y(q9)) {
                        return -1;
                    }
                    break;
                    break;
                case 1:
                    A0L(q9);
                    break;
                case 2:
                    A0M(q9);
                    break;
                default:
                    if (A0Z(q9)) {
                        return 0;
                    }
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AKO(long j, long j2) {
        int size = this.A0L.size();
        for (int i = 0; i < size; i++) {
            this.A0L.valueAt(i).A08();
        }
        this.A0W.clear();
        this.A03 = 0;
        this.A0B = j2;
        this.A0V.clear();
        A0B();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final boolean ALN(Q9 q9) throws IOException {
        return AbstractC2168b8.A01(q9);
    }
}
