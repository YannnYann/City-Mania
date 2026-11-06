package com.ironsource;

import com.ironsource.C3522b4;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.cf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3551cf {
    private EnumC3570df a;

    public C3551cf(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.a = EnumC3570df.b.a(config.optInt(C3522b4.a.t, EnumC3570df.d.c()));
    }

    public final EnumC3570df a() {
        return this.a;
    }
}
