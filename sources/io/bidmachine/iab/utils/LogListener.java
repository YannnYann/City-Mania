package io.bidmachine.iab.utils;

import io.bidmachine.iab.utils.Logger;

/* JADX INFO: loaded from: classes5.dex */
public interface LogListener {
    void onLog(Logger.LogLevel logLevel, String tag, String message);
}
