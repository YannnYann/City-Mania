package com.explorestack.protobuf;

/* JADX INFO: loaded from: classes.dex */
public final class MapFieldSchemas {
    public static final MapFieldSchema FULL_SCHEMA = loadSchemaForFullRuntime();
    public static final MapFieldSchema LITE_SCHEMA = new MapFieldSchemaLite();

    public static MapFieldSchema full() {
        return FULL_SCHEMA;
    }

    public static MapFieldSchema lite() {
        return LITE_SCHEMA;
    }

    public static MapFieldSchema loadSchemaForFullRuntime() {
        try {
            return (MapFieldSchema) MapFieldSchemaFull.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
