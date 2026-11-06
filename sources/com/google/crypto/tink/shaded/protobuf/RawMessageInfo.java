package com.google.crypto.tink.shaded.protobuf;

/* JADX INFO: loaded from: classes3.dex */
public final class RawMessageInfo implements MessageInfo {
    public final MessageLite defaultInstance;
    public final int flags;

    /* JADX INFO: renamed from: info, reason: collision with root package name */
    public final String f3921info;
    public final Object[] objects;

    public RawMessageInfo(MessageLite defaultInstance, String info2, Object[] objects) {
        this.defaultInstance = defaultInstance;
        this.f3921info = info2;
        this.objects = objects;
        char cCharAt = info2.charAt(0);
        if (cCharAt < 55296) {
            this.flags = cCharAt;
            return;
        }
        int i = cCharAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt2 = info2.charAt(i3);
            if (cCharAt2 < 55296) {
                this.flags = i | (cCharAt2 << i2);
                return;
            } else {
                i |= (cCharAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    public String getStringInfo() {
        return this.f3921info;
    }

    public Object[] getObjects() {
        return this.objects;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageInfo
    public MessageLite getDefaultInstance() {
        return this.defaultInstance;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageInfo
    public ProtoSyntax getSyntax() {
        int i = this.flags;
        if ((i & 1) != 0) {
            return ProtoSyntax.PROTO2;
        }
        if ((i & 4) == 4) {
            return ProtoSyntax.EDITIONS;
        }
        return ProtoSyntax.PROTO3;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageInfo
    public boolean isMessageSetWireFormat() {
        return (this.flags & 2) == 2;
    }
}
