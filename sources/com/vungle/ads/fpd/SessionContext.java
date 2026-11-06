package com.vungle.ads.fpd;

import com.unity3d.services.UnityAdsConstants;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Serializable
public final class SessionContext {
    public static final Companion Companion = new Companion(null);
    public Float a;

    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<SessionContext> serializer() {
            return SessionContext$$serializer.INSTANCE;
        }
    }

    public SessionContext() {
    }

    public static final void write$Self(SessionContext self, CompositeEncoder output, SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (!output.shouldEncodeElementDefault(serialDesc, 0) && self.a == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 0, FloatSerializer.INSTANCE, self.a);
    }

    public final SessionContext setFriends(List<String> list) {
        return this;
    }

    public final SessionContext setHealthPercentile(float f) {
        return this;
    }

    public final SessionContext setInGamePurchasesUSD(float f) {
        return this;
    }

    public final SessionContext setLevelPercentile(float f) {
        if (UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT <= f && f <= 100.0f) {
            this.a = Float.valueOf(f);
        }
        return this;
    }

    public final SessionContext setPage(String page) {
        Intrinsics.checkNotNullParameter(page, "page");
        return this;
    }

    public final SessionContext setSessionDuration(int i) {
        return this;
    }

    public final SessionContext setSessionStartTime(int i) {
        return this;
    }

    public final SessionContext setSignupDate(int i) {
        return this;
    }

    public final SessionContext setTimeSpent(int i) {
        return this;
    }

    public final SessionContext setUserID(String userID) {
        Intrinsics.checkNotNullParameter(userID, "userID");
        return this;
    }

    public final SessionContext setUserLevelPercentile(float f) {
        return this;
    }

    public final SessionContext setUserScorePercentile(float f) {
        return this;
    }

    public /* synthetic */ SessionContext(int i, Float f, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = f;
        }
    }
}
