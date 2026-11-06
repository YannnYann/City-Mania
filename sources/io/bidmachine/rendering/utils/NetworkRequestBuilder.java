package io.bidmachine.rendering.utils;

import io.bidmachine.rendering.model.EventTaskBucketParams;
import io.bidmachine.rendering.model.EventType;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public interface NetworkRequestBuilder {
    io.bidmachine.util.network.NetworkRequest<?> createRequestPermissionRequest(String str, EventType eventType, String str2, List<EventTaskBucketParams> list, String str3, Function1<? super List<EventTaskBucketParams>, Unit> function1);
}
