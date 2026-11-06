package com.explorestack.protobuf;

/* JADX INFO: loaded from: classes.dex */
public interface SchemaFactory {
    <T> Schema<T> createSchema(Class<T> cls);
}
