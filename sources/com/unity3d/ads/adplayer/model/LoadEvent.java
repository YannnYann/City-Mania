package com.unity3d.ads.adplayer.model;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoadEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
public abstract class LoadEvent {
    public /* synthetic */ LoadEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: LoadEvent.kt */
    public static final class Completed extends LoadEvent {
        public static final Completed INSTANCE = new Completed();

        private Completed() {
            super(null);
        }
    }

    private LoadEvent() {
    }

    /* JADX INFO: compiled from: LoadEvent.kt */
    public static final class Error extends LoadEvent {
        private final int errorCode;
        private final String message;

        public static /* synthetic */ Error copy$default(Error error, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = error.message;
            }
            if ((i2 & 2) != 0) {
                i = error.errorCode;
            }
            return error.copy(str, i);
        }

        public final String component1() {
            return this.message;
        }

        public final int component2() {
            return this.errorCode;
        }

        public final Error copy(String message, int i) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new Error(message, i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Error)) {
                return false;
            }
            Error error = (Error) obj;
            return Intrinsics.areEqual(this.message, error.message) && this.errorCode == error.errorCode;
        }

        public int hashCode() {
            return (this.message.hashCode() * 31) + Integer.hashCode(this.errorCode);
        }

        public String toString() {
            return "Error(message=" + this.message + ", errorCode=" + this.errorCode + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(String message, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
            this.errorCode = i;
        }

        public final int getErrorCode() {
            return this.errorCode;
        }

        public final String getMessage() {
            return this.message;
        }
    }
}
