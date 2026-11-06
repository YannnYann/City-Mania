package io.bidmachine.util;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: ProcessUrlResult.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ProcessUrlResult {
    public static final Companion Companion = new Companion(null);
    public static final ProcessUrlResult FAIL;
    public static final ProcessUrlResult SUCCESS;
    public final boolean isSuccess;
    public final SystemComponent systemComponent;

    public ProcessUrlResult(boolean z, SystemComponent systemComponent) {
        this.isSuccess = z;
        this.systemComponent = systemComponent;
    }

    public /* synthetic */ ProcessUrlResult(boolean z, SystemComponent systemComponent, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i & 2) != 0 ? null : systemComponent);
    }

    public final SystemComponent getSystemComponent() {
        return this.systemComponent;
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    /* JADX INFO: compiled from: ProcessUrlResult.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final ProcessUrlResult getSUCCESS() {
            return ProcessUrlResult.SUCCESS;
        }

        public final ProcessUrlResult getFAIL() {
            return ProcessUrlResult.FAIL;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i = 2;
        SUCCESS = new ProcessUrlResult(true, 0 == true ? 1 : 0, i, 0 == true ? 1 : 0);
        FAIL = new ProcessUrlResult(false, 0 == true ? 1 : 0, i, 0 == true ? 1 : 0);
    }
}
