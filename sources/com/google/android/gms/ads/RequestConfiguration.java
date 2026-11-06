package com.google.android.gms.ads;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class RequestConfiguration {
    public static final Companion Companion = new Companion(0);
    public static final String MAX_AD_CONTENT_RATING_G = "G";
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";
    public static final String MAX_AD_CONTENT_RATING_T = "T";
    public static final String MAX_AD_CONTENT_RATING_UNSPECIFIED = "";
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    private final int a;
    private final int b;
    private final String c;
    private final List d;
    private final AgeRestrictedTreatment e;

    public static final class Companion {
        public /* synthetic */ Companion(int i) {
            this();
        }

        private Companion() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForChildDirectedTreatment {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForUnderAgeOfConsent {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RequestConfiguration(int i, int i2, String maxAdContentRating, List<String> testDeviceIds) {
        this(i, i2, maxAdContentRating, testDeviceIds, 0);
        Intrinsics.checkNotNullParameter(maxAdContentRating, "maxAdContentRating");
        Intrinsics.checkNotNullParameter(testDeviceIds, "testDeviceIds");
    }

    public final AgeRestrictedTreatment getAgeRestrictedTreatment() {
        return this.e;
    }

    public final String getMaxAdContentRating() {
        return this.c;
    }

    public final int getTagForChildDirectedTreatment() {
        return this.a;
    }

    public final int getTagForUnderAgeOfConsent() {
        return this.b;
    }

    public final List<String> getTestDeviceIds() {
        return this.d;
    }

    public RequestConfiguration(int i, int i2, String maxAdContentRating, List<String> testDeviceIds, AgeRestrictedTreatment ageRestrictedTreatment) {
        Intrinsics.checkNotNullParameter(maxAdContentRating, "maxAdContentRating");
        Intrinsics.checkNotNullParameter(testDeviceIds, "testDeviceIds");
        Intrinsics.checkNotNullParameter(ageRestrictedTreatment, "ageRestrictedTreatment");
        this.a = i;
        this.b = i2;
        this.c = maxAdContentRating;
        this.d = testDeviceIds;
        this.e = ageRestrictedTreatment;
    }

    public /* synthetic */ RequestConfiguration(int i, int i2, String str, List list, int i3) {
        this(i, i2, str, (List<String>) list, AgeRestrictedTreatment.UNSPECIFIED);
    }
}
