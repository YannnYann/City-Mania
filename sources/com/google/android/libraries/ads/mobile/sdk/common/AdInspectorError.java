package com.google.android.libraries.ads.mobile.sdk.common;

import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AdInspectorError extends BaseError<ErrorCode> {
    public final ErrorCode a;
    public final String b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ErrorCode {
        public static final ErrorCode ALREADY_OPEN;
        public static final ErrorCode DISABLED;
        public static final ErrorCode FAILED_TO_LOAD;
        public static final ErrorCode INTERNAL_ERROR;
        public static final ErrorCode NOT_IN_TEST_MODE;
        public static final /* synthetic */ ErrorCode[] b;
        public final int a;

        static {
            ErrorCode errorCode = new ErrorCode("INTERNAL_ERROR", 0, 0);
            INTERNAL_ERROR = errorCode;
            ErrorCode errorCode2 = new ErrorCode("FAILED_TO_LOAD", 1, 1);
            FAILED_TO_LOAD = errorCode2;
            ErrorCode errorCode3 = new ErrorCode("NOT_IN_TEST_MODE", 2, 2);
            NOT_IN_TEST_MODE = errorCode3;
            ErrorCode errorCode4 = new ErrorCode("ALREADY_OPEN", 3, 3);
            ALREADY_OPEN = errorCode4;
            ErrorCode errorCode5 = new ErrorCode("DISABLED", 4, 4);
            DISABLED = errorCode5;
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
    }

    public AdInspectorError(ErrorCode code, String message) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        this.a = code;
        this.b = message;
    }

    public String getMessage() {
        return this.b;
    }
}
