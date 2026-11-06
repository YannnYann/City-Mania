package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Dc implements Jd {
    private final String a;

    public static final class a {
        public static final a a = new a();
        public static final String b = "IronSource";

        private a() {
        }
    }

    public Dc(String networkInstanceId) {
        Intrinsics.checkNotNullParameter(networkInstanceId, "networkInstanceId");
        this.a = networkInstanceId;
    }

    @Override // com.ironsource.Jd
    public String value() {
        if (this.a.length() == 0) {
            return "";
        }
        if (Intrinsics.areEqual(this.a, "0") || Intrinsics.areEqual(this.a, "IronSource")) {
            return "IronSource";
        }
        return "IronSource_" + this.a;
    }
}
