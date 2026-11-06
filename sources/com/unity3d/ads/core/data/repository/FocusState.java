package com.unity3d.ads.core.data.repository;

import android.app.Activity;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FocusRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface FocusState {
    WeakReference<Activity> getActivity();

    /* JADX INFO: compiled from: FocusRepository.kt */
    public static final class Focused implements FocusState {
        private final WeakReference<Activity> activity;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Focused copy$default(Focused focused, WeakReference weakReference, int i, Object obj) {
            if ((i & 1) != 0) {
                weakReference = focused.activity;
            }
            return focused.copy(weakReference);
        }

        public final WeakReference<Activity> component1() {
            return this.activity;
        }

        public final Focused copy(WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new Focused(activity);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Focused) && Intrinsics.areEqual(this.activity, ((Focused) obj).activity);
        }

        public int hashCode() {
            return this.activity.hashCode();
        }

        public String toString() {
            return "Focused(activity=" + this.activity + ')';
        }

        public Focused(WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
        }

        @Override // com.unity3d.ads.core.data.repository.FocusState
        public WeakReference<Activity> getActivity() {
            return this.activity;
        }
    }

    /* JADX INFO: compiled from: FocusRepository.kt */
    public static final class Unfocused implements FocusState {
        private final WeakReference<Activity> activity;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Unfocused copy$default(Unfocused unfocused, WeakReference weakReference, int i, Object obj) {
            if ((i & 1) != 0) {
                weakReference = unfocused.activity;
            }
            return unfocused.copy(weakReference);
        }

        public final WeakReference<Activity> component1() {
            return this.activity;
        }

        public final Unfocused copy(WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new Unfocused(activity);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Unfocused) && Intrinsics.areEqual(this.activity, ((Unfocused) obj).activity);
        }

        public int hashCode() {
            return this.activity.hashCode();
        }

        public String toString() {
            return "Unfocused(activity=" + this.activity + ')';
        }

        public Unfocused(WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
        }

        @Override // com.unity3d.ads.core.data.repository.FocusState
        public WeakReference<Activity> getActivity() {
            return this.activity;
        }
    }
}
