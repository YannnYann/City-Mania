package com.google.android.libraries.ads.mobile.sdk.common;

import ads_mobile_sdk.m21;
import ads_mobile_sdk.o21;
import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class RequestConfiguration {
    public static final Companion Companion = new Companion(0);
    public final TagForChildDirectedTreatment a;
    public final TagForUnderAgeOfConsent b;
    public final MaxAdContentRating c;
    public final List d;
    public final PublisherPrivacyPersonalizationState e;
    public final AgeRestrictedTreatment f;
    public final boolean g;

    public static final class Builder {
        public AgeRestrictedTreatment f;
        public TagForChildDirectedTreatment a = TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED;
        public TagForUnderAgeOfConsent b = TagForUnderAgeOfConsent.TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED;
        public MaxAdContentRating c = MaxAdContentRating.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        public final ArrayList d = CollectionsKt__CollectionsKt.arrayListOf("B3EEABB8EE11C2BE770B684D95219ECB");
        public PublisherPrivacyPersonalizationState e = PublisherPrivacyPersonalizationState.DEFAULT;
        public boolean g = true;

        public final /* synthetic */ Builder a(boolean z) {
            this.g = z;
            return this;
        }

        public final RequestConfiguration build() {
            return new RequestConfiguration(this.a, this.b, this.c, this.d, this.e, this.f, this.g, 0);
        }

        public final Builder setAgeRestrictedTreatment(AgeRestrictedTreatment ageRestrictedTreatment) {
            this.f = ageRestrictedTreatment;
            return this;
        }

        public final Builder setMaxAdContentRating(MaxAdContentRating maxAdContentRating) {
            Intrinsics.checkNotNullParameter(maxAdContentRating, "maxAdContentRating");
            this.c = maxAdContentRating;
            return this;
        }

        public final Builder setPublisherPrivacyPersonalizationState(PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState) {
            Intrinsics.checkNotNullParameter(publisherPrivacyPersonalizationState, "publisherPrivacyPersonalizationState");
            this.e = publisherPrivacyPersonalizationState;
            return this;
        }

        public final Builder setTagForChildDirectedTreatment(TagForChildDirectedTreatment tagForChildDirectedTreatment) {
            Intrinsics.checkNotNullParameter(tagForChildDirectedTreatment, "tagForChildDirectedTreatment");
            this.a = tagForChildDirectedTreatment;
            return this;
        }

        public final Builder setTagForUnderAgeOfConsent(TagForUnderAgeOfConsent tagForUnderAgeOfConsent) {
            Intrinsics.checkNotNullParameter(tagForUnderAgeOfConsent, "tagForUnderAgeOfConsent");
            this.b = tagForUnderAgeOfConsent;
            return this;
        }

        public final Builder setTestDeviceIds(List<String> testDeviceIds) {
            Intrinsics.checkNotNullParameter(testDeviceIds, "testDeviceIds");
            this.d.clear();
            this.d.addAll(testDeviceIds);
            this.d.add("B3EEABB8EE11C2BE770B684D95219ECB");
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(int i) {
            this();
        }

        public Companion() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class MaxAdContentRating {
        public static final MaxAdContentRating MAX_AD_CONTENT_RATING_G;
        public static final MaxAdContentRating MAX_AD_CONTENT_RATING_MA;
        public static final MaxAdContentRating MAX_AD_CONTENT_RATING_PG;
        public static final MaxAdContentRating MAX_AD_CONTENT_RATING_T;
        public static final MaxAdContentRating MAX_AD_CONTENT_RATING_UNSPECIFIED;
        public static final /* synthetic */ MaxAdContentRating[] b;
        public static final /* synthetic */ EnumEntries c;
        public final String a;

        static {
            MaxAdContentRating maxAdContentRating = new MaxAdContentRating(0, "MAX_AD_CONTENT_RATING_UNSPECIFIED", "");
            MAX_AD_CONTENT_RATING_UNSPECIFIED = maxAdContentRating;
            MaxAdContentRating maxAdContentRating2 = new MaxAdContentRating(1, "MAX_AD_CONTENT_RATING_G", com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_G);
            MAX_AD_CONTENT_RATING_G = maxAdContentRating2;
            MaxAdContentRating maxAdContentRating3 = new MaxAdContentRating(2, "MAX_AD_CONTENT_RATING_PG", com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_PG);
            MAX_AD_CONTENT_RATING_PG = maxAdContentRating3;
            MaxAdContentRating maxAdContentRating4 = new MaxAdContentRating(3, "MAX_AD_CONTENT_RATING_T", com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_T);
            MAX_AD_CONTENT_RATING_T = maxAdContentRating4;
            MaxAdContentRating maxAdContentRating5 = new MaxAdContentRating(4, "MAX_AD_CONTENT_RATING_MA", com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_MA);
            MAX_AD_CONTENT_RATING_MA = maxAdContentRating5;
            MaxAdContentRating[] maxAdContentRatingArr = {maxAdContentRating, maxAdContentRating2, maxAdContentRating3, maxAdContentRating4, maxAdContentRating5};
            b = maxAdContentRatingArr;
            c = EnumEntriesKt.enumEntries(maxAdContentRatingArr);
        }

        public MaxAdContentRating(int i, String str, String str2) {
            this.a = str2;
        }

        public static EnumEntries d() {
            return c;
        }

        public static MaxAdContentRating[] values() {
            return (MaxAdContentRating[]) b.clone();
        }

        public final String getValue() {
            return this.a;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class PublisherPrivacyPersonalizationState {
        public static final PublisherPrivacyPersonalizationState DEFAULT;
        public static final PublisherPrivacyPersonalizationState DISABLED;
        public static final PublisherPrivacyPersonalizationState ENABLED;
        public static final /* synthetic */ PublisherPrivacyPersonalizationState[] b;
        public static final /* synthetic */ EnumEntries c;
        public final int a;

        static {
            PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState = new PublisherPrivacyPersonalizationState("DEFAULT", 0, 0);
            DEFAULT = publisherPrivacyPersonalizationState;
            PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState2 = new PublisherPrivacyPersonalizationState("ENABLED", 1, 1);
            ENABLED = publisherPrivacyPersonalizationState2;
            PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState3 = new PublisherPrivacyPersonalizationState("DISABLED", 2, 2);
            DISABLED = publisherPrivacyPersonalizationState3;
            PublisherPrivacyPersonalizationState[] publisherPrivacyPersonalizationStateArr = {publisherPrivacyPersonalizationState, publisherPrivacyPersonalizationState2, publisherPrivacyPersonalizationState3};
            b = publisherPrivacyPersonalizationStateArr;
            c = EnumEntriesKt.enumEntries(publisherPrivacyPersonalizationStateArr);
        }

        public PublisherPrivacyPersonalizationState(String str, int i, int i2) {
            this.a = i2;
        }

        public static EnumEntries d() {
            return c;
        }

        public static PublisherPrivacyPersonalizationState[] values() {
            return (PublisherPrivacyPersonalizationState[]) b.clone();
        }

        public final int getValue() {
            return this.a;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class TagForChildDirectedTreatment {
        public static final TagForChildDirectedTreatment TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE;
        public static final TagForChildDirectedTreatment TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE;
        public static final TagForChildDirectedTreatment TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED;
        public static final /* synthetic */ TagForChildDirectedTreatment[] b;
        public final int a;

        static {
            TagForChildDirectedTreatment tagForChildDirectedTreatment = new TagForChildDirectedTreatment("TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED", 0, -1);
            TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = tagForChildDirectedTreatment;
            TagForChildDirectedTreatment tagForChildDirectedTreatment2 = new TagForChildDirectedTreatment("TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE", 1, 0);
            TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = tagForChildDirectedTreatment2;
            TagForChildDirectedTreatment tagForChildDirectedTreatment3 = new TagForChildDirectedTreatment("TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE", 2, 1);
            TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = tagForChildDirectedTreatment3;
            TagForChildDirectedTreatment[] tagForChildDirectedTreatmentArr = {tagForChildDirectedTreatment, tagForChildDirectedTreatment2, tagForChildDirectedTreatment3};
            b = tagForChildDirectedTreatmentArr;
            EnumEntriesKt.enumEntries(tagForChildDirectedTreatmentArr);
        }

        public TagForChildDirectedTreatment(String str, int i, int i2) {
            this.a = i2;
        }

        public static TagForChildDirectedTreatment[] values() {
            return (TagForChildDirectedTreatment[]) b.clone();
        }

        public final int getValue() {
            return this.a;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class TagForUnderAgeOfConsent {
        public static final TagForUnderAgeOfConsent TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE;
        public static final TagForUnderAgeOfConsent TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE;
        public static final TagForUnderAgeOfConsent TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED;
        public static final /* synthetic */ TagForUnderAgeOfConsent[] b;
        public final int a;

        static {
            TagForUnderAgeOfConsent tagForUnderAgeOfConsent = new TagForUnderAgeOfConsent("TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED", 0, -1);
            TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = tagForUnderAgeOfConsent;
            TagForUnderAgeOfConsent tagForUnderAgeOfConsent2 = new TagForUnderAgeOfConsent("TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE", 1, 0);
            TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = tagForUnderAgeOfConsent2;
            TagForUnderAgeOfConsent tagForUnderAgeOfConsent3 = new TagForUnderAgeOfConsent("TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE", 2, 1);
            TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = tagForUnderAgeOfConsent3;
            TagForUnderAgeOfConsent[] tagForUnderAgeOfConsentArr = {tagForUnderAgeOfConsent, tagForUnderAgeOfConsent2, tagForUnderAgeOfConsent3};
            b = tagForUnderAgeOfConsentArr;
            EnumEntriesKt.enumEntries(tagForUnderAgeOfConsentArr);
        }

        public TagForUnderAgeOfConsent(String str, int i, int i2) {
            this.a = i2;
        }

        public static TagForUnderAgeOfConsent[] values() {
            return (TagForUnderAgeOfConsent[]) b.clone();
        }

        public final int getValue() {
            return this.a;
        }
    }

    public /* synthetic */ RequestConfiguration(TagForChildDirectedTreatment tagForChildDirectedTreatment, TagForUnderAgeOfConsent tagForUnderAgeOfConsent, MaxAdContentRating maxAdContentRating, ArrayList arrayList, PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState, AgeRestrictedTreatment ageRestrictedTreatment, boolean z, int i) {
        this(tagForChildDirectedTreatment, tagForUnderAgeOfConsent, maxAdContentRating, arrayList, publisherPrivacyPersonalizationState, ageRestrictedTreatment, z);
    }

    public final /* synthetic */ boolean a() {
        return this.g;
    }

    public final Builder b() {
        return new Builder().setTagForChildDirectedTreatment(this.a).setTagForUnderAgeOfConsent(this.b).setMaxAdContentRating(this.c).setPublisherPrivacyPersonalizationState(this.e).setTestDeviceIds(this.d).setAgeRestrictedTreatment(this.f).a(this.g);
    }

    public final AgeRestrictedTreatment getAgeRestrictedTreatment() {
        AgeRestrictedTreatment ageRestrictedTreatment = this.f;
        return ageRestrictedTreatment == null ? AgeRestrictedTreatment.UNSPECIFIED : ageRestrictedTreatment;
    }

    public final AgeRestrictedTreatment getAgeRestrictedTreatmentInternal() {
        return this.f;
    }

    public final MaxAdContentRating getMaxAdContentRating() {
        return this.c;
    }

    public final PublisherPrivacyPersonalizationState getPublisherPrivacyPersonalizationState() {
        return this.e;
    }

    public final TagForChildDirectedTreatment getTagForChildDirectedTreatment() {
        return this.a;
    }

    public final TagForUnderAgeOfConsent getTagForUnderAgeOfConsent() {
        return this.b;
    }

    public final List<String> getTestDeviceIds() {
        return this.d;
    }

    public final boolean isTestDevice(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        List list = this.d;
        m21 m21Var = o21.f;
        return CollectionsKt___CollectionsKt.contains(list, m21.a(context));
    }

    public RequestConfiguration(TagForChildDirectedTreatment tagForChildDirectedTreatment, TagForUnderAgeOfConsent tagForUnderAgeOfConsent, MaxAdContentRating maxAdContentRating, ArrayList arrayList, PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState, AgeRestrictedTreatment ageRestrictedTreatment, boolean z) {
        this.a = tagForChildDirectedTreatment;
        this.b = tagForUnderAgeOfConsent;
        this.c = maxAdContentRating;
        this.d = arrayList;
        this.e = publisherPrivacyPersonalizationState;
        this.f = ageRestrictedTreatment;
        this.g = z;
    }
}
