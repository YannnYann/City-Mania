package io.bidmachine.rendering.internal.adform.video.player;

import android.net.Uri;
import android.view.View;
import io.bidmachine.rendering.internal.A;
import io.bidmachine.rendering.internal.E;
import io.bidmachine.rendering.internal.w;

/* JADX INFO: loaded from: classes5.dex */
public interface b extends w, A, E {
    void a(Uri uri);

    void a(d dVar);

    long d();

    void destroy();

    float getVolume();

    View o();

    void pause();

    void play();

    void prepare();
}
