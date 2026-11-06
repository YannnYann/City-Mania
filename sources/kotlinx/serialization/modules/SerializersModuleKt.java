package kotlinx.serialization.modules;

import kotlin.collections.MapsKt__MapsKt;

/* JADX INFO: compiled from: SerializersModule.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class SerializersModuleKt {
    public static final SerializersModule EmptySerializersModule = new SerialModuleImpl(MapsKt__MapsKt.emptyMap(), MapsKt__MapsKt.emptyMap(), MapsKt__MapsKt.emptyMap(), MapsKt__MapsKt.emptyMap(), MapsKt__MapsKt.emptyMap());

    public static final SerializersModule getEmptySerializersModule() {
        return EmptySerializersModule;
    }
}
