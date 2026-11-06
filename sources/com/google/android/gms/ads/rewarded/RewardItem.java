package com.google.android.gms.ads.rewarded;

/* JADX INFO: loaded from: classes3.dex */
public interface RewardItem {
    public static final Companion Companion = Companion.a;

    public static final class Companion {
        static final /* synthetic */ Companion a = new Companion();
        private static final a b = new a();

        private Companion() {
        }

        public final RewardItem getDEFAULT_REWARD() {
            return b;
        }
    }

    int getAmount();

    String getType();
}
