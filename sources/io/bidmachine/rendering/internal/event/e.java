package io.bidmachine.rendering.internal.event;

import io.bidmachine.iab.utils.ClickAreaFactory;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.ElementLayoutParams;
import io.bidmachine.rendering.model.EventType;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.model.animation.AnimationParams;
import io.bidmachine.util.SystemComponent;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public interface e {
    void a(PrivacySheetParams privacySheetParams, Function0 function0);

    void a(AnimationParams animationParams, Function0 function0);

    void a(SystemComponent systemComponent, ClickData clickData, Function0 function0);

    void a(String str, long j, long j2, float f, Function0 function0);

    void a(String str, long j, Function0 function0);

    void a(String str, ClickAreaFactory clickAreaFactory, Function0 function0);

    void a(String str, ElementLayoutParams elementLayoutParams, AnimationParams animationParams, Function0 function0);

    void a(String str, EventType eventType, String str2, List list, String str3, Function1 function1);

    void a(String str, AnimationParams animationParams, Function0 function0);

    void a(String str, Integer num, Function0 function0);

    void a(String str, String str2, ClickData clickData, Function0 function0);

    void a(String str, String str2, Function0 function0);

    void a(String str, Function0 function0);

    void a(String str, boolean z, Function0 function0);

    void b(AnimationParams animationParams, Function0 function0);

    void b(String str, AnimationParams animationParams, Function0 function0);

    void b(String str, Integer num, Function0 function0);

    void b(String str, String str2, ClickData clickData, Function0 function0);

    void b(String str, Function0 function0);

    void b(String str, boolean z, Function0 function0);

    void c(AnimationParams animationParams, Function0 function0);

    void c(String str, Function0 function0);

    void d(AnimationParams animationParams, Function0 function0);

    void d(String str, Function0 function0);

    void e(String str, Function0 function0);

    void f(String str, Function0 function0);
}
