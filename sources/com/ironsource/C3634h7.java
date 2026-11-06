package com.ironsource;

import android.text.TextUtils;
import com.ironsource.InterfaceC3669j7;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.p;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: renamed from: com.ironsource.h7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3634h7 {
    private static final int a = 15000;
    private static final String b = "GET";
    private static final String c = "POST";
    private static final String d = "UTF-8";
    public static final String e = "ERROR:";
    private static final String f = "Bad Request - 400";
    private static final ExecutorService g = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: com.ironsource.h7$a */
    public class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ InterfaceC3652i7 c;

        public a(String str, String str2, InterfaceC3652i7 interfaceC3652i7) {
            this.a = str;
            this.b = str2;
            this.c = interfaceC3652i7;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            HttpURLConnection httpURLConnectionB;
            OutputStream outputStream;
            try {
                httpURLConnectionB = C3634h7.b(this.a);
            } catch (Exception e) {
                e = e;
                httpURLConnectionB = null;
                outputStream = null;
            } catch (Throwable th) {
                th = th;
                httpURLConnectionB = null;
                outputStream = null;
            }
            try {
                outputStream = httpURLConnectionB.getOutputStream();
                try {
                    try {
                        C3634h7.a(this.b, outputStream);
                        int responseCode = httpURLConnectionB.getResponseCode();
                        boolean z = responseCode == 200;
                        if (!z) {
                            IronLog.INTERNAL.error("invalid response code " + responseCode + " sending request");
                        }
                        this.c.a(z);
                    } catch (Exception e2) {
                        e = e2;
                        C3813r4.d().a(e);
                        IronLog.INTERNAL.error("exception while sending request " + e.getMessage());
                        this.c.a(false);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    C3634h7.a(outputStream, httpURLConnectionB, (BufferedReader) null);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                outputStream = null;
            } catch (Throwable th3) {
                th = th3;
                outputStream = null;
                C3634h7.a(outputStream, httpURLConnectionB, (BufferedReader) null);
                throw th;
            }
            C3634h7.a(outputStream, httpURLConnectionB, (BufferedReader) null);
        }
    }

    public static String a(String str) throws Exception {
        return a(str, (p.c) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HttpURLConnection b(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setReadTimeout(a);
        httpURLConnection.setConnectTimeout(a);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        return httpURLConnection;
    }

    public static String a(String str, p.c cVar) throws Throwable {
        HttpURLConnection httpURLConnection;
        BufferedReader bufferedReader;
        Exception e2;
        BufferedReader bufferedReader2;
        Throwable th;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setReadTimeout(a);
                httpURLConnection.setConnectTimeout(a);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() == 400) {
                    if (cVar != null) {
                        cVar.a("Bad Request - 400");
                    }
                    a((OutputStream) null, httpURLConnection, (BufferedReader) null);
                    return null;
                }
                bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                try {
                    String strA = a(bufferedReader2);
                    a((OutputStream) null, httpURLConnection, bufferedReader2);
                    return strA;
                } catch (Exception e3) {
                    e2 = e3;
                    try {
                        C3813r4.d().a(e2);
                        a((OutputStream) null, httpURLConnection, bufferedReader2);
                        return null;
                    } catch (Throwable th2) {
                        bufferedReader = bufferedReader2;
                        th = th2;
                        BufferedReader bufferedReader3 = bufferedReader;
                        th = th;
                        bufferedReader2 = bufferedReader3;
                        a((OutputStream) null, httpURLConnection, bufferedReader2);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    a((OutputStream) null, httpURLConnection, bufferedReader2);
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
                e2 = e;
                bufferedReader2 = null;
                C3813r4.d().a(e2);
                a((OutputStream) null, httpURLConnection, bufferedReader2);
                return null;
            } catch (Throwable th4) {
                th = th4;
                bufferedReader = null;
                BufferedReader bufferedReader32 = bufferedReader;
                th = th;
                bufferedReader2 = bufferedReader32;
                a((OutputStream) null, httpURLConnection, bufferedReader2);
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            httpURLConnection = null;
        } catch (Throwable th5) {
            th = th5;
            httpURLConnection = null;
            bufferedReader = null;
        }
    }

    public static void a(String str, String str2, InterfaceC3652i7 interfaceC3652i7) {
        g.submit(new a(str, str2, interfaceC3652i7));
    }

    public static String a(String str, String str2, p.c cVar) {
        InterfaceC3669j7 interfaceC3669j7A = a(str, str2);
        if (interfaceC3669j7A instanceof InterfaceC3669j7.a) {
            InterfaceC3669j7.a aVar = (InterfaceC3669j7.a) interfaceC3669j7A;
            if (aVar.b()) {
                return null;
            }
            cVar.a(aVar.a());
            return null;
        }
        return ((InterfaceC3669j7.b) interfaceC3669j7A).d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    public static InterfaceC3669j7 a(String str, String str2) throws Throwable {
        OutputStream outputStream;
        Exception e2;
        Exception e3;
        BufferedReader bufferedReader;
        ?? r0 = 0;
        r0 = 0;
        r0 = 0;
        try {
            try {
                str = b(str);
                try {
                    str.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                    outputStream = str.getOutputStream();
                } catch (Exception e4) {
                    e2 = e4;
                    outputStream = null;
                } catch (Throwable th) {
                    th = th;
                    outputStream = null;
                }
            } catch (Throwable th2) {
                r0 = str2;
                th = th2;
            }
            try {
                a(str2, outputStream);
                int responseCode = str.getResponseCode();
                if (responseCode == 200) {
                    bufferedReader = new BufferedReader(new InputStreamReader(str.getInputStream()));
                    try {
                        String strA = a(bufferedReader);
                        if (strA != null) {
                            InterfaceC3669j7.b bVar = new InterfaceC3669j7.b(strA);
                            a(outputStream, (HttpURLConnection) str, bufferedReader);
                            return bVar;
                        }
                        InterfaceC3669j7.a.c cVar = new InterfaceC3669j7.a.c();
                        a(outputStream, (HttpURLConnection) str, bufferedReader);
                        return cVar;
                    } catch (Exception e5) {
                        e3 = e5;
                        C3813r4.d().a(e3);
                        IronLog.INTERNAL.error("exception while sending request " + e3.getMessage());
                        InterfaceC3669j7.a.C1041a c1041a = new InterfaceC3669j7.a.C1041a(e3);
                        a(outputStream, (HttpURLConnection) str, bufferedReader);
                        return c1041a;
                    }
                }
                InterfaceC3669j7.a.b bVar2 = new InterfaceC3669j7.a.b(responseCode, str.getResponseMessage());
                a(outputStream, (HttpURLConnection) str, (BufferedReader) null);
                return bVar2;
            } catch (Exception e6) {
                e2 = e6;
                e3 = e2;
                bufferedReader = null;
                C3813r4.d().a(e3);
                IronLog.INTERNAL.error("exception while sending request " + e3.getMessage());
                InterfaceC3669j7.a.C1041a c1041a2 = new InterfaceC3669j7.a.C1041a(e3);
                a(outputStream, (HttpURLConnection) str, bufferedReader);
                return c1041a2;
            } catch (Throwable th3) {
                th = th3;
                a(outputStream, (HttpURLConnection) str, (BufferedReader) r0);
                throw th;
            }
        } catch (Exception e7) {
            e2 = e7;
            str = 0;
            outputStream = null;
        } catch (Throwable th4) {
            th = th4;
            str = 0;
            outputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(String str, OutputStream outputStream) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, d));
        bufferedWriter.write(str);
        bufferedWriter.flush();
        bufferedWriter.close();
    }

    private static String a(BufferedReader bufferedReader) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            sb.append(line);
        }
        String string = sb.toString();
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(OutputStream outputStream, HttpURLConnection httpURLConnection, BufferedReader bufferedReader) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e2) {
                C3813r4.d().a(e2);
                IronLog.INTERNAL.error("exception while closing output stream " + e2.getMessage());
            }
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (IOException e3) {
                C3813r4.d().a(e3);
                IronLog.INTERNAL.error("exception while closing reader " + e3.getMessage());
            }
        }
    }
}
