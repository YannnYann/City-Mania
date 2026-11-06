package ads_mobile_sdk;

import java.net.URL;
import java.util.Map;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes.dex */
public final class f81 {
    public final URL a;
    public final String b;
    public final Map c;
    public final byte[] d;
    public final ss0 e;
    public final g9 f;

    public final e81 g() {
        return new e81(this);
    }

    public f81(URL url, String str, Map map, byte[] bArr, ss0 ss0Var, g9 g9Var) {
        this.a = url;
        this.b = str;
        this.c = map;
        this.d = bArr;
        this.e = ss0Var;
        this.f = g9Var;
    }

    public final URL f() {
        return this.a;
    }

    public final String e() {
        return this.b;
    }

    public final Map c() {
        return this.c;
    }

    public final byte[] a() {
        return this.d;
    }

    public final ss0 b() {
        return this.e;
    }

    public final g9 d() {
        return this.f;
    }

    public final String toString() {
        return "HttpRequest{method=" + this.b + ", url=" + this.a + ", headers=" + this.c + "}";
    }

    public final Request h() {
        Request.Builder builderUrl = new Request.Builder().url(this.a);
        String str = this.b;
        byte[] bArr = this.d;
        Request.Builder builderMethod = builderUrl.method(str, bArr != null ? RequestBody.Companion.create$default(RequestBody.Companion, bArr, (MediaType) null, 0, 0, 7, (Object) null) : null);
        for (Map.Entry entry : this.c.entrySet()) {
            builderMethod.addHeader((String) entry.getKey(), (String) entry.getValue());
        }
        return builderMethod.build();
    }
}
