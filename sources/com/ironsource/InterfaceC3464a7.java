package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.a7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public interface InterfaceC3464a7 {

    /* JADX INFO: renamed from: com.ironsource.a7$a */
    public static final class a implements InterfaceC3464a7 {
        private final EnumC3543c7 a;

        public a(EnumC3543c7 strategy) {
            Intrinsics.checkNotNullParameter(strategy, "strategy");
            this.a = strategy;
        }

        @Override // com.ironsource.InterfaceC3464a7
        public String a() {
            return "WebView is unavailable";
        }

        @Override // com.ironsource.InterfaceC3464a7
        public EnumC3543c7 b() {
            return this.a;
        }

        public final EnumC3543c7 c() {
            return this.a;
        }
    }

    String a();

    EnumC3543c7 b();
}
