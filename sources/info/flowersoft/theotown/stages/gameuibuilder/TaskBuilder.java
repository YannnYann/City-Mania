package info.flowersoft.theotown.stages.gameuibuilder;

import info.flowersoft.theotown.stages.CityStage;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.util.Builder;

/* JADX INFO: loaded from: classes4.dex */
public class TaskBuilder extends Builder<CityStage.GameStageContext> {
    public TaskBuilder(CityStage.GameStageContext gameStageContext) {
        super(gameStageContext);
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        new Gadget(0, 0, 0, 0, getBuilderContext().getGUI()) { // from class: info.flowersoft.theotown.stages.gameuibuilder.TaskBuilder.1
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
            }
        };
    }
}
