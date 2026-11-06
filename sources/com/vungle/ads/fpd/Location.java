package com.vungle.ads.fpd;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Serializable
public final class Location {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<Location> serializer() {
            return Location$$serializer.INSTANCE;
        }
    }

    public Location() {
    }

    public static final void write$Self(Location self, CompositeEncoder output, SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
    }

    public final Location setCountry(String country) {
        Intrinsics.checkNotNullParameter(country, "country");
        return this;
    }

    public final Location setDma(int i) {
        return this;
    }

    public final Location setRegionState(String regionState) {
        Intrinsics.checkNotNullParameter(regionState, "regionState");
        return this;
    }

    public /* synthetic */ Location(int i, SerializationConstructorMarker serializationConstructorMarker) {
    }
}
