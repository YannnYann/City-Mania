package kotlinx.serialization.json;

import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.json.internal.JavaStreamSerialReader;
import kotlinx.serialization.json.internal.JsonStreamsKt;

/* JADX INFO: compiled from: JvmStreams.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class JvmStreamsKt {
    public static final <T> T decodeFromStream(Json json, DeserializationStrategy<T> deserializer, InputStream stream) {
        Intrinsics.checkNotNullParameter(json, "<this>");
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        Intrinsics.checkNotNullParameter(stream, "stream");
        return (T) JsonStreamsKt.decodeByReader(json, deserializer, new JavaStreamSerialReader(stream, null, 2, null));
    }
}
