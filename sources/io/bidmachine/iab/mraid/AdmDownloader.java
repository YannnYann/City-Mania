package io.bidmachine.iab.mraid;

import io.bidmachine.util.ResultCallback;
import kotlin.Unit;

/* JADX INFO: loaded from: classes5.dex */
public interface AdmDownloader {
    void download(String str, ResultCallback<String, Unit> resultCallback);
}
