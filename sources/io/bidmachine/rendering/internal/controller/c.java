package io.bidmachine.rendering.internal.controller;

import io.bidmachine.rendering.model.BrokenCreativeEvent;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.model.animation.AnimationParams;
import io.bidmachine.util.Error;
import io.bidmachine.util.SystemComponent;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
public interface c {
    void a();

    void a(a aVar);

    void a(a aVar, Error error);

    void a(e eVar);

    void a(e eVar, Error error);

    void a(io.bidmachine.rendering.internal.view.f fVar);

    void a(BrokenCreativeEvent brokenCreativeEvent);

    void a(PrivacySheetParams privacySheetParams);

    void a(AnimationParams animationParams, Function0 function0);

    void a(SystemComponent systemComponent, ClickData clickData);

    void b();

    void b(a aVar);

    void b(a aVar, Error error);

    void b(io.bidmachine.rendering.internal.view.f fVar);

    void b(AnimationParams animationParams, Function0 function0);

    void c();

    void c(a aVar);

    void c(io.bidmachine.rendering.internal.view.f fVar);

    void d();

    void d(a aVar);

    void e();

    void f();

    void g();
}
