package com.google.android.libraries.ads.mobile.sdk.common;

import ads_mobile_sdk.ob;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class FullScreenContentError extends BaseError<ErrorCode> {
    public final ErrorCode a;
    public final String b;
    public final MediationAdError c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ErrorCode {
        public static final ErrorCode AD_REUSED;
        public static final ErrorCode APP_NOT_FOREGROUND;
        public static final ErrorCode H5_SHOW_AD_NOT_LOADED;
        public static final ErrorCode INTERNAL_ERROR;
        public static final ErrorCode MEDIATION_SHOW_ERROR;
        public static final /* synthetic */ ErrorCode[] b;
        public final int a;

        static {
            ErrorCode errorCode = new ErrorCode("INTERNAL_ERROR", 0, 0);
            INTERNAL_ERROR = errorCode;
            ErrorCode errorCode2 = new ErrorCode("AD_REUSED", 1, 1);
            AD_REUSED = errorCode2;
            ErrorCode errorCode3 = new ErrorCode("APP_NOT_FOREGROUND", 2, 3);
            APP_NOT_FOREGROUND = errorCode3;
            ErrorCode errorCode4 = new ErrorCode("MEDIATION_SHOW_ERROR", 3, 4);
            MEDIATION_SHOW_ERROR = errorCode4;
            ErrorCode errorCode5 = new ErrorCode("H5_SHOW_AD_NOT_LOADED", 4, 5);
            H5_SHOW_AD_NOT_LOADED = errorCode5;
            ErrorCode[] errorCodeArr = {errorCode, errorCode2, errorCode3, errorCode4, errorCode5};
            b = errorCodeArr;
            EnumEntriesKt.enumEntries(errorCodeArr);
        }

        public ErrorCode(String str, int i, int i2) {
            this.a = i2;
        }

        public static ErrorCode[] values() {
            return (ErrorCode[]) b.clone();
        }

        public final int getValue() {
            return this.a;
        }
    }

    public FullScreenContentError(ErrorCode code, String message, MediationAdError mediationAdError) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        this.a = code;
        this.b = message;
        this.c = mediationAdError;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FullScreenContentError)) {
            return false;
        }
        FullScreenContentError fullScreenContentError = (FullScreenContentError) obj;
        return this.a == fullScreenContentError.a && Intrinsics.areEqual(this.b, fullScreenContentError.b) && Intrinsics.areEqual(this.c, fullScreenContentError.c);
    }

    public final MediationAdError getMediationAdError() {
        return this.c;
    }

    public String getMessage() {
        return this.b;
    }

    public int hashCode() {
        int iA = ob.a(this.b, this.a.hashCode() * 31, 31);
        MediationAdError mediationAdError = this.c;
        return iA + (mediationAdError == null ? 0 : mediationAdError.hashCode());
    }

    public String toString() {
        return "FullScreenContentError(code=" + this.a + ", message=" + this.b + ", mediationAdError=" + this.c + ")";
    }

    public ErrorCode getCode() {
        return this.a;
    }
}
