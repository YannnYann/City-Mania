package com.vungle.ads.internal.network.converters;

import com.vungle.ads.internal.network.j;
import java.io.InputStream;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KType;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonKt;
import kotlinx.serialization.json.JvmStreamsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements a {
    public static final Json b = JsonKt.Json$default(null, c.a, 1, null);
    public final KType a;

    public d(KType kType) {
        Intrinsics.checkNotNullParameter(kType, "kType");
        this.a = kType;
    }

    @Override // com.vungle.ads.internal.network.converters.a
    public final Object a(j jVar) {
        try {
            InputStream inputStreamByteStream = jVar.byteStream();
            if (inputStreamByteStream == null) {
                CloseableKt.closeFinally(jVar, null);
                return null;
            }
            Object objDecodeFromStream = JvmStreamsKt.decodeFromStream(b, SerializersKt.serializer(Json.Default.getSerializersModule(), this.a), inputStreamByteStream);
            CloseableKt.closeFinally(jVar, null);
            return objDecodeFromStream;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(jVar, th);
                throw th2;
            }
        }
    }
}
