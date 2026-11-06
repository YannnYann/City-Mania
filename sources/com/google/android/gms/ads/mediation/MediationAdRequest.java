package com.google.android.gms.ads.mediation;

import android.location.Location;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import java.util.Date;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public interface MediationAdRequest {
    public static final Companion Companion = Companion.a;

    public static final class Companion {
        static final /* synthetic */ Companion a = new Companion();
        private static final int b = RequestConfiguration.TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE.getValue();
        private static final int c = RequestConfiguration.TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE.getValue();
        private static final int d = RequestConfiguration.TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED.getValue();

        private Companion() {
        }

        public final int getTAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE() {
            return c;
        }

        public final int getTAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE() {
            return b;
        }

        public final int getTAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED() {
            return d;
        }
    }

    Date getBirthday();

    int getGender();

    Set<String> getKeywords();

    Location getLocation();

    String getMaxAdContentRating();

    boolean isDesignedForFamilies();

    boolean isTesting();

    int taggedForChildDirectedTreatment();

    int taggedForUnderAgeTreatment();
}
