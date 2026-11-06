package kotlin.jvm.optionals;

import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Optionals.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class OptionalsKt {
    public static final <T> T getOrNull(Optional<T> optional) {
        Intrinsics.checkNotNullParameter(optional, "<this>");
        return optional.orElse(null);
    }

    public static final <T> T getOrDefault(Optional<? extends T> optional, T t) {
        Intrinsics.checkNotNullParameter(optional, "<this>");
        return optional.isPresent() ? optional.get() : t;
    }
}
