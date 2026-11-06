package com.google.android.libraries.ads.mobile.sdk.signal;

import com.google.android.libraries.ads.mobile.sdk.common.BaseError;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class SignalError extends BaseError<ErrorCode> {
    public final ErrorCode a;
    public final String b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ErrorCode {
        public static final ErrorCode INTERNAL_ERROR;
        public static final ErrorCode INVALID_REQUEST;
        public static final ErrorCode TIMEOUT;
        public static final /* synthetic */ ErrorCode[] b;
        public final int a;

        static {
            ErrorCode errorCode = new ErrorCode("INTERNAL_ERROR", 0, 0);
            INTERNAL_ERROR = errorCode;
            ErrorCode errorCode2 = new ErrorCode("INVALID_REQUEST", 1, 1);
            INVALID_REQUEST = errorCode2;
            ErrorCode errorCode3 = new ErrorCode("TIMEOUT", 2, 2);
            TIMEOUT = errorCode3;
            ErrorCode[] errorCodeArr = {errorCode, errorCode2, errorCode3};
            b = errorCodeArr;
            EnumEntriesKt.enumEntries(errorCodeArr);
        }

        public ErrorCode(String str, int i, int i2) {
            this.a = i2;
        }

        public static ErrorCode[] values() {
            return (ErrorCode[]) b.clone();
        }
    }

    public SignalError(ErrorCode code, String message) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        this.a = code;
        this.b = message;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SignalError)) {
            return false;
        }
        SignalError signalError = (SignalError) obj;
        return this.a == signalError.a && Intrinsics.areEqual(this.b, signalError.b);
    }

    public String getMessage() {
        return this.b;
    }

    public int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public String toString() {
        return "SignalError(code=" + this.a + ", message=" + this.b + ")";
    }
}
