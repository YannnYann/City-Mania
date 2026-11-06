package io.bidmachine.rendering.internal;

import android.view.View;
import android.view.ViewGroup;
import io.bidmachine.iab.utils.ClickAreaFactory;
import io.bidmachine.rendering.model.AdElementParams;
import io.bidmachine.rendering.model.ElementLayoutParams;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.rendering.internal.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public interface InterfaceC4239b {
    void a();

    default void a(ViewGroup rootContainer) {
        Intrinsics.checkNotNullParameter(rootContainer, "rootContainer");
    }

    void a(ClickAreaFactory clickAreaFactory);

    void a(ElementLayoutParams elementLayoutParams);

    void b();

    void destroy();

    void e();

    AdElementParams g();

    default void i() {
    }

    View j();

    void k();

    ElementLayoutParams m();

    default void p() {
    }
}
