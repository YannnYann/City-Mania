package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public interface MessageInfo {
    MessageLite getDefaultInstance();

    ProtoSyntax getSyntax();

    boolean isMessageSetWireFormat();
}
