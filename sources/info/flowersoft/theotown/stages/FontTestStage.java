package info.flowersoft.theotown.stages;

import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.Dialog;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FontTestStage.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class FontTestStage extends BaseStage {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FontTestStage(Stapel2DGameContext context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        new Dialog(Resources.ICON_OK, "Font Test", "\nالدقة\nﺍﻟﺪﻗﺔ\nﺍﻟﺪﻗﺔ\nل\nﻝ\nﻟ\nﻠ\nﻞ\n            ", this.gui).setVisible(true);
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
    }

    public String toString() {
        return "FontTestStage";
    }
}
