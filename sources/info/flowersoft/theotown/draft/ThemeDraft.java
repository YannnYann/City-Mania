package info.flowersoft.theotown.draft;

import io.blueflower.stapel2d.gui.Skin;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ThemeDraft.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ThemeDraft extends Draft {
    public boolean isDark;
    public Skin skin;

    public final boolean isDark() {
        return this.isDark;
    }

    public final void setDark(boolean z) {
        this.isDark = z;
    }

    public final Skin getSkin() {
        Skin skin = this.skin;
        if (skin != null) {
            return skin;
        }
        Intrinsics.throwUninitializedPropertyAccessException("skin");
        return null;
    }

    public final void setSkin(Skin skin) {
        Intrinsics.checkNotNullParameter(skin, "<set-?>");
        this.skin = skin;
    }
}
