package io.bidmachine.rendering.internal.adform.countdown;

import android.content.Context;
import android.view.View;
import io.bidmachine.rendering.Repository;
import io.bidmachine.rendering.internal.adform.c;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.rendering.internal.view.b;
import io.bidmachine.rendering.model.AdElementParams;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends io.bidmachine.rendering.internal.adform.a {
    public final b x;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.adform.countdown.a$a, reason: collision with other inner class name */
    public final class C1166a implements b.d {
        public C1166a() {
        }

        @Override // io.bidmachine.rendering.internal.view.b.d
        public void a() {
            a.this.q().a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, Object assetsHolder, Repository repository, AdElementParams adElementParams, c adFormListener, io.bidmachine.rendering.internal.event.a eventCallback, io.bidmachine.rendering.internal.detector.brokencreative.a aVar) {
        super(context, assetsHolder, repository, adElementParams, adFormListener, eventCallback, aVar);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        b bVar = new b(context);
        bVar.setListener(new C1166a());
        this.x = bVar;
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public View B() {
        return this.x;
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void E() {
        this.x.b();
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void I() {
        super.I();
        b(false);
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void J() {
        b(true);
        super.J();
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public void a() {
        w().b(this);
        D();
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void c(boolean z) {
        if (z) {
            this.x.e();
        } else {
            this.x.d();
        }
    }

    @Override // io.bidmachine.rendering.internal.G, io.bidmachine.rendering.internal.F
    public void a(String str) {
        Long longOrDefault$default = UtilsKt.toLongOrDefault$default(str, null, 1, null);
        if (longOrDefault$default == null) {
            t.a("Can't obtain time to start (" + str + ')', new Object[0]);
            return;
        }
        this.x.setDurationMs(longOrDefault$default.longValue());
        this.x.f();
    }
}
