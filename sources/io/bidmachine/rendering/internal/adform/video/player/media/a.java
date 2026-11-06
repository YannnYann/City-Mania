package io.bidmachine.rendering.internal.adform.video.player.media;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.View;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.rendering.internal.j;
import io.bidmachine.util.Error;
import java.io.IOException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends io.bidmachine.rendering.internal.adform.video.player.a {
    public static final C1173a r = new C1173a(null);
    public static final CoroutineScope s = CoroutineScopeKt.CoroutineScope(new CoroutineName("MediaPlayerReleaseProcess").plus(SupervisorKt.SupervisorJob$default(null, 1, null)).plus(j.i.a().c()));
    public final Context n;
    public MediaPlayer o;
    public final io.bidmachine.rendering.internal.adform.video.player.media.b p;
    public float q;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.adform.video.player.media.a$a, reason: collision with other inner class name */
    public static final class C1173a {
        public /* synthetic */ C1173a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C1173a() {
        }
    }

    public final class b implements io.bidmachine.rendering.internal.adform.video.player.media.c {
        public b() {
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.media.c
        public void a() {
            if (a.this.C()) {
                a.this.b(new Error("Surface Destroyed"));
            }
        }
    }

    public final class c implements MediaPlayer.OnCompletionListener {
        public c() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            a.this.I();
        }
    }

    public final class d implements MediaPlayer.OnErrorListener {
        public d() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            a.this.a(new Error("MediaPlayer - onError (what - " + i + ", extra - " + i2 + ')'));
            return true;
        }
    }

    public final class e implements MediaPlayer.OnPreparedListener {
        public e() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mp) {
            Intrinsics.checkNotNullParameter(mp, "mp");
            mp.seekTo(1);
            a.this.s();
        }
    }

    public final class f implements MediaPlayer.OnSeekCompleteListener {
        public f() {
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            a aVar = a.this;
            aVar.b(aVar.m());
        }
    }

    public static final class g extends SuspendLambda implements Function2 {
        public int a;
        public /* synthetic */ Object b;
        public final /* synthetic */ MediaPlayer c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(MediaPlayer mediaPlayer, Continuation continuation) {
            super(2, continuation);
            this.c = mediaPlayer;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((g) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            g gVar = new g(this.c, continuation);
            gVar.b = obj;
            return gVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                this.c.reset();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable unused) {
            }
            try {
                this.c.release();
                Unit unit2 = Unit.INSTANCE;
            } catch (Throwable unused2) {
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.n = applicationContext;
        this.o = P();
        io.bidmachine.rendering.internal.adform.video.player.media.b bVar = new io.bidmachine.rendering.internal.adform.video.player.media.b(context);
        bVar.setListener(new b());
        bVar.setMediaPlayer(this.o);
        this.p = bVar;
        this.q = 1.0f;
    }

    public final MediaPlayer P() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setLooping(false);
        mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(3).build());
        mediaPlayer.setOnPreparedListener(new e());
        mediaPlayer.setOnErrorListener(new d());
        mediaPlayer.setOnSeekCompleteListener(new f());
        mediaPlayer.setOnCompletionListener(new c());
        return mediaPlayer;
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void a(float f2) {
        this.o.setVolume(f2, f2);
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void b(Uri videoUri) {
        Intrinsics.checkNotNullParameter(videoUri, "videoUri");
        a(this.o);
        this.o = d(videoUri);
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public float c() {
        return this.q;
    }

    public final MediaPlayer d(Uri uri) throws IOException {
        MediaPlayer mediaPlayerP = P();
        float f2 = this.q;
        mediaPlayerP.setVolume(f2, f2);
        mediaPlayerP.setDataSource(this.n, uri);
        this.p.setMediaPlayer(mediaPlayerP);
        return mediaPlayerP;
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a, io.bidmachine.rendering.internal.adform.video.player.b
    public void destroy() {
        super.destroy();
        this.p.a();
        a(this.o);
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public boolean e() {
        return this.o.isPlaying();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public boolean f() {
        return false;
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void g() {
        this.o.pause();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void h() {
        this.o.start();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void i() {
        this.o.prepareAsync();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void j() {
        this.o.stop();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.b
    public View o() {
        return this.p;
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void y() {
        super.y();
        q();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void z() {
        super.z();
        r();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public long a() {
        return this.o.getCurrentPosition();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void c(float f2) {
        this.q = f2;
        super.c(f2);
        b(f2);
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public void a(long j) {
        this.o.seekTo((int) j);
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.a
    public long b() {
        return this.o.getDuration();
    }

    public final void a(MediaPlayer mediaPlayer) {
        Intrinsics.checkNotNullParameter(mediaPlayer, "mediaPlayer");
        mediaPlayer.setOnPreparedListener(null);
        mediaPlayer.setOnErrorListener(null);
        mediaPlayer.setOnSeekCompleteListener(null);
        mediaPlayer.setOnCompletionListener(null);
        mediaPlayer.setOnVideoSizeChangedListener(null);
        try {
            mediaPlayer.setVolume(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
        BuildersKt__Builders_commonKt.launch$default(s, null, null, new g(mediaPlayer, null), 3, null);
    }
}
