package com.ironsource.mediationsdk.adunit.adapter.listener;

import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public interface NetworkInitializationListener {
    void onInitFailed(int i, String str);

    default void onInitFailed(int i, String str, Map<String, Object> map) {
        onInitFailed(i, str);
    }

    void onInitSuccess();

    default void onInitSuccess(Map<String, Object> map) {
        onInitSuccess();
    }
}
