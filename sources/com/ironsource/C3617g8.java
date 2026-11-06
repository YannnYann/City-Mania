package com.ironsource;

import android.net.Uri;
import android.util.Log;
import android.util.Pair;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLException;

/* JADX INFO: renamed from: com.ironsource.g8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3617g8 {
    private static final String a = "POST";
    private static final String b = "GET";
    private static final String c = "ISHttpService";

    /* JADX INFO: renamed from: com.ironsource.g8$a */
    public static class a {
        private static final int h = 15000;
        private static final int i = 15000;
        private static final String j = "UTF-8";
        final String a;
        final String b;
        final String c;
        final int d;
        final int e;
        final String f;
        ArrayList<Pair<String, String>> g;

        /* JADX INFO: renamed from: com.ironsource.g8$a$a, reason: collision with other inner class name */
        public static class C1039a {
            String b;
            String d;
            List<Pair<String, String>> a = new ArrayList();
            String c = "POST";
            int e = 15000;
            int f = 15000;
            String g = a.j;

            public C1039a a(String str) {
                this.d = str;
                return this;
            }

            public C1039a b(String str) {
                this.g = str;
                return this;
            }

            public C1039a c(String str) {
                this.b = str;
                return this;
            }

            public C1039a d(String str) {
                this.c = str;
                return this;
            }

            public C1039a a(int i) {
                this.e = i;
                return this;
            }

            public C1039a b(int i) {
                this.f = i;
                return this;
            }

            public C1039a a(Pair<String, String> pair) {
                this.a.add(pair);
                return this;
            }

            public C1039a a(List<Pair<String, String>> list) {
                this.a.addAll(list);
                return this;
            }

            public a a() {
                return new a(this);
            }
        }

        public a(C1039a c1039a) {
            this.a = c1039a.b;
            this.b = c1039a.c;
            this.c = c1039a.d;
            this.g = new ArrayList<>(c1039a.a);
            this.d = c1039a.e;
            this.e = c1039a.f;
            this.f = c1039a.g;
        }

        public boolean a() {
            return "POST".equals(this.b);
        }
    }

    public static Rd a(String str, String str2, List<Pair<String, String>> list) throws Exception {
        Uri uriBuild = Uri.parse(str).buildUpon().encodedQuery(str2).build();
        a.C1039a c1039a = new a.C1039a();
        c1039a.c(uriBuild.toString()).a(str2).d("GET").a(list);
        return b(c1039a.a());
    }

    public static Rd b(String str, String str2, List<Pair<String, String>> list) throws Exception {
        a.C1039a c1039a = new a.C1039a();
        c1039a.c(str).a(str2).d("POST").a(list);
        return b(c1039a.a());
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0067: MOVE (r8 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:32:0x0067 */
    public static Rd b(a aVar) throws Exception {
        HttpURLConnection httpURLConnectionA;
        InputStream inputStream;
        InputStream inputStream2;
        if (a(aVar.a, aVar.c)) {
            Rd rd = new Rd();
            InputStream inputStream3 = null;
            inputStream3 = null;
            inputStream3 = null;
            inputStream3 = null;
            inputStream3 = null;
            HttpURLConnection httpURLConnection = null;
            try {
                try {
                    httpURLConnectionA = a(aVar);
                } catch (Throwable th) {
                    th = th;
                    httpURLConnectionA = null;
                    inputStream3 = inputStream2;
                }
                try {
                    a(httpURLConnectionA, aVar.g);
                    a(httpURLConnectionA, aVar);
                    inputStream3 = httpURLConnectionA.getInputStream();
                    rd.a = httpURLConnectionA.getResponseCode();
                    if (inputStream3 != null) {
                        rd.b = C3899vg.a(inputStream3);
                    }
                } catch (InterruptedIOException e) {
                    e = e;
                    Log.d(c, "Failed post to " + aVar.a + " exception: " + e.getMessage());
                    throw e;
                } catch (SSLException e2) {
                    e = e2;
                    Log.d(c, "Failed post to " + aVar.a + " exception: " + e.getMessage());
                    throw e;
                } catch (IOException e3) {
                    e = e3;
                    inputStream = inputStream3;
                    httpURLConnection = httpURLConnectionA;
                    C3813r4.d().a(e);
                    if (httpURLConnection != null && httpURLConnection.getHeaderFields().isEmpty()) {
                        throw new Mc(e);
                    }
                    if (httpURLConnection != null) {
                        int responseCode = httpURLConnection.getResponseCode();
                        rd.a = responseCode;
                        if (responseCode >= 400) {
                            Log.d(c, "Failed post to " + aVar.a + " StatusCode: " + rd.a);
                            if (inputStream != null) {
                                InputStream inputStream4 = inputStream;
                                httpURLConnectionA = httpURLConnection;
                                inputStream3 = inputStream4;
                                inputStream3.close();
                            } else {
                                httpURLConnectionA = httpURLConnection;
                            }
                        }
                    }
                    throw e;
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream3 != null) {
                        inputStream3.close();
                    }
                    if (httpURLConnectionA != null) {
                        httpURLConnectionA.disconnect();
                    }
                    throw th;
                }
            } catch (InterruptedIOException e4) {
                e = e4;
                Log.d(c, "Failed post to " + aVar.a + " exception: " + e.getMessage());
                throw e;
            } catch (SSLException e5) {
                e = e5;
                Log.d(c, "Failed post to " + aVar.a + " exception: " + e.getMessage());
                throw e;
            } catch (IOException e6) {
                e = e6;
                inputStream = null;
            } catch (Throwable th3) {
                th = th3;
                httpURLConnectionA = null;
            }
            if (inputStream3 != null) {
                inputStream3.close();
            }
            httpURLConnectionA.disconnect();
            return rd;
        }
        throw new InvalidParameterException("not valid params");
    }

    private static void a(HttpURLConnection httpURLConnection, a aVar) throws Exception {
        if (aVar.a()) {
            byte[] bytes = aVar.c.getBytes(aVar.f);
            httpURLConnection.setRequestProperty("Content-Length", Integer.toString(bytes.length));
            a(httpURLConnection, bytes);
        }
    }

    private static void a(HttpURLConnection httpURLConnection, List<Pair<String, String>> list) throws ProtocolException {
        for (Pair<String, String> pair : list) {
            httpURLConnection.setRequestProperty((String) pair.first, (String) pair.second);
        }
    }

    private static void a(HttpURLConnection httpURLConnection, byte[] bArr) throws Exception {
        httpURLConnection.setDoOutput(true);
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        try {
            dataOutputStream.write(bArr);
            dataOutputStream.flush();
        } finally {
            dataOutputStream.close();
        }
    }

    private static boolean a(String str, String str2) {
        return (str == null || str.isEmpty() || str2 == null || str2.isEmpty()) ? false : true;
    }

    private static HttpURLConnection a(a aVar) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(aVar.a).openConnection();
        httpURLConnection.setConnectTimeout(aVar.d);
        httpURLConnection.setReadTimeout(aVar.e);
        httpURLConnection.setRequestMethod(aVar.b);
        return httpURLConnection;
    }
}
