package com.google.android.libraries.ads.mobile.sdk.common;

import ads_mobile_sdk.ob;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.internal.util.AndroidBundleTypeAdapterFactory;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.annotations.SerializedName;
import java.lang.reflect.Type;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class LoadAdError extends BaseError<ErrorCode> {

    @SerializedName("Code")
    private final ErrorCode a;

    @SerializedName("Message")
    private final String b;

    @SerializedName("Response Info")
    private final ResponseInfo c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ErrorCode {
        public static final ErrorCode AD_RESPONSE_ALREADY_USED;
        public static final ErrorCode APP_ID_MISSING;
        public static final ErrorCode CANCELLED;
        public static final ErrorCode INTERNAL_ERROR;
        public static final ErrorCode INVALID_AD_RESPONSE;
        public static final ErrorCode INVALID_REQUEST;
        public static final ErrorCode NETWORK_ERROR;
        public static final ErrorCode NOT_FOUND;
        public static final ErrorCode NO_FILL;
        public static final ErrorCode REQUEST_ID_MISMATCH;
        public static final ErrorCode TIMEOUT;
        public static final /* synthetic */ ErrorCode[] b;
        public final int a;

        static {
            ErrorCode errorCode = new ErrorCode("INTERNAL_ERROR", 0, 0);
            INTERNAL_ERROR = errorCode;
            ErrorCode errorCode2 = new ErrorCode("INVALID_REQUEST", 1, 1);
            INVALID_REQUEST = errorCode2;
            ErrorCode errorCode3 = new ErrorCode("NETWORK_ERROR", 2, 2);
            NETWORK_ERROR = errorCode3;
            ErrorCode errorCode4 = new ErrorCode("NO_FILL", 3, 3);
            NO_FILL = errorCode4;
            ErrorCode errorCode5 = new ErrorCode("TIMEOUT", 4, 4);
            TIMEOUT = errorCode5;
            ErrorCode errorCode6 = new ErrorCode("CANCELLED", 5, 5);
            CANCELLED = errorCode6;
            ErrorCode errorCode7 = new ErrorCode("NOT_FOUND", 6, 7);
            NOT_FOUND = errorCode7;
            ErrorCode errorCode8 = new ErrorCode("APP_ID_MISSING", 7, 8);
            APP_ID_MISSING = errorCode8;
            ErrorCode errorCode9 = new ErrorCode("REQUEST_ID_MISMATCH", 8, 10);
            REQUEST_ID_MISMATCH = errorCode9;
            ErrorCode errorCode10 = new ErrorCode("INVALID_AD_RESPONSE", 9, 11);
            INVALID_AD_RESPONSE = errorCode10;
            ErrorCode errorCode11 = new ErrorCode("AD_RESPONSE_ALREADY_USED", 10, 12);
            AD_RESPONSE_ALREADY_USED = errorCode11;
            ErrorCode[] errorCodeArr = {errorCode, errorCode2, errorCode3, errorCode4, errorCode5, errorCode6, errorCode7, errorCode8, errorCode9, errorCode10, errorCode11};
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

    public LoadAdError(ErrorCode code, String message, ResponseInfo responseInfo) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        this.a = code;
        this.b = message;
        this.c = responseInfo;
    }

    public static final JsonElement a(ErrorCode errorCode, Type type, JsonSerializationContext jsonSerializationContext) {
        return new JsonPrimitive(errorCode.name() + " (" + errorCode.getValue() + ")");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LoadAdError)) {
            return false;
        }
        LoadAdError loadAdError = (LoadAdError) obj;
        return this.a == loadAdError.a && Intrinsics.areEqual(this.b, loadAdError.b) && Intrinsics.areEqual(this.c, loadAdError.c);
    }

    public String getMessage() {
        return this.b;
    }

    public int hashCode() {
        int iA = ob.a(this.b, this.a.hashCode() * 31, 31);
        ResponseInfo responseInfo = this.c;
        return iA + (responseInfo == null ? 0 : responseInfo.hashCode());
    }

    public String toString() {
        String json = new GsonBuilder().registerTypeAdapterFactory(new AndroidBundleTypeAdapterFactory()).registerTypeAdapter(ErrorCode.class, new JsonSerializer() { // from class: com.google.android.libraries.ads.mobile.sdk.common.LoadAdError$$ExternalSyntheticLambda0
            @Override // com.google.gson.JsonSerializer
            public final JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext) {
                return LoadAdError.a((LoadAdError.ErrorCode) obj, type, jsonSerializationContext);
            }
        }).setPrettyPrinting().serializeNulls().create().toJson(this);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return json;
    }

    public ErrorCode getCode() {
        return this.a;
    }
}
