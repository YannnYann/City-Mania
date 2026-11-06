package com.unity3d.ads.adplayer;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Invocation.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class Invocation {
    private final String location;
    private final Object[] parameters;

    public Invocation(String location, Object[] parameters) {
        Intrinsics.checkNotNullParameter(location, "location");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        this.location = location;
        this.parameters = parameters;
    }

    public final String getLocation() {
        return this.location;
    }

    public final Object[] getParameters() {
        return this.parameters;
    }
}
