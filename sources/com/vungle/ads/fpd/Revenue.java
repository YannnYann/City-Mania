package com.vungle.ads.fpd;

import com.unity3d.services.UnityAdsConstants;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Serializable
public final class Revenue {
    public static final Companion Companion = new Companion(null);
    public Float a;
    public Float b;
    public Float c;
    public Boolean d;

    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<Revenue> serializer() {
            return Revenue$$serializer.INSTANCE;
        }
    }

    public Revenue() {
    }

    public static final void write$Self(Revenue self, CompositeEncoder output, SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.a != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, FloatSerializer.INSTANCE, self.a);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.b != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, FloatSerializer.INSTANCE, self.b);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.c != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, FloatSerializer.INSTANCE, self.c);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 3) && self.d == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 3, BooleanSerializer.INSTANCE, self.d);
    }

    public final Revenue setEarningsByPlacement(float f) {
        return this;
    }

    public final Revenue setIAARevenueUSD(float f) {
        if (UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT <= f && f <= Float.MAX_VALUE) {
            this.a = Float.valueOf(f);
        }
        return this;
    }

    public final Revenue setIAPRevenueUSD(float f) {
        if (UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT <= f && f <= Float.MAX_VALUE) {
            this.b = Float.valueOf(f);
        }
        return this;
    }

    public final Revenue setIsUserAPurchaser(boolean z) {
        this.d = Boolean.valueOf(z);
        return this;
    }

    public final Revenue setIsUserASubscriber(boolean z) {
        return this;
    }

    public final Revenue setLast30DaysMeanSpendUsd(float f) {
        return this;
    }

    public final Revenue setLast30DaysMedianSpendUsd(float f) {
        return this;
    }

    public final Revenue setLast30DaysPlacementFillRate(float f) {
        return this;
    }

    public final Revenue setLast30DaysTotalSpendUsd(float f) {
        return this;
    }

    public final Revenue setLast30DaysUserLtvUsd(float f) {
        return this;
    }

    public final Revenue setLast30DaysUserPltvUsd(float f) {
        return this;
    }

    public final Revenue setLast7DaysMeanSpendUsd(float f) {
        return this;
    }

    public final Revenue setLast7DaysMedianSpendUsd(float f) {
        return this;
    }

    public final Revenue setLast7DaysPlacementFillRate(float f) {
        return this;
    }

    public final Revenue setLast7DaysTotalSpendUsd(float f) {
        return this;
    }

    public final Revenue setLast7DaysUserLtvUsd(float f) {
        return this;
    }

    public final Revenue setLast7DaysUserPltvUsd(float f) {
        return this;
    }

    public final Revenue setTopNAdomain(List<String> list) {
        return this;
    }

    public final Revenue setTotalEarningsUsd(float f) {
        return this;
    }

    public final Revenue setTotalRevenueUSD(float f) {
        if (UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT <= f && f <= Float.MAX_VALUE) {
            this.c = Float.valueOf(f);
        }
        return this;
    }

    public /* synthetic */ Revenue(int i, Float f, Float f2, Float f3, Boolean bool, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = f;
        }
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = f2;
        }
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = f3;
        }
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = bool;
        }
    }
}
