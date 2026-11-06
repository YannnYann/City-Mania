package io.bidmachine.rendering.measurer;

import android.view.View;
import android.view.ViewGroup;
import io.bidmachine.util.Error;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public interface Measurer<ViewType extends View> extends Serializable {
    void destroy(Runnable runnable);

    void onClicked();

    void onError(Error error);

    void onShown();

    void onViewAddedToContainer(ViewType viewtype, ViewGroup viewGroup);

    void onViewCreated(ViewType viewtype);

    void onViewReady(ViewType viewtype);
}
