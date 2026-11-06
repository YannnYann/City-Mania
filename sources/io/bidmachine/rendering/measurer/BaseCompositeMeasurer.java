package io.bidmachine.rendering.measurer;

import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import io.bidmachine.rendering.measurer.Measurer;
import io.bidmachine.rendering.utils.CountDownPostback;
import io.bidmachine.util.Error;
import io.bidmachine.util.Utils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public class BaseCompositeMeasurer<MeasurerType extends Measurer<ViewType>, ViewType extends View> implements Measurer<ViewType> {
    public final List a;

    public BaseCompositeMeasurer(List<? extends MeasurerType> measurerList) {
        Intrinsics.checkNotNullParameter(measurerList, "measurerList");
        this.a = new CopyOnWriteArrayList(measurerList);
    }

    public static final void a(BaseCompositeMeasurer this$0, Handler handler, Runnable it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        Intrinsics.checkNotNullParameter(it, "$it");
        this$0.a.clear();
        handler.post(it);
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void destroy(final Runnable runnable) {
        CountDownPostback countDownPostback;
        if (runnable != null) {
            final Handler handlerCreateHandlerWithMyOrMainLooper = Utils.createHandlerWithMyOrMainLooper();
            countDownPostback = new CountDownPostback(this.a.size(), new Runnable() { // from class: io.bidmachine.rendering.measurer.BaseCompositeMeasurer$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BaseCompositeMeasurer.a(this.f$0, handlerCreateHandlerWithMyOrMainLooper, runnable);
                }
            });
        } else {
            countDownPostback = null;
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Measurer) it.next()).destroy(countDownPostback);
        }
    }

    public final List<MeasurerType> getMeasurerList() {
        return this.a;
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onClicked() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Measurer) it.next()).onClicked();
        }
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onError(Error error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Measurer) it.next()).onError(error);
        }
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onShown() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Measurer) it.next()).onShown();
        }
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onViewAddedToContainer(ViewType view, ViewGroup container) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(container, "container");
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Measurer) it.next()).onViewAddedToContainer(view, container);
        }
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onViewCreated(ViewType view) {
        Intrinsics.checkNotNullParameter(view, "view");
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Measurer) it.next()).onViewCreated(view);
        }
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onViewReady(ViewType view) {
        Intrinsics.checkNotNullParameter(view, "view");
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Measurer) it.next()).onViewReady(view);
        }
    }
}
