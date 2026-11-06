package com.vungle.ads.internal.signals;

import com.vungle.ads.internal.model.q3;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements GeneratedSerializer {
    public static final a a;
    public static final /* synthetic */ PluginGeneratedSerialDescriptor b;

    static {
        a aVar = new a();
        a = aVar;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.signals.SessionData", aVar, 12);
        pluginGeneratedSerialDescriptor.addElement("103", false);
        pluginGeneratedSerialDescriptor.addElement("101", true);
        pluginGeneratedSerialDescriptor.addElement("100", true);
        pluginGeneratedSerialDescriptor.addElement("106", true);
        pluginGeneratedSerialDescriptor.addElement("102", true);
        pluginGeneratedSerialDescriptor.addElement("104", true);
        pluginGeneratedSerialDescriptor.addElement("105", true);
        pluginGeneratedSerialDescriptor.addElement("112", true);
        pluginGeneratedSerialDescriptor.addElement("113", true);
        pluginGeneratedSerialDescriptor.addElement("114", true);
        pluginGeneratedSerialDescriptor.addElement("115", true);
        pluginGeneratedSerialDescriptor.addElement("116", true);
        b = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        ArrayListSerializer arrayListSerializer = new ArrayListSerializer(k.a);
        ArrayListSerializer arrayListSerializer2 = new ArrayListSerializer(q3.a);
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, StringSerializer.INSTANCE, longSerializer, arrayListSerializer, longSerializer, intSerializer, arrayListSerializer2, intSerializer, intSerializer, intSerializer, intSerializer, intSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object deserialize(Decoder decoder) {
        int i;
        Object objDecodeSerializableElement;
        Object objDecodeSerializableElement2;
        int iDecodeIntElement;
        int i2;
        int i3;
        int i4;
        int i5;
        int iDecodeIntElement2;
        long j;
        String str;
        long j2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(pluginGeneratedSerialDescriptor);
        int i6 = 0;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            int iDecodeIntElement3 = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, 0);
            String strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(pluginGeneratedSerialDescriptor, 1);
            long jDecodeLongElement = compositeDecoderBeginStructure.decodeLongElement(pluginGeneratedSerialDescriptor, 2);
            objDecodeSerializableElement = compositeDecoderBeginStructure.decodeSerializableElement(pluginGeneratedSerialDescriptor, 3, new ArrayListSerializer(k.a), null);
            long jDecodeLongElement2 = compositeDecoderBeginStructure.decodeLongElement(pluginGeneratedSerialDescriptor, 4);
            int iDecodeIntElement4 = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, 5);
            objDecodeSerializableElement2 = compositeDecoderBeginStructure.decodeSerializableElement(pluginGeneratedSerialDescriptor, 6, new ArrayListSerializer(q3.a), null);
            int iDecodeIntElement5 = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, 7);
            int iDecodeIntElement6 = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, 8);
            int iDecodeIntElement7 = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, 9);
            i6 = 4095;
            i = iDecodeIntElement3;
            iDecodeIntElement = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, 10);
            i2 = iDecodeIntElement7;
            i3 = iDecodeIntElement5;
            i4 = iDecodeIntElement6;
            i5 = iDecodeIntElement4;
            iDecodeIntElement2 = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, 11);
            j = jDecodeLongElement2;
            str = strDecodeStringElement;
            j2 = jDecodeLongElement;
        } else {
            int i7 = 11;
            boolean z = true;
            int iDecodeIntElement8 = 0;
            int iDecodeIntElement9 = 0;
            int iDecodeIntElement10 = 0;
            int iDecodeIntElement11 = 0;
            Object objDecodeSerializableElement3 = null;
            Object objDecodeSerializableElement4 = null;
            String strDecodeStringElement2 = null;
            long jDecodeLongElement3 = 0;
            long jDecodeLongElement4 = 0;
            int iDecodeIntElement12 = 0;
            int iDecodeIntElement13 = 0;
            int iDecodeIntElement14 = 0;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(pluginGeneratedSerialDescriptor);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        i7 = 11;
                        break;
                    case 0:
                        i6 |= 1;
                        iDecodeIntElement8 = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, 0);
                        i7 = 11;
                        break;
                    case 1:
                        strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(pluginGeneratedSerialDescriptor, 1);
                        i6 |= 2;
                        i7 = 11;
                        break;
                    case 2:
                        jDecodeLongElement4 = compositeDecoderBeginStructure.decodeLongElement(pluginGeneratedSerialDescriptor, 2);
                        i6 |= 4;
                        i7 = 11;
                        break;
                    case 3:
                        objDecodeSerializableElement3 = compositeDecoderBeginStructure.decodeSerializableElement(pluginGeneratedSerialDescriptor, 3, new ArrayListSerializer(k.a), objDecodeSerializableElement3);
                        i6 |= 8;
                        i7 = 11;
                        break;
                    case 4:
                        jDecodeLongElement3 = compositeDecoderBeginStructure.decodeLongElement(pluginGeneratedSerialDescriptor, 4);
                        i6 |= 16;
                        i7 = 11;
                        break;
                    case 5:
                        iDecodeIntElement10 = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, 5);
                        i6 |= 32;
                        i7 = 11;
                        break;
                    case 6:
                        objDecodeSerializableElement4 = compositeDecoderBeginStructure.decodeSerializableElement(pluginGeneratedSerialDescriptor, 6, new ArrayListSerializer(q3.a), objDecodeSerializableElement4);
                        i6 |= 64;
                        i7 = 11;
                        break;
                    case 7:
                        iDecodeIntElement14 = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, 7);
                        i6 |= Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
                        break;
                    case 8:
                        iDecodeIntElement9 = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, 8);
                        i6 |= 256;
                        break;
                    case 9:
                        iDecodeIntElement13 = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, 9);
                        i6 |= EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
                        break;
                    case 10:
                        iDecodeIntElement12 = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, 10);
                        i6 |= 1024;
                        break;
                    case 11:
                        iDecodeIntElement11 = compositeDecoderBeginStructure.decodeIntElement(pluginGeneratedSerialDescriptor, i7);
                        i6 |= com.ironsource.mediationsdk.metadata.a.o;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            i = iDecodeIntElement8;
            objDecodeSerializableElement = objDecodeSerializableElement3;
            objDecodeSerializableElement2 = objDecodeSerializableElement4;
            iDecodeIntElement = iDecodeIntElement12;
            i2 = iDecodeIntElement13;
            i3 = iDecodeIntElement14;
            i4 = iDecodeIntElement9;
            i5 = iDecodeIntElement10;
            iDecodeIntElement2 = iDecodeIntElement11;
            j = jDecodeLongElement3;
            str = strDecodeStringElement2;
            j2 = jDecodeLongElement4;
        }
        int i8 = i6;
        compositeDecoderBeginStructure.endStructure(pluginGeneratedSerialDescriptor);
        return new c(i8, i, str, j2, (List) objDecodeSerializableElement, j, i5, (List) objDecodeSerializableElement2, i3, i4, i2, iDecodeIntElement, iDecodeIntElement2);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return b;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, Object obj) {
        c value = (c) obj;
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(pluginGeneratedSerialDescriptor);
        c.a(value, compositeEncoderBeginStructure, pluginGeneratedSerialDescriptor);
        compositeEncoderBeginStructure.endStructure(pluginGeneratedSerialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
