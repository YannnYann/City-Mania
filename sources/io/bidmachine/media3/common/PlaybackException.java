package io.bidmachine.media3.common;

import android.os.Bundle;
import io.bidmachine.media3.common.util.Util;

/* JADX INFO: loaded from: classes5.dex */
public class PlaybackException extends Exception {
    public final int errorCode;
    public final Bundle extras;
    public final long timestampMs;
    public static final String FIELD_INT_ERROR_CODE = Util.intToStringMaxRadix(0);
    public static final String FIELD_LONG_TIMESTAMP_MS = Util.intToStringMaxRadix(1);
    public static final String FIELD_STRING_MESSAGE = Util.intToStringMaxRadix(2);
    public static final String FIELD_STRING_CAUSE_CLASS_NAME = Util.intToStringMaxRadix(3);
    public static final String FIELD_STRING_CAUSE_MESSAGE = Util.intToStringMaxRadix(4);
    public static final String FIELD_BUNDLE_EXTRAS = Util.intToStringMaxRadix(5);

    public PlaybackException(String str, Throwable th, int i, Bundle bundle, long j) {
        super(str, th);
        this.errorCode = i;
        this.extras = bundle;
        this.timestampMs = j;
    }
}
