package com.ironsource.adqualitysdk.sdk.i;

import android.os.SystemClock;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.vungle.ads.internal.protos.Sdk;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮄ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0890 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f3398 = StringFog.decrypt("19d9H7XzYgQ=\n", "mbIJSsGaDnc=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static C0571 m1513(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod(StringFog.decrypt("b08L\n", "KApfysevGmc=\n"));
            String str2 = AbstractC0061.f813;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            String strM1516 = m1516(httpURLConnection, (String) null);
            int responseCode = httpURLConnection.getResponseCode();
            String responseMessage = httpURLConnection.getResponseMessage();
            if (responseCode >= 400) {
                httpURLConnection.disconnect();
            }
            return new C0571(strM1516, responseCode, responseMessage, SystemClock.elapsedRealtime() - jElapsedRealtime);
        } catch (Throwable th) {
            String str3 = f3398;
            AbstractC0182.m1156(str3, str3, StringFog.decrypt("lAnx8ACp7oK/H+rxFan6gqVb8foD/PiUpUGj\n", "0XuDn3KJnec=\n") + th.getLocalizedMessage(), th, null, false);
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1516(HttpURLConnection httpURLConnection, String str) {
        InputStream inputStream;
        BufferedReader bufferedReader;
        StringBuffer stringBuffer;
        String string = null;
        if (str != null) {
            C0159 c0159 = C0697.f2826.f2829;
            if (c0159 == null) {
                AbstractC0182.m1149(f3398, StringFog.decrypt("Ny5DwbMpt38HT3L+8jy5ZA4OZfz2cfhuAwFp/+dqvGgBHX7g52qqaBEfaP7gL/hrDR0n4vY7rWgR\nG070rg==\n", "Ym8HkJNK2A0=\n") + str);
                return null;
            }
            try {
                if (httpURLConnection.getResponseCode() == 200) {
                    String strM1517 = m1517(httpURLConnection, str, c0159);
                    if (strM1517 != null) {
                        return strM1517;
                    }
                    AbstractC0182.m1149(f3398, StringFog.decrypt("gwb02f1vazymKN77uD1qKrU1yfipdGEh9iHR4bF4anT2NdX7rXJgPLNn0ue5ZC4mpWfe/bFxLmel\nM8LtvHAuLro11em5ZC4suSnD/bB4amY=\n", "1kewiN0dDk8=\n"));
                    return null;
                }
            } catch (IOException e) {
                String str2 = f3398;
                AbstractC0182.m1150(str2, str2, StringFog.decrypt("0yG110Q1WnahJ6nDTntKe+QnrYdNOkB/5CDqh14oQH3mZLbLSjJHM/Mhp8MRew==\n", "gUTGpytbKRM=\n") + e.getMessage(), false);
            }
        }
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (Throwable th) {
            th = th;
            inputStream = null;
        }
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            try {
                stringBuffer = new StringBuffer();
            } catch (Throwable th2) {
                th = th2;
                Throwable th3 = th;
                try {
                    String str3 = f3398;
                    AbstractC0182.m1156(str3, str3, StringFog.decrypt("ZhWUEtZkBCFXE48Tw2QRIVAXiRPXIQ==\n", "I2fmfaREY0Q=\n"), th3, null, false);
                } finally {
                    m1520(inputStream);
                    m1520(bufferedReader);
                }
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
            Throwable th32 = th;
            String str32 = f3398;
            AbstractC0182.m1156(str32, str32, StringFog.decrypt("ZhWUEtZkBCFXE48Tw2QRIVAXiRPXIQ==\n", "I2fmfaREY0Q=\n"), th32, null, false);
            return string;
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            if (stringBuffer.length() > 0) {
                stringBuffer.append('\r');
            }
            stringBuffer.append(line);
            return string;
        }
        string = stringBuffer.toString();
        return string;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x006c  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.ironsource.adqualitysdk.sdk.i.C1028 m1515(java.net.HttpURLConnection r18, org.json.JSONObject r19, java.lang.String r20, com.ironsource.adqualitysdk.sdk.i.r r21, android.content.Context r22) throws java.io.UnsupportedEncodingException {
        /*
            Method dump skipped, instruction units count: 461
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.AbstractC0890.m1515(java.net.HttpURLConnection, org.json.JSONObject, java.lang.String, com.ironsource.adqualitysdk.sdk.i.r, android.content.Context):com.ironsource.adqualitysdk.sdk.i.ﾘ");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.ironsource.adqualitysdk.sdk.i.C0571 m1514(org.json.JSONObject r9, java.lang.String r10, com.ironsource.adqualitysdk.sdk.i.r r11, android.content.Context r12, boolean r13) {
        /*
            r1 = 0
            java.net.HttpURLConnection r2 = m1519(r10)     // Catch: java.lang.Throwable -> L12
            if (r13 == 0) goto L3a
            com.ironsource.adqualitysdk.sdk.i.ﾘ r10 = m1515(r2, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L17
            if (r10 == 0) goto L3a
            byte[] r11 = r10.f3863     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L17
            java.lang.String r10 = r10.f3862     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L17
            goto L3c
        L12:
            r0 = move-exception
            r9 = r0
            r5 = r9
            goto L88
        L17:
            r0 = move-exception
            r10 = r0
            java.lang.String r11 = com.ironsource.adqualitysdk.sdk.i.AbstractC0890.f3398     // Catch: java.lang.Throwable -> L12
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L12
            r12.<init>()     // Catch: java.lang.Throwable -> L12
            java.lang.String r13 = "MNxMTtCrPZEa3A9PwrI5iBDWD1Pb+y+ZHN5KWIX7PIsc3Egc2bcokRuIDw==\n"
            java.lang.String r0 = "dbIvPKnbSfg=\n"
            java.lang.String r13 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r13, r0)     // Catch: java.lang.Throwable -> L12
            r12.append(r13)     // Catch: java.lang.Throwable -> L12
            java.lang.String r10 = r10.getMessage()     // Catch: java.lang.Throwable -> L12
            r12.append(r10)     // Catch: java.lang.Throwable -> L12
            java.lang.String r10 = r12.toString()     // Catch: java.lang.Throwable -> L12
            r12 = 0
            com.ironsource.adqualitysdk.sdk.i.AbstractC0182.m1150(r11, r11, r10, r12)     // Catch: java.lang.Throwable -> L12
        L3a:
            r10 = r1
            r11 = r10
        L3c:
            if (r11 != 0) goto L42
            byte[] r11 = m1521(r2, r9)     // Catch: java.lang.Throwable -> L12
        L42:
            java.lang.String r9 = com.ironsource.adqualitysdk.sdk.i.AbstractC0061.f813     // Catch: java.lang.Throwable -> L12
            long r12 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L12
            r2.connect()     // Catch: java.lang.Throwable -> L12
            java.io.DataOutputStream r9 = new java.io.DataOutputStream     // Catch: java.lang.Throwable -> L12
            java.io.OutputStream r0 = r2.getOutputStream()     // Catch: java.lang.Throwable -> L12
            r9.<init>(r0)     // Catch: java.lang.Throwable -> L12
            r9.write(r11)     // Catch: java.lang.Throwable -> L7c
            r9.flush()     // Catch: java.lang.Throwable -> L7c
            r9.close()     // Catch: java.lang.Throwable -> L12
            java.lang.String r4 = m1516(r2, r10)     // Catch: java.lang.Throwable -> L12
            int r5 = r2.getResponseCode()     // Catch: java.lang.Throwable -> L12
            java.lang.String r6 = r2.getResponseMessage()     // Catch: java.lang.Throwable -> L12
            r9 = 400(0x190, float:5.6E-43)
            if (r5 < r9) goto L70
            r2.disconnect()     // Catch: java.lang.Throwable -> L12
        L70:
            com.ironsource.adqualitysdk.sdk.i.ᔭ r3 = new com.ironsource.adqualitysdk.sdk.i.ᔭ     // Catch: java.lang.Throwable -> L12
            long r9 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L12
            long r7 = r9 - r12
            r3.<init>(r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L12
            return r3
        L7c:
            r0 = move-exception
            r10 = r0
            r9.close()     // Catch: java.lang.Throwable -> L82
            goto L87
        L82:
            r0 = move-exception
            r9 = r0
            r10.addSuppressed(r9)     // Catch: java.lang.Throwable -> L12
        L87:
            throw r10     // Catch: java.lang.Throwable -> L12
        L88:
            java.lang.String r2 = com.ironsource.adqualitysdk.sdk.i.AbstractC0890.f3398
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "VXBK7hLUCut+ZlHvB9QJ4WN2GPMFhQzrY3YCoQ==\n"
            java.lang.String r11 = "EAI4gWD0eY4=\n"
            java.lang.String r10 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r10, r11)
            r9.append(r10)
            java.lang.String r10 = r5.getLocalizedMessage()
            r9.append(r10)
            java.lang.String r4 = r9.toString()
            r6 = 0
            r7 = 0
            r3 = r2
            com.ironsource.adqualitysdk.sdk.i.AbstractC0182.m1156(r2, r3, r4, r5, r6, r7)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.AbstractC0890.m1514(org.json.JSONObject, java.lang.String, com.ironsource.adqualitysdk.sdk.i.r, android.content.Context, boolean):com.ironsource.adqualitysdk.sdk.i.ᔭ");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] m1521(java.net.HttpURLConnection r3, org.json.JSONObject r4) throws java.lang.Throwable {
        /*
            java.lang.String r4 = m1518(r4)
            java.lang.String r0 = "JV67rvo=\n"
            java.lang.String r1 = "cAr9g8JFw+c=\n"
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r0, r1)
            byte[] r0 = r4.getBytes(r0)
            int r4 = r4.length()
            r1 = 256(0x100, float:3.59E-43)
            if (r4 <= r1) goto L5e
            java.lang.String r4 = "uUKANueeYyq/Q40t5pl5YA==\n"
            java.lang.String r1 = "+i3uQoLwFwc=\n"
            java.lang.String r4 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r4, r1)
            java.lang.String r1 = "BdcDjw==\n"
            java.lang.String r2 = "Yq1q/4op9gM=\n"
            java.lang.String r1 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r1, r2)
            r3.setRequestProperty(r4, r1)
            r3 = 0
            java.io.ByteArrayOutputStream r4 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L46
            r4.<init>()     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L46
            java.util.zip.GZIPOutputStream r1 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L46
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L46
            r1.write(r0)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            r1.flush()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            r1.close()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            byte[] r3 = r4.toByteArray()     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L46
            return r3
        L44:
            r4 = move-exception
            goto L56
        L46:
            r4 = move-exception
            goto L4c
        L48:
            r3 = move-exception
            goto L58
        L4a:
            r3 = move-exception
            goto L4e
        L4c:
            r1 = r3
            r3 = r4
        L4e:
            java.lang.RuntimeException r4 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L54
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L54
            throw r4     // Catch: java.lang.Throwable -> L54
        L54:
            r4 = move-exception
            r3 = r1
        L56:
            r1 = r3
            r3 = r4
        L58:
            if (r1 == 0) goto L5d
            r1.close()     // Catch: java.lang.Exception -> L5d
        L5d:
            throw r3
        L5e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.AbstractC0890.m1521(java.net.HttpURLConnection, org.json.JSONObject):byte[]");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static HttpURLConnection m1519(String str) throws ProtocolException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(StringFog.decrypt("ckl6yA==\n", "IgYpnLOJvVk=\n"));
        httpURLConnection.setRequestProperty(StringFog.decrypt("ddZN+3LlLQJiwFPq\n", "NrkjjxeLWS8=\n"), StringFog.decrypt("tDvvMALZ6Be8JPFzAcnmDe5r/DQKyPoGoXbqKA2XsQ==\n", "1UufXGu6iWM=\n"));
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setReadTimeout(60000);
        return httpURLConnection;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1517(HttpURLConnection httpURLConnection, String str, C0159 c0159) {
        Throwable th;
        InputStream inputStream;
        Throwable th2;
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
            try {
                int contentLength = httpURLConnection.getContentLength();
                if (contentLength <= 0) {
                    contentLength = 65536;
                }
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(contentLength);
                try {
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        byteArrayOutputStream2.write(bArr, 0, i);
                    }
                    byte[] bArrM1135 = c0159.m1135(byteArrayOutputStream2.toByteArray(), str);
                    if (bArrM1135 == null) {
                        AbstractC0182.m1149(f3398, StringFog.decrypt("fGpzyq4D+8RbUkfv3ALt10ZFRP6uFfvTXFlZ/upH8NJFRw==\n", "KSs3m45nnqc=\n"));
                        m1520(inputStream);
                        m1520(byteArrayOutputStream2);
                        return null;
                    }
                    String str2 = new String(bArrM1135, StringFog.decrypt("EoQOIC4=\n", "R9BIDRbZef0=\n"));
                    m1520(inputStream);
                    m1520(byteArrayOutputStream2);
                    return str2;
                } catch (Throwable th3) {
                    th2 = th3;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    try {
                        String str3 = f3398;
                        AbstractC0182.m1149(str3, StringFog.decrypt("iOu9hvm+kZqtxZekvOyQjL7YgKetpZuH/cyYvrWpkNP9\n", "3ar519nM9Ok=\n") + th2.getMessage());
                        AbstractC0182.m1156(str3, str3, StringFog.decrypt("rZKU96zE2heclI/2ucvZF4uSn+iqjdMVyJKD666L0wGN\n", "6ODmmN7kvXI=\n"), th2, null, false);
                        return null;
                    } finally {
                        m1520(inputStream);
                        m1520(byteArrayOutputStream);
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                th2 = th;
                byteArrayOutputStream = null;
                String str32 = f3398;
                AbstractC0182.m1149(str32, StringFog.decrypt("iOu9hvm+kZqtxZekvOyQjL7YgKetpZuH/cyYvrWpkNP9\n", "3ar519nM9Ok=\n") + th2.getMessage());
                AbstractC0182.m1156(str32, str32, StringFog.decrypt("rZKU96zE2heclI/2ucvZF4uSn+iqjdMVyJKD666L0wGN\n", "6ODmmN7kvXI=\n"), th2, null, false);
                return null;
            }
        } catch (Throwable th5) {
            th = th5;
            inputStream = null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1520(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1518(JSONObject jSONObject) {
        String strM1244;
        String string = jSONObject.toString();
        String str = AbstractC0383.f2010;
        try {
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(new SecretKeySpec(AbstractC0383.f2009.getBytes(StringFog.decrypt("SJjpzOY=\n", "Hcyv4d6m3tA=\n")), mac.getAlgorithm()));
            strM1244 = AbstractC0345.m1244(mac.doFinal(string.replaceAll(" ", "").replaceAll("\n", "").getBytes(StringFog.decrypt("ZxWESdw=\n", "MkHCZOQTaF8=\n"))));
        } catch (Exception e) {
            AbstractC0182.m1147(AbstractC0383.f2010, StringFog.decrypt("bxR3fK+wiw==\n", "KmYFE92Kq74=\n") + e.getLocalizedMessage());
            strM1244 = null;
        }
        String strSubstring = string.substring(0, string.lastIndexOf(Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE));
        StringBuilder sb = new StringBuilder();
        sb.append(strSubstring);
        return AbstractC0829.m1456("pOU=\n", "hpgEAibVI2I=\n", AbstractC0594.m1349("4ZmqEPgP7g==\n", "zbvCY9o1zIQ=\n", sb, strM1244));
    }
}
