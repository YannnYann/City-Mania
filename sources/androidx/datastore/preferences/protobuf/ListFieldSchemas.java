package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public final class ListFieldSchemas {
    public static final ListFieldSchema FULL_SCHEMA = loadSchemaForFullRuntime();
    public static final ListFieldSchema LITE_SCHEMA = new ListFieldSchemaLite();

    public static ListFieldSchema full() {
        return FULL_SCHEMA;
    }

    public static ListFieldSchema lite() {
        return LITE_SCHEMA;
    }

    public static ListFieldSchema loadSchemaForFullRuntime() {
        if (Protobuf.assumeLiteRuntime) {
            return null;
        }
        try {
            return (ListFieldSchema) Class.forName("androidx.datastore.preferences.protobuf.ListFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
