package info.flowersoft.theotown.ui.scenario;

import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.draft.ScenarioDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Skin;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ScenarioListItem.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ScenarioListItem extends ListItem {
    public final boolean completed;
    public final ScenarioDraft scenario;
    public final String subText;
    public final String title;

    @Override // io.blueflower.stapel2d.gui.ListItem
    public int getHeight(boolean z) {
        return 40;
    }

    public final ScenarioDraft getScenario() {
        return this.scenario;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScenarioListItem(ScenarioDraft scenario, CityKeeper cityKeeper, Translator translator, DraftLocalizer localizer) {
        String strTranslate;
        super("");
        Intrinsics.checkNotNullParameter(scenario, "scenario");
        Intrinsics.checkNotNullParameter(translator, "translator");
        Intrinsics.checkNotNullParameter(localizer, "localizer");
        this.scenario = scenario;
        this.completed = scenario.isCompleted();
        this.title = localizer.getTitle(scenario);
        if (cityKeeper != null) {
            strTranslate = StringFormatter.format(translator.translate(1326), TimeSpan.localize(cityKeeper.getInfo().getCityInfo().playtimeSeconds * ((long) 1000)));
        } else {
            strTranslate = translator.translate(2409);
        }
        this.subText = strTranslate;
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        Intrinsics.checkNotNullParameter(skin, "skin");
        drawBackground(z, i, i2, i3, i4, i5, skin);
        Engine engine = skin.engine;
        int[] iArr = this.scenario.previewFrames;
        if (iArr != null) {
            if (!(iArr.length == 0)) {
                engine.setColor(Colors.WHITE);
                engine.drawImage(Resources.IMAGE_WORLD, i2, i3, 70.0f, i5, 0.5f, 0.5f, this.scenario.previewFrames[0]);
            }
        }
        engine.setColor(z ? skin.cTextSelected : skin.cText);
        float f = i2 + 70.0f;
        float f2 = i3;
        engine.drawText(skin.fontDefault, this.title, f, 2.0f + f2);
        engine.setTransparency(150);
        engine.drawText(skin.fontSmall, this.subText, f, 18.0f + f2);
        if (this.completed) {
            engine.setTransparency(255);
            engine.drawImage(Resources.IMAGE_WORLD, f - 22.0f, f2 + 1.0f, Resources.ICON_RANK);
        }
        engine.reset();
    }
}
