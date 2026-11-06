package com.vungle.ads.internal.downloader;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {
    public static boolean a(c error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (error.b() != 1) {
            return false;
        }
        int iC = error.c();
        if (iC != -1 && iC != 408 && iC != 500) {
            switch (iC) {
                case 502:
                case 503:
                case 504:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }
}
