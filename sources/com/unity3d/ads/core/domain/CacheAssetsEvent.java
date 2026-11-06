package com.unity3d.ads.core.domain;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CacheAssets.kt */
/* JADX INFO: loaded from: classes4.dex */
public abstract class CacheAssetsEvent {
    public /* synthetic */ CacheAssetsEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: CacheAssets.kt */
    public static final class Success extends CacheAssetsEvent {
        public static final Success INSTANCE = new Success();

        private Success() {
            super(null);
        }
    }

    private CacheAssetsEvent() {
    }

    /* JADX INFO: compiled from: CacheAssets.kt */
    public static final class Failure extends CacheAssetsEvent {
        private final String message;

        public static /* synthetic */ Failure copy$default(Failure failure, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = failure.message;
            }
            return failure.copy(str);
        }

        public final String component1() {
            return this.message;
        }

        public final Failure copy(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new Failure(message);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Failure) && Intrinsics.areEqual(this.message, ((Failure) obj).message);
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return "Failure(message=" + this.message + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failure(String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }

        public final String getMessage() {
            return this.message;
        }
    }
}
