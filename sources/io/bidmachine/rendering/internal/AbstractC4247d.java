package io.bidmachine.rendering.internal;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import io.bidmachine.rendering.internal.view.e;
import io.bidmachine.rendering.model.ElementLayoutParams;
import io.bidmachine.util.ViewUtilsKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.rendering.internal.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC4247d {
    public static final void a(io.bidmachine.rendering.internal.view.e eVar, ViewGroup rootContainer, List adElements, InterfaceC4239b adElement) {
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        Intrinsics.checkNotNullParameter(rootContainer, "rootContainer");
        Intrinsics.checkNotNullParameter(adElements, "adElements");
        Intrinsics.checkNotNullParameter(adElement, "adElement");
        View viewJ = adElement.j();
        if (viewJ == null) {
            return;
        }
        a(adElement.g().getElementLayoutParams(), adElement, viewJ, adElements);
        ViewUtilsKt.addViewSafely$default(eVar, viewJ, 0, null, 6, null);
        try {
            adElement.a(rootContainer);
        } catch (Throwable th) {
            t.b(th);
        }
    }

    public static final void a(ElementLayoutParams elementLayoutParams, InterfaceC4239b adElement, View view, List adElements) {
        Intrinsics.checkNotNullParameter(elementLayoutParams, "<this>");
        Intrinsics.checkNotNullParameter(adElement, "adElement");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(adElements, "adElements");
        adElement.a(elementLayoutParams);
        Context applicationContext = view.getContext().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "view.context.applicationContext");
        int widthPx = elementLayoutParams.getWidthPx(applicationContext);
        int heightPx = elementLayoutParams.getHeightPx(applicationContext);
        if (widthPx <= 0) {
            widthPx = -1;
        }
        if (heightPx <= 0) {
            heightPx = -1;
        }
        e.a aVar = new e.a(widthPx, heightPx);
        aVar.a(applicationContext, elementLayoutParams, adElements);
        ViewUtilsKt.setLayoutParamsSafely(view, aVar);
    }
}
