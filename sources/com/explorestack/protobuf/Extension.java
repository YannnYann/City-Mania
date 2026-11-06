package com.explorestack.protobuf;

import com.explorestack.protobuf.MessageLite;

/* JADX INFO: loaded from: classes.dex */
public abstract class Extension<ContainingType extends MessageLite, Type> extends ExtensionLite<ContainingType, Type> {
    @Override // com.explorestack.protobuf.ExtensionLite
    public final boolean isLite() {
        return false;
    }
}
