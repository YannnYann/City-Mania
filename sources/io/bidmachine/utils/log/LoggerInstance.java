package io.bidmachine.utils.log;

import io.bidmachine.utils.lazy.LazyValue;

/* JADX INFO: loaded from: classes5.dex */
public interface LoggerInstance {
    void d(LazyValue<String> lazyValue);

    void d(Object obj, LazyValue<String> lazyValue);

    void d(Object obj, String str);

    void d(String str);

    void e(LazyValue<String> lazyValue);

    void e(Object obj, LazyValue<String> lazyValue);

    void e(String str);

    void e(Throwable th);

    void w(LazyValue<String> lazyValue);

    void w(Object obj, LazyValue<String> lazyValue);

    void w(Object obj, String str);

    void w(Object obj, Throwable th);

    void w(String str);

    void w(Throwable th);
}
