package io.bidmachine.rendering.model.engagedclick;

/* JADX INFO: loaded from: classes5.dex */
public enum CreativeProfile {
    PLAYABLE("playable"),
    LIKELY_PLAYABLE("likely_playable"),
    INTERACTIVE_HTML("interactive_html"),
    REGULAR("regular");

    public final String a;

    CreativeProfile(String str) {
        this.a = str;
    }

    public final String getValue() {
        return this.a;
    }
}
