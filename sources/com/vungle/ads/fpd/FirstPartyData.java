package com.vungle.ads.fpd;

import com.ironsource.R6;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: loaded from: classes4.dex */
@Serializable
public final class FirstPartyData {
    public static final Companion Companion = new Companion(null);
    public static final Json g = JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.vungle.ads.fpd.FirstPartyData$Companion$JSON$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(JsonBuilder jsonBuilder) {
            invoke2(jsonBuilder);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(JsonBuilder Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.setPrettyPrint(true);
            Json.setExplicitNulls(false);
            Json.setEncodeDefaults(false);
        }
    }, 1, null);
    public final String a;
    public volatile SessionContext b;
    public volatile Demographic c;
    public volatile Location d;
    public volatile Revenue e;
    public Map f;

    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<FirstPartyData> serializer() {
            return FirstPartyData$$serializer.INSTANCE;
        }
    }

    public FirstPartyData() {
        this.a = R6.k0;
    }

    public static final void write$Self(FirstPartyData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.a, R6.k0)) {
            output.encodeStringElement(serialDesc, 0, self.a);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.b != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, SessionContext$$serializer.INSTANCE, self.b);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.c != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, Demographic$$serializer.INSTANCE, self.c);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.d != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, Location$$serializer.INSTANCE, self.d);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.e != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, Revenue$$serializer.INSTANCE, self.e);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 5) && self.f == null) {
            return;
        }
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        output.encodeNullableSerializableElement(serialDesc, 5, new LinkedHashMapSerializer(stringSerializer, stringSerializer), self.f);
    }

    public final synchronized void clearAll() {
        try {
            this.b = null;
            this.c = null;
            this.e = null;
            this.d = null;
            Map map = this.f;
            if (map != null) {
                map.clear();
            }
            this.f = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final String debug() {
        Json json = g;
        KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(FirstPartyData.class));
        Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        return json.encodeToString(kSerializerSerializer, this);
    }

    public final synchronized Map<String, String> getCustomData() {
        Map<String, String> concurrentHashMap;
        concurrentHashMap = this.f;
        if (concurrentHashMap == null) {
            concurrentHashMap = new ConcurrentHashMap<>();
            this.f = concurrentHashMap;
        }
        return concurrentHashMap;
    }

    public final synchronized Demographic getDemographic() {
        Demographic demographic;
        demographic = this.c;
        if (demographic == null) {
            demographic = new Demographic();
            this.c = demographic;
        }
        return demographic;
    }

    public final synchronized Location getLocation() {
        Location location;
        location = this.d;
        if (location == null) {
            location = new Location();
            this.d = location;
        }
        return location;
    }

    public final synchronized Revenue getRevenue() {
        Revenue revenue;
        revenue = this.e;
        if (revenue == null) {
            revenue = new Revenue();
            this.e = revenue;
        }
        return revenue;
    }

    public final synchronized SessionContext getSessionContext() {
        SessionContext sessionContext;
        sessionContext = this.b;
        if (sessionContext == null) {
            sessionContext = new SessionContext();
            this.b = sessionContext;
        }
        return sessionContext;
    }

    public /* synthetic */ FirstPartyData(int i, String str, SessionContext sessionContext, Demographic demographic, Location location, Revenue revenue, Map map, SerializationConstructorMarker serializationConstructorMarker) {
        this.a = (i & 1) == 0 ? R6.k0 : str;
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = sessionContext;
        }
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = demographic;
        }
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = location;
        }
        if ((i & 16) == 0) {
            this.e = null;
        } else {
            this.e = revenue;
        }
        if ((i & 32) == 0) {
            this.f = null;
        } else {
            this.f = map;
        }
    }
}
