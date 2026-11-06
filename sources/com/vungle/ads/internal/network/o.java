package com.vungle.ads.internal.network;

import okhttp3.Response;

/* JADX INFO: loaded from: classes4.dex */
public final class o {
    public final Response a;
    public final Object b;

    public o(Response response, Object obj) {
        this.a = response;
        this.b = obj;
    }

    public /* synthetic */ o(Response response, Object obj, int i) {
        this(response, obj);
    }

    public final Object a() {
        return this.b;
    }

    public final int b() {
        return this.a.code();
    }

    public final boolean c() {
        return this.a.isSuccessful();
    }

    public final String d() {
        return this.a.message();
    }

    public final Response e() {
        return this.a;
    }

    public final String toString() {
        return this.a.toString();
    }
}
