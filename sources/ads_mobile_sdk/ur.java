package ads_mobile_sdk;

import com.google.gson.JsonElement;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ur extends Lambda implements Function1 {
    public static final ur a = new ur();

    public ur() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        JsonElement it = (JsonElement) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        Duration.Companion companion = Duration.Companion;
        return Duration.m2870boximpl(DurationKt.toDuration(it.getAsInt(), DurationUnit.SECONDS));
    }
}
