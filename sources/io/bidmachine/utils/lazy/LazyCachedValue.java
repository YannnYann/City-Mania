package io.bidmachine.utils.lazy;

/* JADX INFO: loaded from: classes5.dex */
public class LazyCachedValue<T> implements LazyValue<T> {
    public final LazyValue<T> lazyValue;
    public volatile T value;

    public LazyCachedValue(LazyValue<T> lazyValue) {
        this.lazyValue = lazyValue;
    }

    @Override // io.bidmachine.utils.lazy.LazyValue
    public T get() {
        T t = this.value;
        if (t != null) {
            return t;
        }
        T t2 = this.lazyValue.get();
        this.value = t2;
        return t2;
    }
}
