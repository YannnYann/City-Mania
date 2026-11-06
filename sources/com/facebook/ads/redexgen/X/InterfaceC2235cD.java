package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public interface InterfaceC2235cD {
    void AAH();

    boolean AAU();

    boolean AAV();

    boolean ABK();

    void AI4(boolean z, int i);

    void ALJ(int i);

    void ALO(EnumC2349e4 enumC2349e4, int i);

    void ALY(int i);

    void destroy();

    int getCurrentPosition();

    int getDuration();

    long getInitialBufferTime();

    EnumC2349e4 getStartReason();

    EnumC2234cC getState();

    int getVideoHeight();

    int getVideoWidth();

    View getView();

    float getVolume();

    void seekTo(int i);

    void setBackgroundPlaybackEnabled(boolean z);

    void setControlsAnchorView(View view);

    void setFullScreen(boolean z);

    void setRequestedVolume(float f);

    void setVideoMPD(String str);

    void setVideoStateChangeListener(InterfaceC2233cB interfaceC2233cB);

    void setup(Uri uri);
}
