package com.google.gson;

/* JADX INFO: loaded from: classes3.dex */
public interface ReflectionAccessFilter {

    public enum FilterResult {
        ALLOW,
        INDECISIVE,
        BLOCK_INACCESSIBLE,
        BLOCK_ALL
    }

    FilterResult check(Class<?> cls);
}
