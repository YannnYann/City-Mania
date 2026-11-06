package com.explorestack.protobuf;

/* JADX INFO: loaded from: classes.dex */
public interface MessageInfo {
    MessageLite getDefaultInstance();

    ProtoSyntax getSyntax();

    boolean isMessageSetWireFormat();
}
