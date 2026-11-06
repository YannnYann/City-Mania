package io.bidmachine.util.viewabilityhandler;

import io.bidmachine.util.Error;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;

/* JADX INFO: compiled from: ViewabilityHandlerListener.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ViewabilityHandlerListener {
    void onViewabilityChanged(boolean z);

    void onViewabilityError(ActionEvent actionEvent, Error error);

    void onViewabilityEvent(ActionEvent actionEvent);

    void onViewabilityTracked();
}
