package com.badlogic.gdx.backends.android;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.net.NetJavaImpl;

/* JADX INFO: loaded from: classes.dex */
public class AndroidNet implements Net {
    public final AndroidApplicationBase app;
    public NetJavaImpl netJavaImpl;

    public AndroidNet(AndroidApplicationBase androidApplicationBase, AndroidApplicationConfiguration androidApplicationConfiguration) {
        this.app = androidApplicationBase;
        this.netJavaImpl = new NetJavaImpl(androidApplicationConfiguration.maxNetThreads);
    }

    @Override // com.badlogic.gdx.Net
    public boolean openURI(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            if (!(this.app.getContext() instanceof Activity)) {
                intent.addFlags(268435456);
            }
            this.app.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }
}
