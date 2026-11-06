package io.bidmachine.rendering.model.engagedclick;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class EngagedClickReport {
    public final EngagedClickAction a;
    public final CreativeProfile b;
    public final ProfileSource c;
    public final Double d;
    public final Double e;
    public final long f;

    public EngagedClickReport(EngagedClickAction engagedClickAction, CreativeProfile profile, ProfileSource source, Double d, Double d2, long j) {
        Intrinsics.checkNotNullParameter(engagedClickAction, "engagedClickAction");
        Intrinsics.checkNotNullParameter(profile, "profile");
        Intrinsics.checkNotNullParameter(source, "source");
        this.a = engagedClickAction;
        this.b = profile;
        this.c = source;
        this.d = d;
        this.e = d2;
        this.f = j;
    }

    public final Double getAmbientDiff() {
        return this.e;
    }

    public final Double getDiffScore() {
        return this.d;
    }

    public final EngagedClickAction getEngagedClickAction() {
        return this.a;
    }

    public final long getInteractionDurationMs() {
        return this.f;
    }

    public final CreativeProfile getProfile() {
        return this.b;
    }

    public final ProfileSource getSource() {
        return this.c;
    }

    public String toString() {
        return "engagedClickAction - " + this.a + ", profile - " + this.b + ", source - " + this.c + ", diffScore - " + this.d + ", ambientDiff - " + this.e + ", interactionDurationMs - " + this.f;
    }
}
