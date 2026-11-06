package com.unity3d.ads.core.domain;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IsCronetFallbackAvailable.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class IsCronetFallbackAvailable {
    public static final Companion Companion = new Companion(null);
    public static final String FALLBACK_PROVIDER_CLASS = "org.chromium.net.impl.JavaCronetProvider";
    private final String className;

    /* JADX WARN: Multi-variable type inference failed */
    public IsCronetFallbackAvailable() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public IsCronetFallbackAvailable(String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        this.className = className;
    }

    public /* synthetic */ IsCronetFallbackAvailable(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? FALLBACK_PROVIDER_CLASS : str);
    }

    public final boolean invoke() {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(Class.forName(this.className));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        return Result.m2766isSuccessimpl(objM2760constructorimpl);
    }

    /* JADX INFO: compiled from: IsCronetFallbackAvailable.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
