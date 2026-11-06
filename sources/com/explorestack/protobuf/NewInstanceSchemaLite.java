package com.explorestack.protobuf;

import com.explorestack.protobuf.GeneratedMessageLite;

/* JADX INFO: loaded from: classes.dex */
public final class NewInstanceSchemaLite implements NewInstanceSchema {
    @Override // com.explorestack.protobuf.NewInstanceSchema
    public Object newInstance(Object obj) {
        return ((GeneratedMessageLite) obj).dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }
}
