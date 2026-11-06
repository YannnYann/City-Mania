package io.bidmachine.rendering.internal.adform.video.player.media;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.view.Surface;
import android.widget.FrameLayout;
import io.bidmachine.rendering.internal.adform.video.player.e;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends FrameLayout {
    public final io.bidmachine.rendering.internal.view.a a;
    public c b;
    public MediaPlayer c;
    public Surface d;

    public final class a implements MediaPlayer.OnVideoSizeChangedListener {
        public a() {
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            b.this.setVideoAspectRatio(i / i2);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.adform.video.player.media.b$b, reason: collision with other inner class name */
    public final class C1174b implements e {
        public C1174b() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            Intrinsics.checkNotNullParameter(surfaceTexture, "surfaceTexture");
            b bVar = b.this;
            Surface surface = new Surface(surfaceTexture);
            b.this.a(surface);
            bVar.d = surface;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            Intrinsics.checkNotNullParameter(surfaceTexture, "surfaceTexture");
            c listener = b.this.getListener();
            if (listener == null) {
                return false;
            }
            listener.a();
            return false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        io.bidmachine.rendering.internal.view.a aVar = new io.bidmachine.rendering.internal.view.a(context);
        aVar.setSurfaceTextureListener(new C1174b());
        this.a = aVar;
        addView(aVar, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    public final c getListener() {
        return this.b;
    }

    public final void setListener(c cVar) {
        this.b = cVar;
    }

    public final void setMediaPlayer(MediaPlayer mediaPlayer) {
        a(null);
        this.c = mediaPlayer;
        if (mediaPlayer != null) {
            setVideoAspectRatio(mediaPlayer.getVideoWidth() / mediaPlayer.getVideoHeight());
            mediaPlayer.setOnVideoSizeChangedListener(new a());
        }
        a(this.d);
    }

    public final void setVideoAspectRatio(float f) {
        this.a.setVideoAspectRatio(f);
    }

    public final void a() {
        a(null);
        b();
        this.c = null;
        this.a.setSurfaceTextureListener(null);
    }

    public final void b() {
        Surface surface = this.d;
        if (surface != null) {
            surface.release();
        }
        this.d = null;
    }

    public final Unit a(Surface surface) {
        try {
            MediaPlayer mediaPlayer = this.c;
            if (mediaPlayer == null) {
                return null;
            }
            mediaPlayer.setSurface(surface);
            return Unit.INSTANCE;
        } catch (Throwable unused) {
            return null;
        }
    }
}
