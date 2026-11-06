package io.bidmachine.util.viewabilitytracker.model;

/* JADX INFO: compiled from: ActionEvent.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ActionEvent {
    public final int actionCode;
    public final boolean isBillable;

    public ActionEvent(int i, boolean z) {
        this.actionCode = i;
        this.isBillable = z;
    }

    public final int getActionCode() {
        return this.actionCode;
    }

    public final boolean isBillable() {
        return this.isBillable;
    }

    public String toString() {
        return "action code - " + this.actionCode + ", is billable - " + this.isBillable;
    }
}
