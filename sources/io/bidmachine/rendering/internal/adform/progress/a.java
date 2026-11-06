package io.bidmachine.rendering.internal.adform.progress;

import android.content.Context;
import android.view.View;
import io.bidmachine.rendering.Repository;
import io.bidmachine.rendering.internal.view.c;
import io.bidmachine.rendering.model.AdElementParams;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends io.bidmachine.rendering.internal.adform.a {
    public final c x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, Object assetsHolder, Repository repository, AdElementParams adElementParams, io.bidmachine.rendering.internal.adform.c adFormListener, io.bidmachine.rendering.internal.event.a eventCallback, io.bidmachine.rendering.internal.detector.brokencreative.a aVar) {
        super(context, assetsHolder, repository, adElementParams, adFormListener, eventCallback, aVar);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.x = new c(context);
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public View B() {
        return this.x;
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public void a() {
        w().b(this);
        D();
    }

    @Override // io.bidmachine.rendering.internal.G, io.bidmachine.rendering.internal.z
    public void a(long j, long j2, float f) {
        this.x.a(j, j2, f);
    }
}
