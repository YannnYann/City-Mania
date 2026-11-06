package com.unity3d.ads.core.domain.adload;

import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.adplayer.WebViewBridge;
import com.unity3d.ads.adplayer.model.LoadEvent;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebViewContainerResult.kt */
/* JADX INFO: loaded from: classes4.dex */
public abstract class WebViewContainerResult {
    public /* synthetic */ WebViewContainerResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract AndroidWebViewContainer getContainer();

    private WebViewContainerResult() {
    }

    /* JADX INFO: compiled from: WebViewContainerResult.kt */
    public static final class OnDemand extends WebViewContainerResult {
        private final AndroidWebViewContainer container;

        public static /* synthetic */ OnDemand copy$default(OnDemand onDemand, AndroidWebViewContainer androidWebViewContainer, int i, Object obj) {
            if ((i & 1) != 0) {
                androidWebViewContainer = onDemand.container;
            }
            return onDemand.copy(androidWebViewContainer);
        }

        public final AndroidWebViewContainer component1() {
            return this.container;
        }

        public final OnDemand copy(AndroidWebViewContainer container) {
            Intrinsics.checkNotNullParameter(container, "container");
            return new OnDemand(container);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnDemand) && Intrinsics.areEqual(this.container, ((OnDemand) obj).container);
        }

        public int hashCode() {
            return this.container.hashCode();
        }

        public String toString() {
            return "OnDemand(container=" + this.container + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnDemand(AndroidWebViewContainer container) {
            super(null);
            Intrinsics.checkNotNullParameter(container, "container");
            this.container = container;
        }

        @Override // com.unity3d.ads.core.domain.adload.WebViewContainerResult
        public AndroidWebViewContainer getContainer() {
            return this.container;
        }
    }

    /* JADX INFO: compiled from: WebViewContainerResult.kt */
    public static final class FromPool extends WebViewContainerResult {
        private final AndroidWebViewContainer container;

        public static /* synthetic */ FromPool copy$default(FromPool fromPool, AndroidWebViewContainer androidWebViewContainer, int i, Object obj) {
            if ((i & 1) != 0) {
                androidWebViewContainer = fromPool.container;
            }
            return fromPool.copy(androidWebViewContainer);
        }

        public final AndroidWebViewContainer component1() {
            return this.container;
        }

        public final FromPool copy(AndroidWebViewContainer container) {
            Intrinsics.checkNotNullParameter(container, "container");
            return new FromPool(container);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FromPool) && Intrinsics.areEqual(this.container, ((FromPool) obj).container);
        }

        public int hashCode() {
            return this.container.hashCode();
        }

        public String toString() {
            return "FromPool(container=" + this.container + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FromPool(AndroidWebViewContainer container) {
            super(null);
            Intrinsics.checkNotNullParameter(container, "container");
            this.container = container;
        }

        @Override // com.unity3d.ads.core.domain.adload.WebViewContainerResult
        public AndroidWebViewContainer getContainer() {
            return this.container;
        }
    }

    /* JADX INFO: compiled from: WebViewContainerResult.kt */
    public static final class FullyPreloaded extends WebViewContainerResult {
        private final AdPlayer adPlayer;
        private final WebViewBridge bridge;
        private final AndroidWebViewContainer container;
        private final LoadEvent loadEvent;

        public static /* synthetic */ FullyPreloaded copy$default(FullyPreloaded fullyPreloaded, AndroidWebViewContainer androidWebViewContainer, AdPlayer adPlayer, WebViewBridge webViewBridge, LoadEvent loadEvent, int i, Object obj) {
            if ((i & 1) != 0) {
                androidWebViewContainer = fullyPreloaded.container;
            }
            if ((i & 2) != 0) {
                adPlayer = fullyPreloaded.adPlayer;
            }
            if ((i & 4) != 0) {
                webViewBridge = fullyPreloaded.bridge;
            }
            if ((i & 8) != 0) {
                loadEvent = fullyPreloaded.loadEvent;
            }
            return fullyPreloaded.copy(androidWebViewContainer, adPlayer, webViewBridge, loadEvent);
        }

        public final AndroidWebViewContainer component1() {
            return this.container;
        }

        public final AdPlayer component2() {
            return this.adPlayer;
        }

        public final WebViewBridge component3() {
            return this.bridge;
        }

        public final LoadEvent component4() {
            return this.loadEvent;
        }

        public final FullyPreloaded copy(AndroidWebViewContainer container, AdPlayer adPlayer, WebViewBridge bridge, LoadEvent loadEvent) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(adPlayer, "adPlayer");
            Intrinsics.checkNotNullParameter(bridge, "bridge");
            Intrinsics.checkNotNullParameter(loadEvent, "loadEvent");
            return new FullyPreloaded(container, adPlayer, bridge, loadEvent);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FullyPreloaded)) {
                return false;
            }
            FullyPreloaded fullyPreloaded = (FullyPreloaded) obj;
            return Intrinsics.areEqual(this.container, fullyPreloaded.container) && Intrinsics.areEqual(this.adPlayer, fullyPreloaded.adPlayer) && Intrinsics.areEqual(this.bridge, fullyPreloaded.bridge) && Intrinsics.areEqual(this.loadEvent, fullyPreloaded.loadEvent);
        }

        public int hashCode() {
            return (((((this.container.hashCode() * 31) + this.adPlayer.hashCode()) * 31) + this.bridge.hashCode()) * 31) + this.loadEvent.hashCode();
        }

        public String toString() {
            return "FullyPreloaded(container=" + this.container + ", adPlayer=" + this.adPlayer + ", bridge=" + this.bridge + ", loadEvent=" + this.loadEvent + ')';
        }

        @Override // com.unity3d.ads.core.domain.adload.WebViewContainerResult
        public AndroidWebViewContainer getContainer() {
            return this.container;
        }

        public final AdPlayer getAdPlayer() {
            return this.adPlayer;
        }

        public final WebViewBridge getBridge() {
            return this.bridge;
        }

        public final LoadEvent getLoadEvent() {
            return this.loadEvent;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FullyPreloaded(AndroidWebViewContainer container, AdPlayer adPlayer, WebViewBridge bridge, LoadEvent loadEvent) {
            super(null);
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(adPlayer, "adPlayer");
            Intrinsics.checkNotNullParameter(bridge, "bridge");
            Intrinsics.checkNotNullParameter(loadEvent, "loadEvent");
            this.container = container;
            this.adPlayer = adPlayer;
            this.bridge = bridge;
            this.loadEvent = loadEvent;
        }
    }
}
