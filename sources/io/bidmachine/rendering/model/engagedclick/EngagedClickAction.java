package io.bidmachine.rendering.model.engagedclick;

/* JADX INFO: loaded from: classes5.dex */
public enum EngagedClickAction {
    EXPAND("expand"),
    COLLAPSE("collapse"),
    VISUAL_DIFF("visual_diff");

    public final String a;

    EngagedClickAction(String str) {
        this.a = str;
    }

    public final String getValue() {
        return this.a;
    }
}
