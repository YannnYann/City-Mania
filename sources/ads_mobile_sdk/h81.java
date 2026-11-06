package ads_mobile_sdk;

import java.io.Closeable;
import java.util.Map;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes.dex */
public final class h81 implements Closeable {
    public final int a;
    public final String b;
    public final Map c;
    public final p53 d;
    public final Deferred e;
    public final String f;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    public h81(int i, String str, Map map, p53 p53Var, Deferred deferred, String str2) {
        this.a = i;
        this.b = str;
        this.c = map;
        this.d = p53Var;
        this.e = deferred;
        this.f = str2;
    }

    public /* synthetic */ h81(int i, String str, Map map, p53 p53Var, Deferred deferred, String str2, int i2) {
        this(i, str, map, p53Var, deferred, str2);
    }

    public final int b() {
        return this.a;
    }

    public final String d() {
        return this.b;
    }

    public final Map c() {
        return this.c;
    }

    public final p53 a() {
        return this.d;
    }

    public final String e() {
        return this.f;
    }

    public final boolean f() {
        int i = this.a;
        return 200 <= i && i < 300;
    }
}
