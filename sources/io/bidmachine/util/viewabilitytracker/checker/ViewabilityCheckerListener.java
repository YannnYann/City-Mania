package io.bidmachine.util.viewabilitytracker.checker;

import io.bidmachine.util.Error;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;

/* JADX INFO: compiled from: ViewabilityCheckerListener.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ViewabilityCheckerListener {
    void onCheckFailed(ViewabilityChecker viewabilityChecker, ActionEvent actionEvent, Error error);

    void onCheckPassed(ViewabilityChecker viewabilityChecker, ActionEvent actionEvent);
}
