package io.bidmachine.rendering.internal.adform.video;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import io.bidmachine.rendering.Repository;
import io.bidmachine.rendering.internal.adform.c;
import io.bidmachine.rendering.internal.adform.video.a;
import io.bidmachine.rendering.internal.adform.video.player.d;
import io.bidmachine.rendering.internal.s;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.rendering.measurer.VideoMeasurer;
import io.bidmachine.rendering.model.AdElementParams;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.MediaSource;
import io.bidmachine.rendering.model.MediaSourceKt;
import io.bidmachine.rendering.model.Resource;
import io.bidmachine.rendering.model.ResourceSource;
import io.bidmachine.rendering.model.UrlResourceSource;
import io.bidmachine.rendering.utils.UiUtils;
import io.bidmachine.util.Error;
import io.bidmachine.util.ErrorKt;
import io.bidmachine.util.SystemComponent;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends io.bidmachine.rendering.internal.adform.a {
    public final VideoMeasurer x;
    public io.bidmachine.rendering.internal.adform.video.player.b y;
    public MediaSource z;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.adform.video.a$a, reason: collision with other inner class name */
    public final class C1170a implements d {
        public C1170a() {
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void a(io.bidmachine.rendering.internal.adform.video.player.b player, Error error) {
            Intrinsics.checkNotNullParameter(player, "player");
            Intrinsics.checkNotNullParameter(error, "error");
            a.this.b(error);
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void b(io.bidmachine.rendering.internal.adform.video.player.b player, Error error) {
            Intrinsics.checkNotNullParameter(player, "player");
            Intrinsics.checkNotNullParameter(error, "error");
            a.this.a(error);
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void c(io.bidmachine.rendering.internal.adform.video.player.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = a.this.x;
            if (videoMeasurer != null) {
                videoMeasurer.onMediaPaused();
            }
            a.this.q().i();
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void d(io.bidmachine.rendering.internal.adform.video.player.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = a.this.x;
            if (videoMeasurer != null) {
                videoMeasurer.onMediaSkipped();
            }
            a.this.q().d();
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void e(io.bidmachine.rendering.internal.adform.video.player.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = a.this.x;
            if (videoMeasurer != null) {
                videoMeasurer.onMediaThirdQuartile();
            }
            a.this.q().c();
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void f(io.bidmachine.rendering.internal.adform.video.player.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = a.this.x;
            if (videoMeasurer != null) {
                videoMeasurer.onViewReady(player.o());
            }
            a.this.w().b(a.this);
            a.this.D();
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void g(io.bidmachine.rendering.internal.adform.video.player.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = a.this.x;
            if (videoMeasurer != null) {
                videoMeasurer.onMediaStarted(player.d(), player.getVolume());
            }
            a.this.q().n();
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void h(io.bidmachine.rendering.internal.adform.video.player.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = a.this.x;
            if (videoMeasurer != null) {
                videoMeasurer.onMediaMidpoint();
            }
            a.this.q().k();
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void i(io.bidmachine.rendering.internal.adform.video.player.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = a.this.x;
            if (videoMeasurer != null) {
                videoMeasurer.onMediaCompleted();
            }
            a.this.q().a();
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void a(io.bidmachine.rendering.internal.adform.video.player.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = a.this.x;
            if (videoMeasurer != null) {
                videoMeasurer.onMediaFirstQuartile();
            }
            a.this.q().m();
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void b(io.bidmachine.rendering.internal.adform.video.player.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            a.this.G();
            VideoMeasurer videoMeasurer = a.this.x;
            if (videoMeasurer != null) {
                videoMeasurer.onMediaResumed();
            }
            a.this.q().b();
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void a(io.bidmachine.rendering.internal.adform.video.player.b player, long j) {
            Intrinsics.checkNotNullParameter(player, "player");
            a.this.q().a(player.d(), j);
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void a(io.bidmachine.rendering.internal.adform.video.player.b player, float f) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = a.this.x;
            if (videoMeasurer != null) {
                videoMeasurer.onMediaVolumeChanged(f);
            }
        }

        @Override // io.bidmachine.rendering.internal.adform.video.player.d
        public void a(io.bidmachine.rendering.internal.adform.video.player.b player, boolean z) {
            Intrinsics.checkNotNullParameter(player, "player");
            View viewJ = a.this.j();
            Integer numValueOf = viewJ != null ? Integer.valueOf(viewJ.getId()) : null;
            if (z) {
                a.this.q().b(numValueOf);
            } else {
                a.this.q().a(numValueOf);
            }
        }
    }

    public final class b implements Repository.ResultCallback {
        public b() {
        }

        public static final void a(a this$0, Uri uri) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(uri, "$uri");
            try {
                io.bidmachine.rendering.internal.adform.video.player.b bVar = this$0.y;
                if (bVar != null) {
                    bVar.a(uri);
                    bVar.prepare();
                }
            } catch (Throwable th) {
                t.b(th);
                this$0.a(ErrorKt.toError(th));
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.bidmachine.util.ResultCallback
        public void onError(Error error) {
            Intrinsics.checkNotNullParameter(error, "error");
            a.this.a(error);
        }

        @Override // io.bidmachine.rendering.Repository.ResultCallback, io.bidmachine.util.ResultCallback
        public void onSuccess(final Uri uri) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            final a aVar = a.this;
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.internal.adform.video.a$b$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    a.b.a(aVar, uri);
                }
            });
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, Object assetsHolder, Repository repository, AdElementParams adElementParams, c adFormListener, io.bidmachine.rendering.internal.event.a eventCallback, io.bidmachine.rendering.internal.detector.brokencreative.a aVar, VideoMeasurer videoMeasurer) {
        super(context, assetsHolder, repository, adElementParams, adFormListener, eventCallback, aVar);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.x = videoMeasurer;
    }

    public static final void d(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        io.bidmachine.rendering.internal.adform.video.player.b bVar = this$0.y;
        if (bVar != null) {
            bVar.destroy();
        }
        this$0.y = null;
    }

    public static final void e(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.M();
    }

    public static final void f(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        io.bidmachine.rendering.internal.adform.video.player.b bVar = this$0.y;
        if (bVar != null) {
            bVar.pause();
        }
    }

    public static final void g(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        io.bidmachine.rendering.internal.adform.video.player.b bVar = this$0.y;
        if (bVar != null) {
            bVar.play();
        }
    }

    public static final void h(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        io.bidmachine.rendering.internal.adform.video.player.b bVar = this$0.y;
        if (bVar != null) {
            bVar.l();
        }
    }

    public static final void i(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        io.bidmachine.rendering.internal.adform.video.player.b bVar = this$0.y;
        if (bVar != null) {
            bVar.n();
        }
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public View B() {
        io.bidmachine.rendering.internal.adform.video.player.b bVar = this.y;
        if (bVar != null) {
            return bVar.o();
        }
        return null;
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void E() {
        Unit unit;
        VideoMeasurer videoMeasurer = this.x;
        if (videoMeasurer != null) {
            videoMeasurer.destroy(new s() { // from class: io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda3
                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    a.e(this.f$0);
                }
            });
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            M();
        }
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void G() {
        super.G();
        VideoMeasurer videoMeasurer = this.x;
        if (videoMeasurer != null) {
            videoMeasurer.onShown();
        }
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void I() {
        super.I();
        b(false);
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void J() {
        b(true);
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void K() {
        Repository repositoryA = A();
        MediaSource mediaSource = this.z;
        if (mediaSource == null) {
            return;
        }
        repositoryA.getVideo(mediaSource, z(), new b());
    }

    public final void M() {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda5
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.d(this.f$0);
            }
        });
    }

    @Override // io.bidmachine.rendering.internal.G, io.bidmachine.rendering.internal.A
    public void l() {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda6
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.h(this.f$0);
            }
        });
    }

    @Override // io.bidmachine.rendering.internal.G, io.bidmachine.rendering.internal.E
    public void n() {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda9
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.i(this.f$0);
            }
        });
    }

    @Override // io.bidmachine.rendering.internal.G, io.bidmachine.rendering.internal.y
    public void pause() {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda0
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.f(this.f$0);
            }
        });
    }

    @Override // io.bidmachine.rendering.internal.G, io.bidmachine.rendering.internal.y
    public void play() {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda2
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.g(this.f$0);
            }
        });
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void c(boolean z) {
        if (z) {
            play();
        } else {
            pause();
        }
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public void a() {
        final String customParam;
        Resource resource = g().getResource();
        ResourceSource source = resource != null ? resource.getSource() : null;
        if (source == null) {
            a(new Error("Resource is missing"));
            return;
        }
        if (source instanceof UrlResourceSource) {
            List<String> urls = ((UrlResourceSource) source).getUrls();
            final MediaSource mediaSourceUrlsToMediaSource = MediaSourceKt.urlsToMediaSource(urls);
            if (mediaSourceUrlsToMediaSource == null) {
                a(new Error("Invalid adm url (" + urls + ')'));
                return;
            }
            if (mediaSourceUrlsToMediaSource.getDeliveryType() == MediaSource.DeliveryType.STREAM) {
                customParam = "exo";
            } else {
                customParam = g().getCustomParam("player");
            }
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    a.a(this.f$0, customParam, mediaSourceUrlsToMediaSource);
                }
            });
            return;
        }
        a(new Error("Invalid resource type (" + source.getClass().getSimpleName() + "), it should be UrlResourceSource"));
    }

    @Override // io.bidmachine.rendering.internal.G, io.bidmachine.rendering.internal.w
    public void b(final Integer num) {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda7
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.a(this.f$0, num);
            }
        });
    }

    public static final void b(a this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        io.bidmachine.rendering.internal.adform.video.player.b bVar = this$0.y;
        if (bVar != null) {
            bVar.a(num);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(Error error) {
        VideoMeasurer videoMeasurer = this.x;
        if (videoMeasurer != null) {
            videoMeasurer.onError(error);
        }
        w().b(this, error);
    }

    @Override // io.bidmachine.rendering.internal.G, io.bidmachine.rendering.internal.InterfaceC4253i
    public void c() {
        n();
    }

    public static final void a(a this$0, String str, MediaSource mediaSource) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            io.bidmachine.rendering.internal.adform.video.player.b bVarA = io.bidmachine.rendering.internal.adform.video.player.c.a(this$0.y(), str);
            bVarA.a(this$0.new C1170a());
            VideoMeasurer videoMeasurer = this$0.x;
            if (videoMeasurer != null) {
                videoMeasurer.onViewCreated(bVarA.o());
            }
            this$0.y = bVarA;
            if (this$0.g().isPrerender()) {
                this$0.A().getVideo(mediaSource, this$0.z(), this$0.new b());
            } else {
                this$0.z = mediaSource;
                this$0.w().b(this$0);
            }
        } catch (Throwable th) {
            t.b(th);
            this$0.a(ErrorKt.toError(th));
        }
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public void a(final ViewGroup rootContainer) {
        Intrinsics.checkNotNullParameter(rootContainer, "rootContainer");
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda4
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.a(this.f$0, rootContainer);
            }
        });
    }

    public static final void a(a this$0, ViewGroup rootContainer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(rootContainer, "$rootContainer");
        io.bidmachine.rendering.internal.adform.video.player.b bVar = this$0.y;
        VideoMeasurer videoMeasurer = this$0.x;
        if (videoMeasurer == null || bVar == null) {
            return;
        }
        videoMeasurer.onViewAddedToContainer(bVar.o(), rootContainer);
    }

    @Override // io.bidmachine.rendering.internal.G
    public void a(SystemComponent systemComponent, ClickData clickData) {
        VideoMeasurer videoMeasurer = this.x;
        if (videoMeasurer != null) {
            videoMeasurer.onClicked();
        }
        super.a(systemComponent, clickData);
    }

    public static final void a(a this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        io.bidmachine.rendering.internal.adform.video.player.b bVar = this$0.y;
        if (bVar != null) {
            bVar.b(num);
        }
    }

    @Override // io.bidmachine.rendering.internal.G, io.bidmachine.rendering.internal.w
    public void a(final Integer num) {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda8
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.b(this.f$0, num);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Error error) {
        VideoMeasurer videoMeasurer = this.x;
        if (videoMeasurer != null) {
            videoMeasurer.onError(error);
        }
        w().a(this, error);
    }
}
