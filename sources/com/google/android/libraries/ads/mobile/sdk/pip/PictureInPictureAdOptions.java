package com.google.android.libraries.ads.mobile.sdk.pip;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class PictureInPictureAdOptions {
    public final PictureInPictureAdPresentationScope a;
    public final PictureInPictureAdPosition b;

    public static final class Builder {
        public PictureInPictureAdPresentationScope a = PictureInPictureAdPresentationScope.SCREEN;
        public PictureInPictureAdPosition b = PictureInPictureAdPosition.DEFAULT;

        public final PictureInPictureAdOptions build() {
            return new PictureInPictureAdOptions(this.a, this.b, 0);
        }

        public final Builder setPosition(PictureInPictureAdPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            this.b = position;
            return this;
        }

        public final Builder setPresentationScope(PictureInPictureAdPresentationScope presentationScope) {
            Intrinsics.checkNotNullParameter(presentationScope, "presentationScope");
            this.a = presentationScope;
            return this;
        }
    }

    public /* synthetic */ PictureInPictureAdOptions(PictureInPictureAdPresentationScope pictureInPictureAdPresentationScope, PictureInPictureAdPosition pictureInPictureAdPosition, int i) {
        this(pictureInPictureAdPresentationScope, pictureInPictureAdPosition);
    }

    public final PictureInPictureAdPosition getPosition() {
        return this.b;
    }

    public final PictureInPictureAdPresentationScope getPresentationScope() {
        return this.a;
    }

    public PictureInPictureAdOptions(PictureInPictureAdPresentationScope pictureInPictureAdPresentationScope, PictureInPictureAdPosition pictureInPictureAdPosition) {
        this.a = pictureInPictureAdPresentationScope;
        this.b = pictureInPictureAdPosition;
    }
}
