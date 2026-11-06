package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.text.TextUtils;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4L, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C4L extends C9J implements C9C {
    public static byte[] A0F;
    public static String[] A0G = {"nOs3Tt6IrluNYDSOSLESBXSCSc7WyuF", "gB1sPMl0EzjK9", "jgjU8GI64F0Y9Lmze2t", "rHj9", "SvLqmlanW48Wj", "SfQAdFr8qtnlMOHcdEz777nqnLEWS", "4l3q", "CYEftcUDuniojuuZHfgRqMFva2dqwEDV"};

    @MetaExoPlayerCustomization
    public static final Pattern A0H;
    public int A00;
    public long A01;
    public long A02;
    public NX A03;
    public InterfaceC2019Wt<String> A04;
    public InputStream A05;
    public HttpURLConnection A06;
    public boolean A07;
    public final int A08;
    public final int A09;
    public final C1788Nd A0A;
    public final C1788Nd A0B;
    public final String A0C;
    public final boolean A0D;
    public final boolean A0E;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 24);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @MetaExoPlayerCustomization
    private HttpURLConnection A05(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) throws IOException {
        HttpURLConnection httpURLConnectionA04;
        if (InetAddress.getByName(url.getHost()).isLoopbackAddress()) {
            Proxy proxy = Proxy.NO_PROXY;
            if (A0G[7].charAt(23) == 'a') {
                throw new RuntimeException();
            }
            A0G[7] = "OxfBNhcm3vCNP1oRQr9i0V4XObkL5ACx";
            httpURLConnectionA04 = A06(url, proxy);
        } else {
            httpURLConnectionA04 = A04(url);
        }
        httpURLConnectionA04.setConnectTimeout(this.A08);
        httpURLConnectionA04.setReadTimeout(this.A09);
        HashMap map2 = new HashMap();
        if (this.A0A != null) {
            map2.putAll(this.A0A.A00());
        }
        map2.putAll(this.A0B.A00());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnectionA04.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String strA03 = AbstractC1789Ne.A03(j, j2);
        if (strA03 != null) {
            httpURLConnectionA04.setRequestProperty(A02(172, 5, 55), strA03);
        }
        if (this.A0C != null) {
            httpURLConnectionA04.setRequestProperty(A02(Sdk.SDKError.Reason.AD_CLOSED_TEMPLATE_ERROR_VALUE, 10, 46), this.A0C);
        }
        httpURLConnectionA04.setRequestProperty(A02(5, 15, 53), z ? A02(490, 4, 86) : A02(503, 8, 63));
        httpURLConnectionA04.setInstanceFollowRedirects(z2);
        httpURLConnectionA04.setDoOutput(bArr != null);
        httpURLConnectionA04.setRequestMethod(NX.A01(i));
        if (bArr != null) {
            httpURLConnectionA04.setFixedLengthStreamingMode(bArr.length);
            httpURLConnectionA04.connect();
            OutputStream outputStream = httpURLConnectionA04.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnectionA04.connect();
        }
        return httpURLConnectionA04;
    }

    public static void A09() {
        A0F = new byte[]{66, -106, -111, 66, -119, -114, -80, -80, -78, -67, -63, 122, -110, -69, -80, -68, -79, -74, -69, -76, 121, -91, -92, -86, -101, -92, -86, 99, 123, -92, -103, -91, -102, -97, -92, -99, -61, -17, -18, -12, -27, -18, -12, -83, -52, -27, -18, -25, -12, -24, -70, -26, -27, -21, -36, -27, -21, -92, -55, -40, -27, -34, -36, -88, -55, -54, -59, -39, -48, -40, -84, -40, -40, -44, -88, -59, -40, -59, -73, -45, -39, -42, -57, -55, -80, -43, -33, -51, -40, -40, -37, -29, -47, -48, -116, -49, -34, -37, -33, -33, -103, -36, -34, -37, -32, -37, -49, -37, -40, -116, -34, -47, -48, -43, -34, -47, -49, -32, -116, -108, 102, -117, -128, -116, -117, -112, -122, -112, -111, -126, -117, -111, 61, -123, -126, 126, -127, -126, -113, -112, 61, 120, -104, -69, -81, -83, -64, -75, -69, -70, -87, -48, -57, -57, 123, -57, -54, -66, -68, -49, -60, -54, -55, 123, -51, -64, -65, -60, -51, -64, -66, -49, -95, -80, -67, -74, -76, -35, -8, -8, -87, -10, -22, -9, 2, -87, -5, -18, -19, -14, -5, -18, -20, -3, -4, -61, -87, -27, -2, -11, 8, 0, -11, -13, 4, -11, -12, -80, -45, -1, -2, 4, -11, -2, 4, -67, -36, -11, -2, -9, 4, -8, -80, -21, -52, -27, -36, -17, -25, -36, -38, -21, -36, -37, -105, -70, -26, -27, -21, -36, -27, -21, -92, -55, -40, -27, -34, -36, -105, -46, 127, -104, -113, -94, -102, -113, -115, -98, -113, -114, 74, -113, -100, -100, -103, -100, 74, -95, -110, -109, -106, -113, 74, -114, -109, -99, -115, -103, -104, -104, -113, -115, -98, -109, -104, -111, 126, -105, -100, -98, -103, -103, -104, -101, -99, -114, -115, 73, -103, -101, -104, -99, -104, -116, -104, -107, 73, -101, -114, -115, -110, -101, -114, -116, -99, 99, 73, -101, -71, -85, -72, 115, -121, -83, -85, -76, -70, -113, -64, -125, -66, -113, -109, -86, -91, -106, -92, 81, 89, -115, -107, 92, 90, 94, 89, -115, -107, 92, 90, 96, 89, -115, -107, 92, 90, 85, -62, -50, -52, -115, -64, -51, -61, -47, -50, -56, -61, -115, -50, -54, -57, -45, -45, -49, -115, -56, -51, -45, -60, -47, -51, -64, -53, -115, -57, -45, -45, -49, -115, -89, -45, -45, -49, -77, -47, -64, -51, -46, -49, -50, -47, -45, -125, -94, -57, -44, -51, -54, -60, -61, -88, -51, -49, -44, -45, -78, -45, -47, -60, -64, -52, -104, -92, -94, 99, -106, -93, -103, -89, -92, -98, -103, 99, -92, -96, -99, -87, -87, -91, 99, -98, -93, -87, -102, -89, -93, -106, -95, 99, -99, -87, -87, -91, 99, 125, -87, -87, -91, -119, -89, -106, -93, -88, -91, -92, -89, -87, 89, 123, -98, -83, -102, -103, -127, -102, -93, -100, -87, -99, 126, -93, -91, -86, -87, -120, -87, -89, -102, -106, -94, -43, -24, -41, -34, -13, -1, -1, -5, -49, -37, -37, -41, -38, -64, -69, -68, -59, -53, -64, -53, -48, -88, -95, -104, -85, -93, -104, -106, -89, -104, -105, 120, -95, -105, -126, -103, 124, -95, -93, -88, -89};
    }

    static {
        A09();
        A0H = Pattern.compile(A02(331, 25, 25));
    }

    @Deprecated
    public C4L() {
        this(null, 8000, 8000);
    }

    @Deprecated
    public C4L(String str, int i, int i2) {
        this(str, i, i2, false, null);
    }

    @Deprecated
    public C4L(String str, int i, int i2, boolean z, C1788Nd c1788Nd) {
        this(str, i, i2, z, c1788Nd, null, false);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Wt != com.google.common.base.Predicate<java.lang.String> */
    public C4L(String str, int i, int i2, boolean z, C1788Nd c1788Nd, InterfaceC2019Wt<String> interfaceC2019Wt, boolean z2) {
        super(true);
        this.A0C = str;
        this.A08 = i;
        this.A09 = i2;
        this.A0D = z;
        this.A0A = c1788Nd;
        this.A04 = interfaceC2019Wt;
        this.A0B = new C1788Nd();
        this.A0E = z2;
    }

    private int A00(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.A02 != -1) {
            long bytesRemaining = this.A02 - this.A01;
            if (bytesRemaining == 0) {
                return -1;
            }
            i2 = (int) Math.min(i2, bytesRemaining);
        }
        int i3 = ((InputStream) N1.A0f(this.A05)).read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        long j = this.A01;
        if (A0G[7].charAt(23) == 'a') {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[4] = "tOxuCLyEbNpkL";
        strArr[1] = "xWGiLZQxGBwvW";
        this.A01 = j + ((long) i3);
        A0F(i3);
        return i3;
    }

    @MetaExoPlayerCustomization
    public static long A01(HttpURLConnection httpURLConnection) {
        long jMax = -1;
        String headerField = httpURLConnection.getHeaderField(A02(36, 14, 104));
        boolean zIsEmpty = TextUtils.isEmpty(headerField);
        String strA02 = A02(327, 1, 26);
        String strA022 = A02(63, 21, 76);
        if (!zIsEmpty) {
            try {
                jMax = Long.parseLong(headerField);
            } catch (NumberFormatException unused) {
                MV.A05(strA022, A02(197, 27, 120) + headerField + strA02);
            }
        }
        String headerField2 = httpURLConnection.getHeaderField(A02(50, 13, 95));
        if (!TextUtils.isEmpty(headerField2)) {
            Matcher matcher = A0H.matcher(headerField2);
            if (matcher.find()) {
                try {
                    long j = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
                    if (jMax < 0) {
                        return j;
                    }
                    if (jMax != j) {
                        MV.A07(strA022, A02(120, 22, 5) + headerField + A02(328, 3, 75) + headerField2 + strA02);
                        jMax = Math.max(jMax, j);
                        return jMax;
                    }
                    return jMax;
                } catch (NumberFormatException unused2) {
                    MV.A05(strA022, A02(Sdk.SDKError.Reason.AD_LOAD_FAIL_EMPTY_BID_PAYLOAD_VALUE, 26, 95) + headerField2 + strA02);
                    return jMax;
                }
            }
            return jMax;
        }
        return jMax;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x012f, code lost:
    
        return r14;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.net.HttpURLConnection A03(com.facebook.ads.redexgen.X.NX r31) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 344
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C4L.A03(com.facebook.ads.redexgen.X.NX):java.net.HttpURLConnection");
    }

    private final HttpURLConnection A04(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    @MetaExoPlayerCustomization
    private final HttpURLConnection A06(URL url, Proxy proxy) throws IOException {
        return (HttpURLConnection) url.openConnection(proxy);
    }

    private URL A07(URL url, String str, NX nx) throws T6 {
        if (str == null) {
            throw new T6(A02(150, 22, 67), nx, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!A02(498, 5, 79).equals(protocol) && !A02(494, 4, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE).equals(protocol)) {
                throw new T6(A02(286, 31, 17) + protocol, nx, 2001, 1);
            }
            if (!this.A0D && !protocol.equals(url.getProtocol())) {
                throw new T6(A02(84, 36, 84) + url.getProtocol() + A02(0, 4, 10) + protocol + A02(4, 1, 72), nx, 2001, 1);
            }
            return url2;
        } catch (MalformedURLException e) {
            throw new T6(e, nx, 2001, 1);
        }
    }

    private void A08() {
        if (this.A06 != null) {
            try {
                this.A06.disconnect();
            } catch (Exception e) {
                MV.A08(A02(63, 21, 76), A02(250, 36, 18), e);
            }
            this.A06 = null;
        }
    }

    private void A0A(long j, NX nx) throws IOException {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            int i = ((InputStream) N1.A0f(this.A05)).read(bArr, 0, (int) Math.min(j, bArr.length));
            if (!Thread.currentThread().isInterrupted()) {
                if (i != -1) {
                    j -= (long) i;
                    A0F(i);
                } else {
                    throw new T6(nx, 2008, 1);
                }
            } else {
                throw new T6(new InterruptedIOException(), nx, 2000, 1);
            }
        }
    }

    public static void A0B(HttpURLConnection httpURLConnection, long j) {
        if (httpURLConnection == null || N1.A02 < 19) {
            return;
        }
        int i = N1.A02;
        if (A0G[7].charAt(23) == 'a') {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[4] = "oYk1pyLAkrhbV";
        strArr[1] = "OYwXHLGm308d0";
        if (i > 20) {
            return;
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (j == -1) {
                if (inputStream.read() == -1) {
                    return;
                }
            } else if (j <= 2048) {
                return;
            }
            String name = inputStream.getClass().getName();
            if (A02(356, 65, 71).equals(name) || A02(421, 69, 29).equals(name)) {
                Method declaredMethod = ((Class) AbstractC1747Ln.A01(inputStream.getClass().getSuperclass())).getDeclaredMethod(A02(511, 20, 27), new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, new Object[0]);
            }
        } catch (Exception unused) {
        }
    }

    public static boolean A0C(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(A02(20, 16, 30));
        String contentEncoding = A02(490, 4, 86);
        return contentEncoding.equalsIgnoreCase(headerField);
    }

    public final void A0I(String str, String str2) {
        AbstractC1747Ln.A01(str);
        AbstractC1747Ln.A01(str2);
        this.A0B.A01(str, str2);
    }

    @Override // com.facebook.ads.redexgen.X.C9J, com.facebook.ads.redexgen.X.TE
    public final Map<String, List<String>> A9W() {
        if (this.A06 == null) {
            return AbstractC1992Vq.A04();
        }
        return new C9G(this.A06.getHeaderFields());
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final Uri AA2() {
        if (this.A06 == null) {
            return null;
        }
        return Uri.parse(this.A06.getURL().toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x016f, code lost:
    
        if ((r3 instanceof com.facebook.ads.redexgen.X.T6) != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0173, code lost:
    
        throw ((com.facebook.ads.redexgen.X.T6) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0185, code lost:
    
        if ((r3 instanceof com.facebook.ads.redexgen.X.T6) != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x018e, code lost:
    
        throw new com.facebook.ads.redexgen.X.T6(r3, r16, 2000, 1);
     */
    @Override // com.facebook.ads.redexgen.X.TE
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long AHv(final com.facebook.ads.redexgen.X.NX r16) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 429
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C4L.AHv(com.facebook.ads.redexgen.X.NX):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    @Override // com.facebook.ads.redexgen.X.TE
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void close() throws com.facebook.ads.redexgen.X.T6 {
        /*
            r8 = this;
            r3 = 0
            r6 = 0
            java.io.InputStream r7 = r8.A05     // Catch: java.lang.Throwable -> L60
            if (r7 == 0) goto L30
            long r1 = r8.A02     // Catch: java.lang.Throwable -> L60
            r4 = -1
            int r0 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r0 != 0) goto L14
        Le:
            java.net.HttpURLConnection r0 = r8.A06     // Catch: java.lang.Throwable -> L60
            A0B(r0, r4)     // Catch: java.lang.Throwable -> L60
            goto L1a
        L14:
            long r4 = r8.A02     // Catch: java.lang.Throwable -> L60
            long r0 = r8.A01     // Catch: java.lang.Throwable -> L60
            long r4 = r4 - r0
            goto Le
        L1a:
            r7.close()     // Catch: java.io.IOException -> L1e java.lang.Throwable -> L60
            goto L30
        L1e:
            r5 = move-exception
            com.facebook.ads.redexgen.X.NX r0 = r8.A03     // Catch: java.lang.Throwable -> L60
            java.lang.Object r4 = com.facebook.ads.redexgen.X.N1.A0f(r0)     // Catch: java.lang.Throwable -> L60
            com.facebook.ads.redexgen.X.NX r4 = (com.facebook.ads.redexgen.X.NX) r4     // Catch: java.lang.Throwable -> L60
            r2 = 2000(0x7d0, float:2.803E-42)
            r1 = 3
            com.facebook.ads.redexgen.X.T6 r0 = new com.facebook.ads.redexgen.X.T6     // Catch: java.lang.Throwable -> L60
            r0.<init>(r5, r4, r2, r1)     // Catch: java.lang.Throwable -> L60
            throw r0     // Catch: java.lang.Throwable -> L60
        L30:
            r8.A05 = r6
            r8.A08()
            boolean r4 = r8.A07
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C4L.A0G
            r0 = 7
            r1 = r1[r0]
            r0 = 23
            char r1 = r1.charAt(r0)
            r0 = 97
            if (r1 == r0) goto L5a
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4L.A0G
            java.lang.String r1 = "IKlqhotxoqxb0sXFSHQCNyXwMGh2A"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "2ShhlgZ2mV8xyohXA7l4PYfcRFl2zSH"
            r0 = 0
            r2[r0] = r1
            if (r4 == 0) goto L59
            r8.A07 = r3
            r8.A0E()
        L59:
            return
        L5a:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L60:
            r4 = move-exception
            r8.A05 = r6
            r8.A08()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4L.A0G
            r0 = 4
            r1 = r2[r0]
            r0 = 1
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto Lab
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4L.A0G
            java.lang.String r1 = "u1XyGuwIlt9s0"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "Vm5En7AKzwSAn"
            r0 = 1
            r2[r0] = r1
            boolean r0 = r8.A07
            if (r0 == 0) goto L9a
        L88:
            r8.A07 = r3
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C4L.A0G
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 19
            if (r1 == r0) goto L9b
            r8.A0E()
        L9a:
            throw r4
        L9b:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4L.A0G
            java.lang.String r1 = "UKl3"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "R8V0"
            r0 = 3
            r2[r0] = r1
            r8.A0E()
            goto L9a
        Lab:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4L.A0G
            java.lang.String r1 = "dSIHxMwnwlCy6xxTpfV"
            r0 = 2
            r2[r0] = r1
            boolean r0 = r8.A07
            if (r0 == 0) goto L9a
            goto L88
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C4L.close():void");
    }

    @Override // com.facebook.ads.redexgen.X.KR
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            return A00(bArr, i, i2);
        } catch (IOException e) {
            throw T6.A04(e, (NX) N1.A0f(this.A03), 2);
        }
    }
}
