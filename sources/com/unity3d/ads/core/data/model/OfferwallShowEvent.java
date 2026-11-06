package com.unity3d.ads.core.data.model;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: OfferwallShowEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
public abstract class OfferwallShowEvent {
    public /* synthetic */ OfferwallShowEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: OfferwallShowEvent.kt */
    public static final class Show extends OfferwallShowEvent {
        public static final Show INSTANCE = new Show();

        private Show() {
            super(null);
        }
    }

    private OfferwallShowEvent() {
    }
}
