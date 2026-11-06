package io.bidmachine.rendering.internal.adform.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import io.bidmachine.rendering.Repository;
import io.bidmachine.rendering.internal.adform.c;
import io.bidmachine.rendering.model.AdElementParams;
import io.bidmachine.rendering.model.Base64ResourceSource;
import io.bidmachine.rendering.model.MediaSource;
import io.bidmachine.rendering.model.MediaSourceKt;
import io.bidmachine.rendering.model.Resource;
import io.bidmachine.rendering.model.ResourceSource;
import io.bidmachine.rendering.model.UrlResourceSource;
import io.bidmachine.util.Error;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends io.bidmachine.rendering.internal.adform.a {
    public final ImageView x;
    public final AtomicBoolean y;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.adform.image.a$a, reason: collision with other inner class name */
    public final class C1168a implements Repository.ResultCallback {
        public final boolean a;

        public C1168a(boolean z) {
            this.a = z;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.bidmachine.util.ResultCallback
        public void onError(Error error) {
            Intrinsics.checkNotNullParameter(error, "error");
        }

        @Override // io.bidmachine.rendering.Repository.ResultCallback, io.bidmachine.util.ResultCallback
        public void onSuccess(Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            if (a.this.y.compareAndSet(false, this.a)) {
                a.this.x.setImageBitmap(bitmap);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, Object assetsHolder, Repository repository, AdElementParams adElementParams, c adFormListener, io.bidmachine.rendering.internal.event.a eventCallback, io.bidmachine.rendering.internal.detector.brokencreative.a aVar) {
        super(context, assetsHolder, repository, adElementParams, adFormListener, eventCallback, aVar);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.x = new ImageView(context);
        this.y = new AtomicBoolean(false);
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public View B() {
        return this.x;
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public void a() {
        ResourceSource source;
        MediaSource.Companion companion = MediaSource.Companion;
        a(companion.fromDefaultSettings(g().getPlaceholder()), false);
        w().b(this);
        D();
        Resource resource = g().getResource();
        if (resource == null || (source = resource.getSource()) == null) {
            return;
        }
        if (source instanceof Base64ResourceSource) {
            a(companion.fromBase64(((Base64ResourceSource) source).getBase64()), true);
            return;
        }
        if (source instanceof UrlResourceSource) {
            a(MediaSourceKt.urlsToMediaSource(((UrlResourceSource) source).getUrls()), true);
            return;
        }
        b("Invalid resource type (" + source.getClass().getSimpleName() + "), it should be Base64ResourceSource or UrlResourceSource");
    }

    public final void a(MediaSource mediaSource, boolean z) {
        if (mediaSource == null) {
            return;
        }
        A().getImage(mediaSource, z(), new C1168a(z));
    }
}
