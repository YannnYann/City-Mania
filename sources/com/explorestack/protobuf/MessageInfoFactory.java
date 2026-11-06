package com.explorestack.protobuf;

/* JADX INFO: loaded from: classes.dex */
public interface MessageInfoFactory {
    boolean isSupported(Class<?> cls);

    MessageInfo messageInfoFor(Class<?> cls);
}
