package com.google.protobuf;

/* JADX INFO: loaded from: classes3.dex */
public interface MessageInfoFactory {
    boolean isSupported(Class<?> clazz);

    MessageInfo messageInfoFor(Class<?> clazz);
}
