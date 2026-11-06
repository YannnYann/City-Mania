package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.14, reason: invalid class name */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class AnonymousClass14 implements InterfaceC12882x {
    public static String[] A0A = {"L7pB8f6DJ5mJum6GDSmpdJslJXsMxtHa", "HksPSFaLNpHeSbIn6Lpnse9MpsMCj7WG", "QrtmqxkkG", "pEruzS9O6", "lcR3P06ACt7Jm9PISjJ4lll4eLJSZPNO", "rISygATOhWoedzWflPt6FhXlFyg", "kGU4neNHJNKOGsm3ZekUG4yaL8gPq8fX", "Hkf6X2ilN2bShHzWvJrFhhvcvulX"};
    public static final C2g A0B = new C2g(null);
    public static final boolean A0C = false;
    public static final boolean A0D = false;
    public static final boolean A0E = false;
    public InterfaceC12380e A00;
    public C2f A01;
    public C2L A02;
    public boolean A03;
    public boolean A04;
    public final C2f A05;
    public final AnonymousClass30 A06;
    public final C2h A07;
    public final AnonymousClass13 A08;
    public final LinkedHashMap<Integer, Runnable> A09;

    public AnonymousClass14(AnonymousClass13 anonymousClass13, InterfaceC12380e interfaceC12380e, C2h c2h, AnonymousClass30 anonymousClass30) {
        this.A08 = anonymousClass13;
        this.A00 = interfaceC12380e;
        this.A07 = c2h;
        this.A06 = anonymousClass30;
        this.A09 = new LinkedHashMap<>();
        this.A05 = new C2f() { // from class: com.facebook.ads.redexgen.X.16
            @Override // com.facebook.ads.redexgen.X.C2f
            public final void AGx() {
                ArrayList arrayList = null;
                LinkedHashMap linkedHashMap = this.A00.A09;
                AnonymousClass14 anonymousClass14 = this.A00;
                synchronized (linkedHashMap) {
                    if (!AnonymousClass14.A0C || !anonymousClass14.A09.isEmpty()) {
                        arrayList = new ArrayList(anonymousClass14.A09.size());
                        Iterator it = anonymousClass14.A09.values().iterator();
                        while (it.hasNext()) {
                            arrayList.add((Runnable) it.next());
                        }
                        anonymousClass14.A09.clear();
                    }
                }
                if (arrayList != null) {
                    for (Object runnablesList : arrayList) {
                        ((Runnable) runnablesList).run();
                    }
                }
                C2f c2f = this.A00.A01;
                if (c2f != null) {
                    c2f.AGx();
                }
            }
        };
    }

    public /* synthetic */ AnonymousClass14(AnonymousClass13 anonymousClass13, InterfaceC12380e interfaceC12380e, C2h c2h, AnonymousClass30 anonymousClass30, int i, AbstractC12661i abstractC12661i) {
        this(anonymousClass13, interfaceC12380e, c2h, (i & 8) != 0 ? null : anonymousClass30);
    }

    @JvmStatic
    public static final AnonymousClass14 A01() {
        return A0B.A00();
    }

    private final void A03(C2j c2j, InterfaceC12792o interfaceC12792o, AnonymousClass12 anonymousClass12, InterfaceC12802p interfaceC12802p) {
        this.A02 = C2L.A04.A03(this.A08, c2j, interfaceC12792o, anonymousClass12, interfaceC12802p, null);
        if (0 != 0) {
            C2L c2l = this.A02;
            C1h.A06(c2l);
            c2l.A03(null);
        }
        C2L c2l2 = this.A02;
        C1h.A06(c2l2);
        if (A0A[0].charAt(22) == 'v') {
            throw new RuntimeException();
        }
        String[] strArr = A0A;
        strArr[3] = "EeMj3KlYf";
        strArr[2] = "dKx0p3seg";
        c2l2.A04(this.A05);
    }

    private final void A04(C2K c2k, C12892y c12892y) {
        C2L c2l = this.A02;
        if (c2l != null && c2k != null) {
            if (this.A08.A01 && c12892y != null) {
                c2l.A05(c2k, c12892y);
            } else {
                C2L.A02(c2l, c2k, null, 2, null);
            }
        }
    }

    private final void A05(C2K c2k, C12892y c12892y, C12762l<?, ?> c12762l) {
        C2L c2l = this.A02;
        if (c2l != null && c2k != null && c12762l != null) {
            if (this.A08.A01 && c12892y != null) {
                c12762l.A02 = c2k.hashCode() + '_' + c12762l.A08 + c12892y;
                c2l.A06(c2k, c12892y, c12762l);
            } else {
                c2l.A07(c2k, c12762l);
            }
        }
    }

    public final void A06(View view) {
        AnonymousClass11 anonymousClass11A04;
        if (view != null) {
            C2O c2o = AnonymousClass11.A03;
            if (A0A[4].charAt(13) != '9') {
                throw new RuntimeException();
            }
            A0A[4] = "qbapvPJhWt7eO9TL5njdwoTQY07eJIz0";
            anonymousClass11A04 = c2o.A04(view);
        } else {
            anonymousClass11A04 = null;
        }
        A04(anonymousClass11A04, null);
    }

    public final void A07(View view, C12762l<?, ?> c12762l) {
        A05(view != null ? AnonymousClass11.A03.A04(view) : null, null, c12762l);
    }

    public final void A08(C2j c2j, final View view) {
        if (c2j != null && view != null) {
            final InterfaceC12380e interfaceC12380e = this.A00;
            A03(c2j, new InterfaceC12792o(view, interfaceC12380e) { // from class: com.facebook.ads.redexgen.X.18
                public static byte[] A05;
                public static String[] A06 = {"IEiXcTkMIl1ap8Zf6qOVAjQ1rvSIicom", "QYAiQp9VSKIcO10LfC8C0oMZ52KCP", "5FnqVZjKRiUcCEiMettDGQkf", "eIcxxbRAXAOJgXUDruK", "Xqq5h503ORagU11Zkm", "kVW5mdc93LjiLmP7jOmm8EZ9ikbuw", "", "Pup9EGwYSaPQ0jjcMKTOfwULbNi8Bcjo"};
                public static final C12872w A07;
                public final WeakReference<View> A00;
                public final Rect A01;
                public final Rect A02;
                public final InterfaceC12380e A03;
                public final List<Rect> A04;

                public static String A00(int i, int i2, int i3) {
                    byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
                    for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                        bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 64);
                    }
                    return new String(bArrCopyOfRange);
                }

                public static void A01() {
                    A05 = new byte[]{-54, -45, -48, -41, -71, -52, -50, -48, -42, -43, -38, -73, -39, -42, -35, -48, -53, -52, -39, -4, -6, 9, -40, 1, -2, 5, -25, -6, -8, 9, 30, 36, 35, -5, 24, 34, 35, 3, -10, -14, 4};
                }

                /* JADX WARN: Failed to parse debug info
                java.lang.ArrayIndexOutOfBoundsException
                 */
                private final void A02(List<Rect> list) {
                    C1h.A09(list, A00(30, 7, 111));
                    list.clear();
                    this.A04.clear();
                    View view2 = this.A00.get();
                    if (view2 == null || !view2.getGlobalVisibleRect(this.A02) || this.A02.isEmpty()) {
                        return;
                    }
                    this.A04.add(this.A02);
                    if (0 < this.A03.size()) {
                        this.A03.A7I(0);
                        throw new NullPointerException(A00(19, 11, 85));
                    }
                    List<Rect> list2 = this.A04;
                    String[] strArr = A06;
                    if (strArr[2].length() == strArr[6].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A06;
                    strArr2[2] = "LXhIn0ySVvfbhvFPsQzIW8Ps";
                    strArr2[6] = "";
                    list.addAll(list2);
                }

                static {
                    A01();
                    A07 = new C12872w(null);
                }

                {
                    C1h.A09(view, A00(37, 4, 77));
                    C1h.A09(interfaceC12380e, A00(0, 19, 39));
                    this.A03 = interfaceC12380e;
                    this.A00 = new WeakReference<>(view);
                    this.A04 = new ArrayList();
                    this.A02 = new Rect();
                    this.A01 = new Rect();
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC12792o
                public final Context A85() {
                    View view2 = this.A00.get();
                    if (view2 != null) {
                        return view2.getContext();
                    }
                    return null;
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC12792o
                public final void AAD(List<Rect> list) {
                    C1h.A09(list, A00(30, 7, 111));
                    A02(list);
                }
            }, new C12370d(null, false, false, this.A03, this.A04, this.A08.A00, 6, null), null);
        }
    }
}
