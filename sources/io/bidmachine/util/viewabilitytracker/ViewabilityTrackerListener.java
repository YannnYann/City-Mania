package io.bidmachine.util.viewabilitytracker;

import io.bidmachine.util.Error;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;

/* JADX INFO: compiled from: ViewabilityTrackerListener.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ViewabilityTrackerListener {
    void onVerifyingFailed(ActionEvent actionEvent, Error error);

    void onVerifyingSuccess(ActionEvent actionEvent);
}
