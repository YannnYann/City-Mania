package io.bidmachine.rendering.model.engagedclick;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class CreativeProfileInfo {
    public static final Companion Companion = new Companion(null);
    public static final CreativeProfileInfo c = new CreativeProfileInfo(CreativeProfile.REGULAR, ProfileSource.NONE);
    public final CreativeProfile a;
    public final ProfileSource b;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CreativeProfileInfo getDEFAULT_CREATIVE_PROFILE_INFO() {
            return CreativeProfileInfo.c;
        }

        public Companion() {
        }
    }

    public CreativeProfileInfo(CreativeProfile creativeProfile, ProfileSource profileSource) {
        Intrinsics.checkNotNullParameter(creativeProfile, "creativeProfile");
        Intrinsics.checkNotNullParameter(profileSource, "profileSource");
        this.a = creativeProfile;
        this.b = profileSource;
    }

    public final CreativeProfile getCreativeProfile() {
        return this.a;
    }

    public final ProfileSource getProfileSource() {
        return this.b;
    }
}
