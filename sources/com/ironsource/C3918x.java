package com.ironsource;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3918x implements InterfaceC3789pf<JSONObject>, InterfaceC3749nf<C3882v> {
    private final Map<String, H0> a = new LinkedHashMap();
    private int b;

    /* JADX INFO: renamed from: com.ironsource.x$a */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC3731mf.values().length];
            try {
                iArr[EnumC3731mf.f.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC3731mf.b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnumC3731mf.c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EnumC3731mf.d.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EnumC3731mf.e.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
        }
    }

    private final void b(C3882v c3882v) {
        int i = a.a[c3882v.f().ordinal()];
        if (i != 1) {
            if (i == 2) {
                this.b++;
                return;
            }
            if (i != 3 && i != 4 && i != 5) {
                throw new NoWhenBranchMatchedException();
            }
            int i2 = this.b;
            if (i2 > 0) {
                this.b = i2 - 1;
            }
        }
    }

    public final int a() {
        return this.b;
    }

    @Override // com.ironsource.InterfaceC3749nf
    public void a(C3882v record) {
        Intrinsics.checkNotNullParameter(record, "record");
        String strC = record.c();
        Map<String, H0> map = this.a;
        H0 h0 = map.get(strC);
        if (h0 == null) {
            h0 = new H0();
            map.put(strC, h0);
        }
        h0.a(record.a(new C3900w()));
        b(record);
    }

    @Override // com.ironsource.InterfaceC3616g7
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public JSONObject a(EnumC3767of mode) throws JSONException {
        Intrinsics.checkNotNullParameter(mode, "mode");
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, H0> entry : this.a.entrySet()) {
            String key = entry.getKey();
            JSONObject jSONObjectA = entry.getValue().a(mode);
            if (jSONObjectA.length() > 0) {
                jSONObject.put(key, jSONObjectA);
            }
        }
        return jSONObject;
    }

    public final boolean b() {
        return !this.a.isEmpty();
    }
}
