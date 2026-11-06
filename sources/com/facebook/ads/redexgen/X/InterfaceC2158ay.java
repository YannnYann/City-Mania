package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ay, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public interface InterfaceC2158ay {
    boolean AEu(C2161b1 c2161b1);

    HttpURLConnection AHy(String str, Proxy proxy) throws IOException;

    InputStream AHz(HttpURLConnection httpURLConnection) throws IOException;

    OutputStream AI0(HttpURLConnection httpURLConnection) throws IOException;

    void AIJ(HttpURLConnection httpURLConnection, EnumC2166b6 enumC2166b6, String str) throws IOException;

    byte[] AIg(InputStream inputStream) throws IOException;

    void AMS(OutputStream outputStream, byte[] bArr) throws IOException;
}
