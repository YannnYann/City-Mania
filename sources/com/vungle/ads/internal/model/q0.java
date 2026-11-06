package com.vungle.ads.internal.model;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.zip.GZIPInputStream;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: loaded from: classes4.dex */
public final class q0 {
    public static final p0 Companion = new p0();
    public final Integer a;
    public final String b;
    public final List c;
    public final Json d;
    public final i0 e;

    public /* synthetic */ q0(int i, Integer num, String str, List list, i0 i0Var) {
        String strB;
        i0 i0Var2 = null;
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = num;
        }
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = str;
        }
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = list;
        }
        Json jsonJson$default = JsonKt.Json$default(null, o0.a, 1, null);
        this.d = jsonJson$default;
        if ((i & 8) != 0) {
            this.e = i0Var;
            return;
        }
        if (this.b != null && (strB = b()) != null) {
            KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(jsonJson$default.getSerializersModule(), Reflection.typeOf(i0.class));
            Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            i0Var2 = (i0) jsonJson$default.decodeFromString(kSerializerSerializer, strB);
        }
        this.e = i0Var2;
    }

    public static final void a(q0 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        i0 i0Var;
        String strB;
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.a != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, IntSerializer.INSTANCE, self.a);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.b != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.b);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.c != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, new ArrayListSerializer(StringSerializer.INSTANCE), self.c);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 3)) {
            i0 i0Var2 = self.e;
            if (self.b == null || (strB = self.b()) == null) {
                i0Var = null;
            } else {
                Json json = self.d;
                KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(i0.class));
                Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                i0Var = (i0) json.decodeFromString(kSerializerSerializer, strB);
            }
            if (Intrinsics.areEqual(i0Var2, i0Var)) {
                return;
            }
        }
        output.encodeNullableSerializableElement(serialDesc, 3, c.a, self.e);
    }

    public final String b() {
        GZIPInputStream gZIPInputStream;
        byte[] bArr;
        byte[] bArrDecode = Base64.decode(this.b, 0);
        if (bArrDecode == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrDecode);
        try {
            gZIPInputStream = new GZIPInputStream(byteArrayInputStream, 1024);
            try {
                bArr = new byte[1024];
            } finally {
            }
        } finally {
        }
        while (true) {
            int i = gZIPInputStream.read(bArr);
            if (i == -1) {
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(gZIPInputStream, null);
                CloseableKt.closeFinally(byteArrayInputStream, null);
                String string = byteArrayOutputStream.toString();
                Intrinsics.checkNotNullExpressionValue(string, "result.toString()");
                return string;
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public final Integer c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q0)) {
            return false;
        }
        q0 q0Var = (q0) obj;
        return Intrinsics.areEqual(this.a, q0Var.a) && Intrinsics.areEqual(this.b, q0Var.b) && Intrinsics.areEqual(this.c, q0Var.c);
    }

    public final int hashCode() {
        Integer num = this.a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        List list = this.c;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("BidPayload(version=");
        sbA.append(this.a);
        sbA.append(", adunit=");
        sbA.append(this.b);
        sbA.append(", impression=");
        sbA.append(this.c);
        sbA.append(')');
        return sbA.toString();
    }

    public final i0 a() {
        return this.e;
    }
}
