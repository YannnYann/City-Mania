package io.bidmachine.analytics.internal.A;

import com.ironsource.C3746nc;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes4.dex */
public enum c {
    Get(C3746nc.a),
    Post(C3746nc.b);

    private final String a;

    c(String str) {
        this.a = str;
    }

    public final void a(URLConnection uRLConnection) throws ProtocolException {
        if (uRLConnection instanceof HttpURLConnection) {
            ((HttpURLConnection) uRLConnection).setRequestMethod(this.a);
        }
    }
}
