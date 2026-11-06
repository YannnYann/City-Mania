package com.ironsource;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.ironsource.y8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3945y8 implements InterfaceC3799q7 {
    private static Map<String, Object> a = new HashMap();

    /* JADX INFO: renamed from: com.ironsource.y8$a */
    public static class a {
        String a;
        String b;
        String c;
        Context d;
        String e;
        String f;

        public a a(String str) {
            this.b = str;
            return this;
        }

        public a b(String str) {
            this.f = str;
            return this;
        }

        public a c(String str) {
            this.c = str;
            return this;
        }

        public a d(String str) {
            this.a = str;
            return this;
        }

        public a e(String str) {
            this.e = str;
            return this;
        }

        public a a(Context context) {
            this.d = context;
            return this;
        }

        public C3945y8 a() {
            return new C3945y8(this);
        }
    }

    private C3945y8(a aVar) {
        a(aVar);
        a(aVar.d);
    }

    private void a(Context context) {
        a.put(G5.e, Y3.b(context));
        a.put(G5.f, Y3.d(context));
    }

    public static void b(String str) {
        a.put(G5.f, SDKUtils.encodeString(str));
    }

    private void a(a aVar) {
        Context context = aVar.d;
        C3541c5 c3541c5B = C3541c5.b(context);
        a.put(G5.j, SDKUtils.encodeString(c3541c5B.e()));
        a.put(G5.k, SDKUtils.encodeString(c3541c5B.f()));
        a.put(G5.l, Integer.valueOf(c3541c5B.a()));
        a.put(G5.m, SDKUtils.encodeString(c3541c5B.d()));
        a.put(G5.n, SDKUtils.encodeString(c3541c5B.c()));
        a.put(G5.d, SDKUtils.encodeString(context.getPackageName()));
        a.put(G5.g, SDKUtils.encodeString(aVar.b));
        a.put("sessionid", SDKUtils.encodeString(aVar.a));
        a.put(G5.b, SDKUtils.encodeString(SDKUtils.getSDKVersion()));
        a.put(G5.o, G5.t);
        a.put(G5.p, G5.q);
        if (!TextUtils.isEmpty(aVar.e)) {
            a.put(G5.i, SDKUtils.encodeString(aVar.e));
        }
        if (TextUtils.isEmpty(aVar.f)) {
            return;
        }
        a.put(G5.K, aVar.f);
    }

    @Override // com.ironsource.InterfaceC3799q7
    public Map<String, Object> a() {
        return a;
    }

    public static void a(String str) {
        a.put(G5.e, SDKUtils.encodeString(str));
    }
}
