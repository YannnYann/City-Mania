package com.unity3d.ads.adplayer;

import android.content.Intent;
import android.webkit.WebView;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DisplayMessage.kt */
/* JADX INFO: loaded from: classes4.dex */
public abstract class DisplayMessage {
    private final String opportunityId;

    public /* synthetic */ DisplayMessage(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    private DisplayMessage(String str) {
        this.opportunityId = str;
    }

    public final String getOpportunityId() {
        return this.opportunityId;
    }

    /* JADX INFO: compiled from: DisplayMessage.kt */
    public static final class DisplayStarted extends DisplayMessage {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DisplayStarted(String opportunityId) {
            super(opportunityId, null);
            Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        }
    }

    /* JADX INFO: compiled from: DisplayMessage.kt */
    public static final class DisplayReady extends DisplayMessage {
        private final Map<String, Object> showOptions;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DisplayReady(String opportunityId, Map<String, ? extends Object> map) {
            super(opportunityId, null);
            Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
            this.showOptions = map;
        }

        public /* synthetic */ DisplayReady(String str, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : map);
        }

        public final Map<String, Object> getShowOptions() {
            return this.showOptions;
        }
    }

    /* JADX INFO: compiled from: DisplayMessage.kt */
    public static final class WebViewInstanceRequest extends DisplayMessage {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WebViewInstanceRequest(String opportunityId) {
            super(opportunityId, null);
            Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        }
    }

    /* JADX INFO: compiled from: DisplayMessage.kt */
    public static final class VisibilityChanged extends DisplayMessage {
        private final boolean isVisible;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VisibilityChanged(String opportunityId, boolean z) {
            super(opportunityId, null);
            Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
            this.isVisible = z;
        }

        public final boolean isVisible() {
            return this.isVisible;
        }
    }

    /* JADX INFO: compiled from: DisplayMessage.kt */
    public static final class FocusChanged extends DisplayMessage {
        private final boolean isFocused;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FocusChanged(String opportunityId, boolean z) {
            super(opportunityId, null);
            Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
            this.isFocused = z;
        }

        public final boolean isFocused() {
            return this.isFocused;
        }
    }

    /* JADX INFO: compiled from: DisplayMessage.kt */
    public static final class DisplayDestroyed extends DisplayMessage {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DisplayDestroyed(String opportunityId) {
            super(opportunityId, null);
            Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        }
    }

    /* JADX INFO: compiled from: DisplayMessage.kt */
    public static final class DisplayError extends DisplayMessage {
        private final String reason;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DisplayError(String opportunityId, String reason) {
            super(opportunityId, null);
            Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.reason = reason;
        }

        public final String getReason() {
            return this.reason;
        }
    }

    /* JADX INFO: compiled from: DisplayMessage.kt */
    public static final class OpenUrlResult extends DisplayMessage {
        private final boolean success;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenUrlResult(String opportunityId, boolean z) {
            super(opportunityId, null);
            Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
            this.success = z;
        }

        public final boolean getSuccess() {
            return this.success;
        }
    }

    /* JADX INFO: compiled from: DisplayMessage.kt */
    public static final class WebViewInstanceResponse extends DisplayMessage {
        private final WebView webView;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WebViewInstanceResponse(String opportunityId, WebView webView) {
            super(opportunityId, null);
            Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
            Intrinsics.checkNotNullParameter(webView, "webView");
            this.webView = webView;
        }

        public final WebView getWebView() {
            return this.webView;
        }
    }

    /* JADX INFO: compiled from: DisplayMessage.kt */
    public static final class DisplayFinishRequest extends DisplayMessage {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DisplayFinishRequest(String opportunityId) {
            super(opportunityId, null);
            Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        }
    }

    /* JADX INFO: compiled from: DisplayMessage.kt */
    public static final class SetOrientation extends DisplayMessage {
        private final int orientation;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SetOrientation(String opportunityId, int i) {
            super(opportunityId, null);
            Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
            this.orientation = i;
        }

        public final int getOrientation() {
            return this.orientation;
        }
    }

    /* JADX INFO: compiled from: DisplayMessage.kt */
    public static final class OpenUrl extends DisplayMessage {
        private final Intent intent;
        private final boolean useActivityForResult;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenUrl(String opportunityId, Intent intent, boolean z) {
            super(opportunityId, null);
            Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
            Intrinsics.checkNotNullParameter(intent, "intent");
            this.intent = intent;
            this.useActivityForResult = z;
        }

        public final Intent getIntent() {
            return this.intent;
        }

        public final boolean getUseActivityForResult() {
            return this.useActivityForResult;
        }
    }
}
