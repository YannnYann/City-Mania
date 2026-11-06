package com.ironsource;

import com.ironsource.C3522b4;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.b7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3525b7 implements X6 {
    private final JSONObject a;

    /* JADX INFO: renamed from: com.ironsource.b7$a */
    public static final class a {
        public static final boolean b = false;
        public static final int d = 24;
        public static final a a = new a();
        private static final int c = EnumC3543c7.c.c();

        private a() {
        }

        public final int a() {
            return c;
        }
    }

    public C3525b7(JSONObject jSONObject) {
        this.a = jSONObject == null ? new JSONObject() : jSONObject;
    }

    @Override // com.ironsource.X6
    public long a() {
        return ((long) this.a.optInt("timeout", 24)) * 1000;
    }

    @Override // com.ironsource.Y5
    public boolean b() {
        return this.a.optBoolean(com.ironsource.mediationsdk.metadata.a.k, false);
    }

    @Override // com.ironsource.X6
    public EnumC3543c7 c() {
        return EnumC3543c7.b.a(this.a.optInt(C3522b4.f.e, a.a.a()));
    }
}
