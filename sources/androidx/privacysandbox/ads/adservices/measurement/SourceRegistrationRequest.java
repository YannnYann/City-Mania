package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import android.view.InputEvent;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SourceRegistrationRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SourceRegistrationRequest {
    public final InputEvent inputEvent;
    public final List<Uri> registrationUris;

    public final InputEvent getInputEvent() {
        return this.inputEvent;
    }

    public final List<Uri> getRegistrationUris() {
        return this.registrationUris;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SourceRegistrationRequest)) {
            return false;
        }
        SourceRegistrationRequest sourceRegistrationRequest = (SourceRegistrationRequest) obj;
        return Intrinsics.areEqual(this.registrationUris, sourceRegistrationRequest.registrationUris) && Intrinsics.areEqual(this.inputEvent, sourceRegistrationRequest.inputEvent);
    }

    public int hashCode() {
        int iHashCode = this.registrationUris.hashCode();
        InputEvent inputEvent = this.inputEvent;
        return inputEvent != null ? (iHashCode * 31) + inputEvent.hashCode() : iHashCode;
    }

    public String toString() {
        return "AppSourcesRegistrationRequest { " + ("RegistrationUris=[" + this.registrationUris + "], InputEvent=" + this.inputEvent) + " }";
    }
}
