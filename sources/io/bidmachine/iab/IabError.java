package io.bidmachine.iab;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class IabError {
    public static final IabError NO_NETWORK = new IabError(1, "No internet connection");
    public final int a;
    public final String b;

    public IabError(int code, String message) {
        this.a = code;
        this.b = message;
    }

    public static IabError badContent(String message) {
        return new IabError(3, message);
    }

    public static IabError expired(String message) {
        return new IabError(6, message);
    }

    public static IabError incorrectState(String message) {
        return new IabError(4, message);
    }

    public static IabError internal(String message) {
        return new IabError(0, message);
    }

    public static IabError noFIll(String message) {
        return new IabError(7, message);
    }

    public static IabError noRequiredArguments(String message) {
        return new IabError(2, message);
    }

    public static IabError placeholder(String message) {
        return new IabError(5, message);
    }

    public static IabError throwable(String internalMessage, Throwable throwable) {
        if (throwable != null) {
            try {
                StringBuilder sb = new StringBuilder(internalMessage);
                sb.append(" - ");
                sb.append(throwable.getClass().getName());
                String message = throwable.getMessage();
                if (!TextUtils.isEmpty(message)) {
                    sb.append(": ");
                    sb.append(message);
                }
                return internal(sb.toString());
            } catch (Throwable unused) {
            }
        }
        return internal(internalMessage);
    }

    public int getCode() {
        return this.a;
    }

    public String getMessage() {
        return this.b;
    }

    public String toString() {
        return String.format("(%s) %s", Integer.valueOf(this.a), this.b);
    }
}
