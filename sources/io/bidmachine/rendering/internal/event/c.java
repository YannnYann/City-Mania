package io.bidmachine.rendering.internal.event;

import io.bidmachine.rendering.model.EventTaskParams;
import io.bidmachine.rendering.model.EventType;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public interface c {
    void a(EventType eventType, EventTaskParams eventTaskParams, List list, Function0 function0);

    void a(String str, EventType eventType, String str2, List list, Function1 function1);
}
