package io.bidmachine.iab.mraid;

import android.graphics.PointF;
import io.bidmachine.iab.bridge.JsProvider;
import io.bidmachine.rendering.model.ScriptConfig;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidClick implements JsProvider {
    public static final Companion Companion = new Companion(null);
    public boolean a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final void configure(List<ScriptConfig> list) {
        this.a = MraidClickKt.hasClcScript(list);
    }

    @Override // io.bidmachine.iab.bridge.JsProvider
    public String getJs(Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Object obj = args[0];
        PointF pointF = obj instanceof PointF ? (PointF) obj : null;
        if (pointF == null) {
            return "";
        }
        if (this.a) {
            return "window.sclck(" + pointF.x + ", " + pointF.y + ')';
        }
        return "(function click(x, y) {var ev = new MouseEvent('click', {    'view': window,    'bubbles': true,    'cancelable': true,    'screenX': x,    'screenY': y});var el = document.elementFromPoint(x, y);if (el !== null) {     el.dispatchEvent(ev);}})(" + pointF.x + ", " + pointF.y + ')';
    }
}
