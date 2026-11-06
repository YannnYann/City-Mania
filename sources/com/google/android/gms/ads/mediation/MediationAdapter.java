package com.google.android.gms.ads.mediation;

import android.os.Bundle;

/* JADX INFO: loaded from: classes3.dex */
public interface MediationAdapter extends MediationExtrasReceiver {
    public static final int CAPABILITIES_DELAYED_IMPRESSIONS = 1;
    public static final int CAPABILITIES_FLOOR_CPM = 2;
    public static final int CAPABILITIES_RETURNS_CPM = 4;
    public static final Companion Companion = Companion.a;

    public static final class AdapterInfoBuilder {
        public static final Companion Companion = new Companion(0);
        private int a;

        public static final class Companion {
            public /* synthetic */ Companion(int i) {
                this();
            }

            private Companion() {
            }
        }

        public final Bundle build() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.a);
            return bundle;
        }

        public final AdapterInfoBuilder setCapabilities(int i) {
            this.a = i;
            return this;
        }
    }

    public static final class Companion {
        public static final int CAPABILITIES_DELAYED_IMPRESSIONS = 1;
        public static final int CAPABILITIES_FLOOR_CPM = 2;
        public static final int CAPABILITIES_RETURNS_CPM = 4;
        static final /* synthetic */ Companion a = new Companion();

        private Companion() {
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
