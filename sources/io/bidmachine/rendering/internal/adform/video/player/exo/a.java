package io.bidmachine.rendering.internal.adform.video.player.exo;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import io.bidmachine.media3.common.AudioAttributes;
import io.bidmachine.media3.common.MediaItem;
import io.bidmachine.media3.common.PlaybackException;
import io.bidmachine.media3.common.Player;
import io.bidmachine.media3.exoplayer.ExoPlayer;
import io.bidmachine.media3.ui.PlayerView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends io.bidmachine.rendering.internal.adform.video.player.a {
    public final ExoPlayer n;
    public final PlayerView o;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.adform.video.player.exo.a$a, reason: collision with other inner class name */
    public final class C1172a implements Player.Listener {
        public C1172a() {
        }

        @Override // io.bidmachine.media3.common.Player.Listener
        public void onIsPlayingChanged(boolean z) {
            if (z) {
                a.this.r();
            } else {
                a.this.q();
            }
        }

        @Override // io.bidmachine.media3.common.Player.Listener
        public void onPlaybackStateChanged(int i) {
            if (i == 3) {
                a.this.s();
            } else {
                if (i != 4) {
                    return;
                }
                a.this.I();
            }
        }

        @Override // io.bidmachine.media3.common.Player.Listener
        public void onPlayerError(PlaybackException playbackException) {
            Intrinsics.checkNotNullParameter(playbackException, "playbackException");
            a.this.a(playbackException);
        }

        @Override // io.bidmachine.media3.common.Player.Listener
        public void onPositionDiscontinuity(Player.PositionInfo oldPosition, Player.PositionInfo newPosition, int i) {
            Intrinsics.checkNotNullParameter(oldPosition, "oldPosition");
            Intrinsics.checkNotNullParameter(newPosition, "newPosition");
            a.this.b(Long.valueOf(newPosition.positionMs));
        }

        @Override // io.bidmachine.media3.common.Player.Listener
        public void onVolumeChanged(float f) {
            a.this.b(f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        ExoPlayer exoPlayerBuild = new ExoPlayer.Builder(context).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(3).build(), false).build();
        Intrinsics.checkNotNullExpressionValue(exoPlayerBuild, "Builder(context)\n       …       )\n        .build()");
        exoPlayerBuild.addListener(new C1172a());
        this.n = exoPlayerBuild;
        PlayerView playerView = new PlayerView(context);
        playerView.setPlayer(exoPlayerBuild);
        playerView.setUseController(false);
        this.o = playerView;
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void a(float f) {
        this.n.setVolume(f);
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void b(Uri videoUri) {
        Intrinsics.checkNotNullParameter(videoUri, "videoUri");
        MediaItem mediaItemBuild = new MediaItem.Builder().setUri(videoUri).build();
        Intrinsics.checkNotNullExpressionValue(mediaItemBuild, "Builder()\n            .s…Uri)\n            .build()");
        this.n.setMediaItem(mediaItemBuild);
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public float c() {
        return this.n.getVolume();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a, io.bidmachine.rendering.internal.adform.video.player.b
    public void destroy() {
        super.destroy();
        this.n.release();
        this.o.setPlayer(null);
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public boolean e() {
        return this.n.isPlaying();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public boolean f() {
        return false;
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void g() {
        this.n.pause();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void h() {
        this.n.play();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void i() {
        this.n.prepare();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void j() {
        this.n.stop();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.b
    public View o() {
        return this.o;
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public long a() {
        return this.n.getCurrentPosition();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void a(long j) {
        this.n.seekTo(j);
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public long b() {
        return this.n.getDuration();
    }
}
