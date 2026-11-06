package io.bidmachine.rendering.internal.controller;

import io.bidmachine.rendering.model.BrokenCreativeEvent;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.model.animation.AnimationParams;
import io.bidmachine.util.SystemComponent;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
public interface h {
    void a();

    void a(BrokenCreativeEvent brokenCreativeEvent);

    void a(PrivacySheetParams privacySheetParams);

    void a(AnimationParams animationParams, Function0 function0);

    void a(SystemComponent systemComponent, ClickData clickData);

    void b();

    void b(AnimationParams animationParams, Function0 function0);

    void c(AnimationParams animationParams, Function0 function0);

    void d();

    void d(AnimationParams animationParams, Function0 function0);

    void e();
}
