package io.bidmachine.utils;

import android.text.TextUtils;
import io.bidmachine.core.Utils;

/* JADX INFO: loaded from: classes5.dex */
public class BMError {
    public final int code;
    public final BMError errorExtension;
    public final String message;
    public final boolean trackError;
    public static final BMError NoConnection = new BMError(100, "Can't connect to server");
    public static final BMError TimeoutError = new BMError(102, "Timeout reached");
    public static final BMError Request = new BMError(110, "Request contains bad syntax or cannot be fulfilled");
    public static final BMError Server = new BMError(109, "Server failed to fulfil an apparently valid request");
    public static final BMError RequestExpired = new BMError(107, "AdRequest expired, load new one please");
    public static final BMError RequestDestroyed = new BMError(106, "AdRequest destroyed, create new one please");
    public static final BMError ResponseExpired = new BMError(107, "AdResponse expired, load new one please");
    public static final BMError ResponseDuplicated = new BMError(111, "AdResponse already was shown");
    public static final BMError AlreadyShown = new BMError(111, "Ads was already shown, load new one please");
    public static final BMError Expired = new BMError(107, "Ads was expired, load new one please");
    public static final BMError Destroyed = new BMError(106, "Ads destroyed, load new one please");
    public static final BMError PlaceholderTimeout = new BMError(201, "Placeholder timeout error");
    public static final BMError NoFill = new BMError(103, "No ads fill");
    public static final BMError InternalUnknownError = internal("Unknown error");
    public static final BMError BMServerNoFill = new BMError(103, "No bid", false);

    public BMError(BMError bMError, int i, String str) {
        this(bMError.getCode(), bMError.getMessage(), bMError.isTrackError(), new BMError(i, str));
    }

    public static BMError adapter(String str) {
        return new BMError(200, str);
    }

    public static BMError adapterGetsParameter(String str) {
        return adapter(str + " not found");
    }

    public static BMError adapterInitialization(String str) {
        return adapter("Adapter SDK initialization error: " + str);
    }

    public static BMError adapterNotInitialized() {
        return adapter("Adapter SDK not initialized");
    }

    public static BMError handledException(String str, String str2) {
        return new BMError(104, str, true, !TextUtils.isEmpty(str2) ? new BMError(-1, str2) : null);
    }

    public static BMError incorrectContent(String str) {
        return new BMError(101, str);
    }

    public static BMError internal(String str) {
        return new BMError(108, str);
    }

    public static BMError notFound(String str) {
        return new BMError(103, str + " not found");
    }

    public static BMError throwable(String str, Throwable th) {
        BMError bMError;
        if (th != null) {
            try {
                StringBuilder sb = new StringBuilder(th.getClass().getName());
                String message = th.getMessage();
                if (!TextUtils.isEmpty(message)) {
                    sb.append(": ");
                    sb.append(message);
                }
                bMError = new BMError(-1, sb.toString());
            } catch (Throwable unused) {
                bMError = null;
            }
        } else {
            bMError = null;
        }
        return new BMError(108, str, true, bMError);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BMError bMError = (BMError) obj;
        if (this.code != bMError.code) {
            return false;
        }
        return this.message.equals(bMError.message);
    }

    public int getCode() {
        return this.code;
    }

    public BMError getErrorExtension() {
        return this.errorExtension;
    }

    public String getMessage() {
        return this.message;
    }

    public int hashCode() {
        return (this.code * 31) + this.message.hashCode();
    }

    public boolean isTrackError() {
        return this.trackError;
    }

    public String toString() {
        if (this.errorExtension == null) {
            return "(" + this.code + ") " + this.message;
        }
        return "(" + this.code + ") " + this.message + " - (" + this.errorExtension.getCode() + " - " + this.errorExtension.getMessage() + ")";
    }

    public BMError(BMError bMError, BMError bMError2) {
        this(bMError.getCode(), bMError.getMessage(), bMError.isTrackError(), bMError2);
    }

    public BMError(int i, String str) {
        this(i, str, true);
    }

    public BMError(int i, String str, boolean z) {
        this(i, str, z, null);
    }

    public BMError(int i, String str, boolean z, BMError bMError) {
        this.code = i;
        this.message = Utils.checkIfEmpty(str, "Unknown error");
        this.trackError = z;
        this.errorExtension = bMError;
    }
}
