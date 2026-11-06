package com.explorestack.protobuf;

/* JADX INFO: loaded from: classes.dex */
public final class RawMessageInfo implements MessageInfo {
    public final MessageLite defaultInstance;
    public final int flags;

    /* JADX INFO: renamed from: info, reason: collision with root package name */
    public final String f3920info;
    public final Object[] objects;

    public String getStringInfo() {
        return this.f3920info;
    }

    public Object[] getObjects() {
        return this.objects;
    }

    @Override // com.explorestack.protobuf.MessageInfo
    public MessageLite getDefaultInstance() {
        return this.defaultInstance;
    }

    @Override // com.explorestack.protobuf.MessageInfo
    public ProtoSyntax getSyntax() {
        return (this.flags & 1) == 1 ? ProtoSyntax.PROTO2 : ProtoSyntax.PROTO3;
    }

    @Override // com.explorestack.protobuf.MessageInfo
    public boolean isMessageSetWireFormat() {
        return (this.flags & 2) == 2;
    }
}
