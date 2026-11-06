package ads_mobile_sdk;

import android.net.Uri;
import com.ironsource.C3746nc;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class e81 {
    public URL a;
    public String b;
    public final LinkedHashMap c;
    public byte[] d;
    public final ss0 e;
    public g9 f;
    public final ArrayList g;

    public final e81 a(String name, String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        String str = (String) this.c.get(name);
        LinkedHashMap linkedHashMap = this.c;
        if (str != null) {
            value = str + ", " + value;
        }
        linkedHashMap.put(name, value);
        return this;
    }

    public final e81 b(String name, String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        this.g.add(TuplesKt.to(name, value));
        return this;
    }

    public final e81 c(String name, String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        this.c.put(name, value);
        return this;
    }

    public e81() {
        this.b = C3746nc.a;
        this.c = new LinkedHashMap();
        this.g = new ArrayList();
    }

    public e81(f81 request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.b = C3746nc.a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.c = linkedHashMap;
        this.g = new ArrayList();
        this.a = request.f();
        this.b = request.e();
        linkedHashMap.putAll(request.c());
        this.d = request.a();
        this.e = request.b();
        this.f = request.d();
    }

    public final e81 b() {
        return a(C3746nc.a, (byte[]) null);
    }

    public final e81 b(String value, byte[] body) {
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(value, "contentType");
        e81 e81VarA = a(C3746nc.b, body);
        Intrinsics.checkNotNullParameter("Content-Type", "name");
        Intrinsics.checkNotNullParameter(value, "value");
        e81VarA.c.put("Content-Type", value);
        return e81VarA;
    }

    public final f81 a() {
        URL url;
        URL url2 = this.a;
        if (url2 != null) {
            if (this.g.isEmpty()) {
                url = url2;
            } else {
                String string = url2.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                Uri.Builder builderBuildUpon = Uri.parse(string).buildUpon();
                for (Pair pair : this.g) {
                    builderBuildUpon.appendQueryParameter((String) pair.component1(), (String) pair.component2());
                }
                url = new URL(builderBuildUpon.build().toString());
            }
            return new f81(url, this.b, MapsKt__MapsKt.toMap(this.c), this.d, this.e, this.f);
        }
        throw new IllegalStateException("HttpRequest.Builder: URL must be set before calling build()");
    }

    public final e81 b(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.a = new URL(url);
        return this;
    }

    public final e81 a(String method, byte[] bArr) {
        Intrinsics.checkNotNullParameter(method, "method");
        if (method.length() > 0) {
            if (bArr == null && (Intrinsics.areEqual(method, C3746nc.b) || Intrinsics.areEqual(method, "PUT") || Intrinsics.areEqual(method, "PATCH"))) {
                throw new IllegalArgumentException(("Method " + method + " must have a request body.").toString());
            }
            this.b = method;
            this.d = bArr;
            return this;
        }
        throw new IllegalArgumentException("HTTP method must not be empty");
    }

    public final void a(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.c.remove(name);
    }

    public final void a(URL url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.a = url;
    }
}
