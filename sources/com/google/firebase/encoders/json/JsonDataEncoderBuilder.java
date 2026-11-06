package com.google.firebase.encoders.json;

import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.ValueEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import j$.util.DesugarTimeZone;
import java.io.IOException;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class JsonDataEncoderBuilder implements EncoderConfig<JsonDataEncoderBuilder> {
    public static final ObjectEncoder<Object> DEFAULT_FALLBACK_ENCODER = new ObjectEncoder() { // from class: com.google.firebase.encoders.json.JsonDataEncoderBuilder$$ExternalSyntheticLambda0
        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            JsonDataEncoderBuilder.$r8$lambda$bnoichjKU0v4bRcIU8iyVmXGe3M(obj, objectEncoderContext);
        }
    };
    public static final ValueEncoder<String> STRING_ENCODER = new ValueEncoder() { // from class: com.google.firebase.encoders.json.JsonDataEncoderBuilder$$ExternalSyntheticLambda1
        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ValueEncoderContext valueEncoderContext) throws IOException {
            valueEncoderContext.add((String) obj);
        }
    };
    public static final ValueEncoder<Boolean> BOOLEAN_ENCODER = new ValueEncoder() { // from class: com.google.firebase.encoders.json.JsonDataEncoderBuilder$$ExternalSyntheticLambda2
        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ValueEncoderContext valueEncoderContext) throws IOException {
            valueEncoderContext.add(((Boolean) obj).booleanValue());
        }
    };
    public static final TimestampEncoder TIMESTAMP_ENCODER = new TimestampEncoder();
    public final Map<Class<?>, ObjectEncoder<?>> objectEncoders = new HashMap();
    public final Map<Class<?>, ValueEncoder<?>> valueEncoders = new HashMap();
    public ObjectEncoder<Object> fallbackEncoder = DEFAULT_FALLBACK_ENCODER;
    public boolean ignoreNullValues = false;

    public static /* synthetic */ void $r8$lambda$bnoichjKU0v4bRcIU8iyVmXGe3M(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    public static final class TimestampEncoder implements ValueEncoder<Date> {
        public static final DateFormat rfc339;

        public TimestampEncoder() {
        }

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            rfc339 = simpleDateFormat;
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        }

        @Override // com.google.firebase.encoders.Encoder
        public void encode(Date date, ValueEncoderContext valueEncoderContext) throws IOException {
            valueEncoderContext.add(rfc339.format(date));
        }
    }

    public JsonDataEncoderBuilder() {
        registerEncoder(String.class, STRING_ENCODER);
        registerEncoder(Boolean.class, BOOLEAN_ENCODER);
        registerEncoder(Date.class, TIMESTAMP_ENCODER);
    }

    @Override // com.google.firebase.encoders.config.EncoderConfig
    public <T> JsonDataEncoderBuilder registerEncoder(Class<T> cls, ObjectEncoder<? super T> objectEncoder) {
        this.objectEncoders.put(cls, objectEncoder);
        this.valueEncoders.remove(cls);
        return this;
    }

    public <T> JsonDataEncoderBuilder registerEncoder(Class<T> cls, ValueEncoder<? super T> valueEncoder) {
        this.valueEncoders.put(cls, valueEncoder);
        this.objectEncoders.remove(cls);
        return this;
    }

    public JsonDataEncoderBuilder configureWith(Configurator configurator) {
        configurator.configure(this);
        return this;
    }

    public JsonDataEncoderBuilder ignoreNullValues(boolean z) {
        this.ignoreNullValues = z;
        return this;
    }

    public DataEncoder build() {
        return new DataEncoder() { // from class: com.google.firebase.encoders.json.JsonDataEncoderBuilder.1
            @Override // com.google.firebase.encoders.DataEncoder
            public void encode(Object obj, Writer writer) throws IOException {
                JsonValueObjectEncoderContext jsonValueObjectEncoderContext = new JsonValueObjectEncoderContext(writer, JsonDataEncoderBuilder.this.objectEncoders, JsonDataEncoderBuilder.this.valueEncoders, JsonDataEncoderBuilder.this.fallbackEncoder, JsonDataEncoderBuilder.this.ignoreNullValues);
                jsonValueObjectEncoderContext.add(obj, false);
                jsonValueObjectEncoderContext.close();
            }
        };
    }
}
