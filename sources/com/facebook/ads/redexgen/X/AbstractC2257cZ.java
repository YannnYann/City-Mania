package com.facebook.ads.redexgen.X;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.ironsource.InterfaceC3681k1;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2257cZ {
    public static byte[] A00;
    public static String[] A01 = {"6v8", "zfSWx4kkvk7NKb6j574Qzh1ehqPWVXBJ", "k4tsh8ZEDzU1cAoHIV4wBG3pfE", "EGfAZ1IUkUQXFUopLFyyffsKFyGyd3TR", "JSrjBw9biKLFoWVgPhKYCLwUb3hRV", "1G7ywv1e7SgdprbBT1Nw64mInQ", "TlcbJaqckiCcOnwKaYHSEeNhQa", "0TBtFdiJG1pVX1lkXK7keDqrS7O"};
    public static final Pattern A02;
    public static final Map<String, Integer> A03;
    public static final Map<String, Integer> A04;
    public static final Pattern A05;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A06(List<C2245cN> list, String str, C2253cV c2253cV) {
        List<C2254cW> listA0E = A0E(list, str, c2253cV);
        for (int i = 0; i < listA0E.size(); i++) {
            C2245cN c2245cN = listA0E.get(i).A01;
            if (c2245cN.A07() != -1) {
                return c2245cN.A07();
            }
        }
        return -1;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static SpannedString A07(String str, String str2, List<C2245cN> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        int iA05 = 0;
        ArrayList arrayList = new ArrayList();
        while (true) {
            int length = str2.length();
            if (A01[0].length() != 3) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[4] = "jvq9fpfdkdShx4hcabElbHLV0ky6f";
            strArr[5] = "mRcPmReQvAuypAq1aKLIoos46B";
            if (iA05 >= length) {
                while (!arrayDeque.isEmpty()) {
                    A0K(str, (C2253cV) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
                }
                A0K(str, C2253cV.A00(), Collections.emptyList(), spannableStringBuilder, list);
                return SpannedString.valueOf(spannableStringBuilder);
            }
            char cCharAt = str2.charAt(iA05);
            switch (cCharAt) {
                case '&':
                    int iIndexOf = str2.indexOf(59, iA05 + 1);
                    int iIndexOf2 = str2.indexOf(32, iA05 + 1);
                    if (iIndexOf == -1) {
                        iIndexOf = iIndexOf2;
                    } else if (iIndexOf2 != -1) {
                        iIndexOf = Math.min(iIndexOf, iIndexOf2);
                    }
                    if (iIndexOf == -1) {
                        spannableStringBuilder.append(cCharAt);
                        iA05++;
                    } else {
                        A0J(str2.substring(iA05 + 1, iIndexOf), spannableStringBuilder);
                        if (iIndexOf == iIndexOf2) {
                            spannableStringBuilder.append((CharSequence) A0C(1, 1, 74));
                        }
                        iA05 = iIndexOf + 1;
                    }
                    break;
                case '<':
                    if (iA05 + 1 < str2.length()) {
                        int i = iA05;
                        char cCharAt2 = str2.charAt(i + 1);
                        if (A01[0].length() != 3) {
                            throw new RuntimeException();
                        }
                        A01[0] = "DjA";
                        boolean z = cCharAt2 == '/';
                        iA05 = A05(str2, i + 1);
                        boolean z2 = str2.charAt(iA05 + (-2)) == '/';
                        String strSubstring = str2.substring((z ? 2 : 1) + i, z2 ? iA05 - 2 : iA05 - 1);
                        if (!strSubstring.trim().isEmpty()) {
                            String strA0D = A0D(strSubstring);
                            if (A0O(strA0D)) {
                                if (z) {
                                    while (!arrayDeque.isEmpty()) {
                                        C2253cV c2253cV = (C2253cV) arrayDeque.pop();
                                        A0K(str, c2253cV, arrayList, spannableStringBuilder, list);
                                        if (arrayDeque.isEmpty()) {
                                            arrayList.clear();
                                        } else {
                                            arrayList.add(new C2252cU(c2253cV, spannableStringBuilder.length()));
                                        }
                                        if (c2253cV.A01.equals(strA0D)) {
                                        }
                                        break;
                                    }
                                } else if (!z2) {
                                    arrayDeque.push(C2253cV.A01(strSubstring, spannableStringBuilder.length()));
                                }
                            }
                        }
                    } else {
                        iA05++;
                    }
                    break;
                default:
                    spannableStringBuilder.append(cCharAt);
                    iA05++;
                    break;
            }
        }
    }

    public static String A0C(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0F() {
        A00 = new byte[]{111, 29, 9, 111, 27, 20, 108, 120, 110, 125, 111, 27, 20, 108, 110, 63, 40, 52, 22, 49, 41, 62, 51, 54, 59, 127, 120, 41, 58, 45, 43, 54, 60, 62, 51, 120, 127, 41, 62, 51, 42, 58, 101, 127, 70, 97, 121, 110, 99, 102, 107, 47, 110, 99, 102, 104, 97, 98, 106, 97, 123, 47, 121, 110, 99, 122, 106, 53, 47, 78, 105, 113, 102, 107, 110, 99, 39, 102, 105, 100, 111, 104, 117, 39, 113, 102, 107, 114, 98, 61, 39, 73, 113, 115, 106, 106, 115, 116, 125, 58, 120, 123, 126, 58, 121, 111, 127, 58, 105, 127, 110, 110, 115, 116, 125, 32, 58, 88, 96, 98, 123, 123, 98, 101, 108, 43, 104, 126, 110, 43, 124, 98, 127, 99, 43, 105, 106, 111, 43, 99, 110, 106, 111, 110, 121, 49, 43, 37, 30, 27, 30, 31, 7, 30, 80, 19, 5, 21, 80, 3, 21, 4, 4, 25, 30, 23, 80, 71, 117, 114, 102, 100, 100, 83, 101, 117, 64, 113, 98, 99, 117, 98, 55, 76, 48, 66, 49, 34, 84, 32, 47, 87, 85, 32, 15, 87, 81, 81, 66, 32, 15, 87, 84, 32, 47, 87, 85, 84, 82, 86, 85, 67, 88, 27, 22, 19, 29, 20, 41, 37, 56, 65, 40, 45, 21, 40, 38, 43, 41, 33, 72, 77, 117, 72, 70, 95, 79, 122, 127, 71, 123, 97, 121, 118, 2, 7, 63, 12, 9, 13, 5, 124, 121, 65, 115, 127, 121, 123, 112, 106, 127, 61, 56, 0, 45, 58, 59, 47, 42, 18, 58, 37, 36, 57, 40, 120, 125, 69, 99, 127, 118, 118, 117, 109, 75, 69, 72, 74, 66, 3, 13, 20, 4, 109, 7, 1, 10, 16, 1, 22, 90, 64, 88, 87, 78, 69, 79, 57, 42, 50, 62, 48, 57, 56, 37, 62, 57, 48, 119, 34, 57, 36, 34, 39, 39, 56, 37, 35, 50, 51, 119, 50, 57, 35, 62, 35, 46, 109, 119, 112, 113, 115, 126, 113, 120, 89, 80, 83, 65, 90, 95, 91, 83, 67, 70, 65, 74, 47, 42, 45, 38, 110, 47, 38, 37, 55, 66, 71, 64, 75, 3, 92, 71, 73, 70, 90, 50, 44, 92, 68, 3, 15, 9, 11, 0, 26, 15, 54, 50, 63, 63, 55, 62, 96, 108, 125, 126, 56, 39, 59, 33, 60, 33, 39, 38, 72, 95, 94, 3, 24, 22, 25, 5, 93, 67, 61, 59, 68, 67, 84, 79, 7, 29, 14, 17, 37, 34, 55, 36, 34, 13, 125, 118, 101, 114, 116, 105, 99, 97, 108, 119, 104, 105, 116, 101, 12, 16, 25, 25, 26, 2};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0H(SpannableStringBuilder spannableStringBuilder, String str, C2253cV c2253cV, List<C2252cU> list, List<C2245cN> list2) {
        int iA06 = A06(list2, str, c2253cV);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, C2252cU.A02);
        int length = 0;
        int i = c2253cV.A00;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (A0C(415, 2, 56).equals(((C2252cU) arrayList.get(i2)).A01.A01)) {
                C2252cU c2252cU = (C2252cU) arrayList.get(i2);
                int iA00 = A00(A06(list2, str, c2252cU.A01), iA06, 1);
                int i3 = c2252cU.A01.A00 - length;
                int i4 = c2252cU.A00 - length;
                CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i3, i4);
                spannableStringBuilder.delete(i3, i4);
                spannableStringBuilder.setSpan(new C1932Td(charSequenceSubSequence.toString(), iA00), i, i3, 33);
                length += charSequenceSubSequence.length();
                i = i3;
            }
        }
    }

    static {
        A0F();
        A02 = Pattern.compile(A0C(187, 26, 11));
        A05 = Pattern.compile(A0C(3, 12, 48));
        HashMap map = new HashMap();
        map.put(A0C(440, 5, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE), Integer.valueOf(Color.rgb(255, 255, 255)));
        map.put(A0C(349, 4, 65), Integer.valueOf(Color.rgb(0, 255, 0)));
        map.put(A0C(300, 4, 78), Integer.valueOf(Color.rgb(0, 255, 255)));
        map.put(A0C(InterfaceC3681k1.a.b.e, 3, 77), Integer.valueOf(Color.rgb(255, 0, 0)));
        map.put(A0C(445, 6, 2), Integer.valueOf(Color.rgb(255, 255, 0)));
        map.put(A0C(380, 7, 25), Integer.valueOf(Color.rgb(255, 0, 255)));
        map.put(A0C(289, 4, 22), Integer.valueOf(Color.rgb(0, 0, 255)));
        map.put(A0C(284, 5, 94), Integer.valueOf(Color.rgb(0, 0, 0)));
        Map<String, Integer> defaultColors = Collections.unmodifiableMap(map);
        A04 = defaultColors;
        HashMap map2 = new HashMap();
        map2.put(A0C(267, 8, 58), Integer.valueOf(Color.rgb(255, 255, 255)));
        map2.put(A0C(244, 7, 23), Integer.valueOf(Color.rgb(0, 255, 0)));
        map2.put(A0C(237, 7, 111), Integer.valueOf(Color.rgb(0, 255, 255)));
        map2.put(A0C(261, 6, 40), Integer.valueOf(Color.rgb(255, 0, 0)));
        map2.put(A0C(275, 9, 109), Integer.valueOf(Color.rgb(255, 255, 0)));
        map2.put(A0C(251, 10, 105), Integer.valueOf(Color.rgb(255, 0, 255)));
        map2.put(A0C(230, 7, 93), Integer.valueOf(Color.rgb(0, 0, 255)));
        map2.put(A0C(Sdk.SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE, 8, 61), Integer.valueOf(Color.rgb(0, 0, 0)));
        Map<String, Integer> defaultBackgroundColors = Collections.unmodifiableMap(map2);
        A03 = defaultBackgroundColors;
    }

    public static int A00(int i, int i2, int i3) {
        if (i != -1) {
            return i;
        }
        if (i2 != -1) {
            return i2;
        }
        if (i3 != -1) {
            return i3;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0097 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0098 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0099 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000a  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000e  */
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
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A01(java.lang.String r9) {
        /*
            int r0 = r9.hashCode()
            r8 = 2
            r7 = 1
            r6 = 0
            switch(r0) {
                case -1364013995: goto L85;
                case -1074341483: goto L74;
                case 100571: goto L4a;
                case 109757538: goto L39;
                default: goto La;
            }
        La:
            r0 = -1
        Lb:
            switch(r0) {
                case 0: goto L99;
                case 1: goto L98;
                case 2: goto L98;
                case 3: goto L97;
                default: goto Le;
            }
        Le:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r2 = 69
            r1 = 22
            r0 = 112(0x70, float:1.57E-43)
            java.lang.String r0 = A0C(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r0 = r0.append(r9)
            java.lang.String r3 = r0.toString()
            r2 = 167(0xa7, float:2.34E-43)
            r1 = 15
            r0 = 103(0x67, float:1.44E-43)
            java.lang.String r0 = A0C(r2, r1, r0)
            com.facebook.ads.redexgen.X.MV.A07(r0, r3)
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            return r0
        L39:
            r2 = 425(0x1a9, float:5.96E-43)
            r1 = 5
            r0 = 33
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r9.equals(r0)
            if (r0 == 0) goto La
            r0 = 0
            goto Lb
        L4a:
            r5 = 304(0x130, float:4.26E-43)
            r4 = 3
            r3 = 92
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2257cZ.A01
            r0 = 4
            r1 = r2[r0]
            r0 = 5
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L9a
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2257cZ.A01
            java.lang.String r1 = "6VNoPoGqGwpjt6lHxiUXUHsY4OH"
            r0 = 7
            r2[r0] = r1
            java.lang.String r0 = A0C(r5, r4, r3)
            boolean r0 = r9.equals(r0)
            if (r0 == 0) goto La
            r0 = 3
            goto Lb
        L74:
            r2 = 387(0x183, float:5.42E-43)
            r1 = 6
            r0 = 44
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r9.equals(r0)
            if (r0 == 0) goto La
            r0 = 2
            goto Lb
        L85:
            r2 = 294(0x126, float:4.12E-43)
            r1 = 6
            r0 = 19
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r9.equals(r0)
            if (r0 == 0) goto La
            r0 = 1
            goto Lb
        L97:
            return r8
        L98:
            return r7
        L99:
            return r6
        L9a:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2257cZ.A01(java.lang.String):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ba A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000a  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000e  */
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
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A02(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2257cZ.A02(java.lang.String):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A03(java.lang.String r8) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2257cZ.A03(java.lang.String):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0008  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A04(java.lang.String r4) {
        /*
            int r0 = r4.hashCode()
            r3 = 1
            switch(r0) {
                case 3462: goto L48;
                case 3642: goto L37;
                default: goto L8;
            }
        L8:
            r0 = -1
        L9:
            switch(r0) {
                case 0: goto L5b;
                case 1: goto L59;
                default: goto Lc;
            }
        Lc:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r2 = 18
            r1 = 26
            r0 = 40
            java.lang.String r0 = A0C(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r0 = r0.append(r4)
            java.lang.String r3 = r0.toString()
            r2 = 167(0xa7, float:2.34E-43)
            r1 = 15
            r0 = 103(0x67, float:1.44E-43)
            java.lang.String r0 = A0C(r2, r1, r0)
            com.facebook.ads.redexgen.X.MV.A07(r0, r3)
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            return r0
        L37:
            r2 = 413(0x19d, float:5.79E-43)
            r1 = 2
            r0 = 88
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto L8
            r0 = 0
            goto L9
        L48:
            r2 = 376(0x178, float:5.27E-43)
            r1 = 2
            r0 = 41
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto L8
            r0 = 1
            goto L9
        L59:
            r0 = 2
            return r0
        L5b:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2257cZ.A04(java.lang.String):int");
    }

    public static int A05(String str, int i) {
        int iIndexOf = str.indexOf(62, i);
        if (iIndexOf == -1) {
            int index = str.length();
            return index;
        }
        int index2 = iIndexOf + 1;
        return index2;
    }

    public static C1737Ld A08(String str) {
        C2256cY builder = new C2256cY();
        A0L(str, builder);
        return builder.A07();
    }

    public static C1936Th A09(CharSequence charSequence) {
        C2256cY infoBuilder = new C2256cY();
        infoBuilder.A0A = charSequence;
        return infoBuilder.A07().A0H();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0060, code lost:
    
        if (r6 != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0062, code lost:
    
        r0 = r4.trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006a, code lost:
    
        return A0B(r0, r5, r7, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006b, code lost:
    
        if (r6 != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006e, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C2249cR A0A(com.facebook.ads.redexgen.X.C1769Mk r7, java.util.List<com.facebook.ads.redexgen.X.C2245cN> r8) {
        /*
            java.lang.String r4 = r7.A0T()
            r3 = 0
            if (r4 != 0) goto L8
            return r3
        L8:
            java.util.regex.Pattern r0 = com.facebook.ads.redexgen.X.AbstractC2257cZ.A02
            java.util.regex.Matcher r5 = r0.matcher(r4)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AbstractC2257cZ.A01
            r0 = 3
            r1 = r1[r0]
            r0 = 28
            char r1 = r1.charAt(r0)
            r0 = 114(0x72, float:1.6E-43)
            if (r1 == r0) goto L6f
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2257cZ.A01
            java.lang.String r1 = "91CWGHq3LpltnZbfESWEUBhgmk9qe"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "OnICX6gWtgZDHYEEYRRI64echh"
            r0 = 5
            r2[r0] = r1
            boolean r0 = r5.matches()
            if (r0 == 0) goto L34
            com.facebook.ads.redexgen.X.cR r0 = A0B(r3, r5, r7, r8)
            return r0
        L34:
            java.lang.String r1 = r7.A0T()
            if (r1 != 0) goto L3b
            return r3
        L3b:
            java.util.regex.Pattern r0 = com.facebook.ads.redexgen.X.AbstractC2257cZ.A02
            java.util.regex.Matcher r5 = r0.matcher(r1)
            boolean r6 = r5.matches()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AbstractC2257cZ.A01
            r0 = 3
            r1 = r1[r0]
            r0 = 28
            char r1 = r1.charAt(r0)
            r0 = 114(0x72, float:1.6E-43)
            if (r1 == r0) goto L6b
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2257cZ.A01
            java.lang.String r1 = "tfXkp8rmVMvKE5TvQHTEpsM5Gm"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "bHzMLfZhwx7svyeGK9WfnLq261"
            r0 = 2
            r2[r0] = r1
            if (r6 == 0) goto L6e
        L62:
            java.lang.String r0 = r4.trim()
            com.facebook.ads.redexgen.X.cR r0 = A0B(r0, r5, r7, r8)
            return r0
        L6b:
            if (r6 == 0) goto L6e
            goto L62
        L6e:
            return r3
        L6f:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2257cZ.A0A(com.facebook.ads.redexgen.X.Mk, java.util.List):com.facebook.ads.redexgen.X.cR");
    }

    public static C2249cR A0B(String str, Matcher matcher, C1769Mk c1769Mk, List<C2245cN> list) {
        C2256cY c2256cY = new C2256cY();
        try {
            c2256cY.A09 = AbstractC2258ca.A01((String) AbstractC1747Ln.A01(matcher.group(1)));
            c2256cY.A08 = AbstractC2258ca.A01((String) AbstractC1747Ln.A01(matcher.group(2)));
            A0L((String) AbstractC1747Ln.A01(matcher.group(3)), c2256cY);
            StringBuilder sb = new StringBuilder();
            String strA0T = c1769Mk.A0T();
            while (!TextUtils.isEmpty(strA0T)) {
                if (sb.length() > 0) {
                    sb.append(A0C(0, 1, 18));
                }
                sb.append(strA0T.trim());
                strA0T = c1769Mk.A0T();
            }
            c2256cY.A0A = A07(str, sb.toString(), list);
            return c2256cY.A08();
        } catch (NumberFormatException unused) {
            MV.A07(A0C(167, 15, 103), A0C(Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, 30, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE) + matcher.group());
            return null;
        }
    }

    public static String A0D(String str) {
        String strTrim = str.trim();
        AbstractC1747Ln.A07(!strTrim.isEmpty());
        return N1.A1P(strTrim, A0C(182, 5, 27))[0];
    }

    public static List<C2254cW> A0E(List<C2245cN> list, String str, C2253cV c2253cV) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            C2245cN c2245cN = list.get(i);
            int i2 = c2245cN.A09(str, c2253cV.A01, c2253cV.A03, c2253cV.A02);
            if (i2 > 0) {
                arrayList.add(new C2254cW(i2, c2245cN));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static void A0G(SpannableStringBuilder spannableStringBuilder, C2245cN c2245cN, int i, int i2) {
        if (c2245cN == null) {
            return;
        }
        if (c2245cN.A08() != -1) {
            AbstractC1742Li.A00(spannableStringBuilder, new StyleSpan(c2245cN.A08()), i, i2, 33);
        }
        boolean zA0S = c2245cN.A0S();
        if (A01[0].length() != 3) {
            throw new RuntimeException();
        }
        A01[3] = "Ea2yhfvTbSmnQ3AL9wscme0mkBlQAAQb";
        if (zA0S) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (c2245cN.A0T()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (c2245cN.A0R()) {
            AbstractC1742Li.A00(spannableStringBuilder, new ForegroundColorSpan(c2245cN.A05()), i, i2, 33);
        }
        if (c2245cN.A0Q()) {
            AbstractC1742Li.A00(spannableStringBuilder, new BackgroundColorSpan(c2245cN.A04()), i, i2, 33);
        }
        if (c2245cN.A0K() != null) {
            AbstractC1742Li.A00(spannableStringBuilder, new TypefaceSpan(c2245cN.A0K()), i, i2, 33);
        }
        switch (c2245cN.A06()) {
            case 1:
                AbstractC1742Li.A00(spannableStringBuilder, new AbsoluteSizeSpan((int) c2245cN.A03(), true), i, i2, 33);
                break;
            case 2:
                AbstractC1742Li.A00(spannableStringBuilder, new RelativeSizeSpan(c2245cN.A03()), i, i2, 33);
                break;
            case 3:
                AbstractC1742Li.A00(spannableStringBuilder, new RelativeSizeSpan(c2245cN.A03() / 100.0f), i, i2, 33);
                break;
        }
        if (c2245cN.A0P()) {
            spannableStringBuilder.setSpan(new C1933Te(), i, i2, 33);
        }
    }

    public static void A0I(SpannableStringBuilder spannableStringBuilder, Set<String> set, int i, int i2) {
        for (String className : set) {
            if (A04.containsKey(className)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(A04.get(className).intValue()), i, i2, 33);
            } else if (A03.containsKey(className)) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(A03.get(className).intValue()), i, i2, 33);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0007  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0041  */
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
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A0J(java.lang.String r6, android.text.SpannableStringBuilder r7) {
        /*
            Method dump skipped, instruction units count: 300
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2257cZ.A0J(java.lang.String, android.text.SpannableStringBuilder):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Incorrect condition in loop: B:39:0x00cc */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A0K(java.lang.String r8, com.facebook.ads.redexgen.X.C2253cV r9, java.util.List<com.facebook.ads.redexgen.X.C2252cU> r10, android.text.SpannableStringBuilder r11, java.util.List<com.facebook.ads.redexgen.X.C2245cN> r12) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2257cZ.A0K(java.lang.String, com.facebook.ads.redexgen.X.cV, java.util.List, android.text.SpannableStringBuilder, java.util.List):void");
    }

    public static void A0L(String str, C2256cY c2256cY) {
        String name = A0C(167, 15, 103);
        Matcher matcher = A05.matcher(str);
        while (matcher.find()) {
            String str2 = (String) AbstractC1747Ln.A01(matcher.group(1));
            String str3 = (String) AbstractC1747Ln.A01(matcher.group(2));
            try {
                if (A0C(353, 4, 88).equals(str2)) {
                    A0M(str3, c2256cY);
                } else if (A0C(Sdk.SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 5, 13).equals(str2)) {
                    c2256cY.A06 = A03(str3);
                } else if (A0C(397, 8, 63).equals(str2)) {
                    A0N(str3, c2256cY);
                } else if (A0C(421, 4, 3).equals(str2)) {
                    c2256cY.A02 = AbstractC2258ca.A00(str3);
                } else if (A0C(432, 8, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE).equals(str2)) {
                    c2256cY.A07 = A04(str3);
                } else {
                    MV.A07(name, A0C(147, 20, 7) + str2 + A0C(15, 1, Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE) + str3);
                }
            } catch (NumberFormatException unused) {
                MV.A07(name, A0C(91, 26, 109) + matcher.group());
            }
        }
    }

    public static void A0M(String str, C2256cY c2256cY) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            int commaIndex = iIndexOf + 1;
            c2256cY.A03 = A01(str.substring(commaIndex));
            str = str.substring(0, iIndexOf);
        }
        if (A01[7].length() != 27) {
            throw new RuntimeException();
        }
        A01[3] = "uQN84nlA75y04Oqx4R9Gb8Wkkyggth9o";
        if (str.endsWith(A0C(2, 1, 91))) {
            c2256cY.A00 = AbstractC2258ca.A00(str);
            c2256cY.A04 = 0;
        } else {
            int commaIndex2 = Integer.parseInt(str);
            c2256cY.A00 = commaIndex2;
            c2256cY.A04 = 1;
        }
    }

    public static void A0N(String str, C2256cY c2256cY) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            int commaIndex = iIndexOf + 1;
            int iA02 = A02(str.substring(commaIndex));
            if (A01[1].charAt(15) != 'j') {
                throw new RuntimeException();
            }
            A01[1] = "kcnRMJamAmHiFzajDDSuDUVQ6UORDZwH";
            c2256cY.A05 = iA02;
            str = str.substring(0, iIndexOf);
        }
        c2256cY.A01 = AbstractC2258ca.A00(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000d A[RETURN] */
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
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0O(java.lang.String r8) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2257cZ.A0O(java.lang.String):boolean");
    }
}
