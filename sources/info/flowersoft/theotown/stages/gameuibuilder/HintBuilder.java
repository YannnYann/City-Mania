package info.flowersoft.theotown.stages.gameuibuilder;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.disaster.FireDisaster;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.CityStage;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Builder;
import io.blueflower.stapel2d.util.Getter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class HintBuilder extends Builder<CityStage.GameStageContext> {
    public List<Button> buttons;
    public List<Hint> hints;
    public ElementLine line;

    public HintBuilder(CityStage.GameStageContext gameStageContext) {
        super(gameStageContext);
        this.hints = new ArrayList();
        this.buttons = new ArrayList();
        final City city = getBuilderContext().getCity();
        final DefaultCatastrophe defaultCatastrophe = (DefaultCatastrophe) city.getComponent(6);
        this.hints.add(new Hint("Fire!", Colors.RED, new Getter<Boolean>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.HintBuilder.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                ((FireDisaster) defaultCatastrophe.getDisaster(FireDisaster.class)).isActive();
                return Boolean.FALSE;
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.HintBuilder.2
            @Override // java.lang.Runnable
            public void run() {
                FireDisaster fireDisaster = (FireDisaster) defaultCatastrophe.getDisaster(FireDisaster.class);
                if (fireDisaster.isActive()) {
                    int[] location = fireDisaster.getLocation();
                    city.focus(location[0], location[1]);
                }
            }
        }));
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        Master gui = getBuilderContext().getGUI();
        Panel panel = getBuilderContext().areaPanel;
        this.line = new ElementLine(1, 0, panel.getAbsoluteX(), panel.getAbsoluteY(), panel.getWidth(), panel.getHeight(), gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.HintBuilder.3
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                for (int i = 0; i < HintBuilder.this.hints.size(); i++) {
                    ((Button) HintBuilder.this.buttons.get(i)).setVisible(((Hint) HintBuilder.this.hints.get(i)).isActive.get().booleanValue());
                }
                HintBuilder.this.line.layout();
            }
        };
        for (int i = 0; i < this.hints.size(); i++) {
            final Hint hint = this.hints.get(i);
            final Font font = Resources.skin.fontSmall;
            String str = hint.text;
            Button button = new Button(0, 0, ((int) font.getWidth(str)) + 4, ((int) font.getHeight(str)) + 4, this.line.getThirdPart()) { // from class: info.flowersoft.theotown.stages.gameuibuilder.HintBuilder.4
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i2, int i3) {
                    Engine engine = this.skin.engine;
                    int i4 = this.x + i2;
                    int i5 = this.y + i3;
                    int clientWidth = getClientWidth();
                    int clientHeight = getClientHeight();
                    engine.setColor(Colors.BLACK);
                    engine.setTransparency(100);
                    float f = i5;
                    float f2 = clientWidth;
                    float f3 = clientHeight;
                    engine.drawText(font, hint.text, i4 + 1, f, f2, f3, 1.0f, 0.5f);
                    float f4 = i4;
                    engine.drawText(font, hint.text, f4, i5 - 1, f2, f3, 1.0f, 0.5f);
                    engine.drawText(font, hint.text, i4 - 1, f, f2, f3, 1.0f, 0.5f);
                    engine.drawText(font, hint.text, f4, i5 + 1, f2, f3, 1.0f, 0.5f);
                    engine.setTransparency(255);
                    engine.setColor(hint.color);
                    engine.drawText(font, hint.text, f4, f, f2, f3, 1.0f, 0.5f);
                    engine.setColor(Colors.WHITE);
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    hint.onClick.run();
                }
            };
            button.setPadding(2, 2, 2, 2);
            this.buttons.add(button);
        }
    }

    public class Hint {
        public Color color;
        public Getter<Boolean> isActive;
        public Runnable onClick;
        public String text;

        public Hint(String str, Color color, Getter<Boolean> getter, Runnable runnable) {
            this.text = str;
            this.color = color;
            this.isActive = getter;
            this.onClick = runnable;
        }
    }
}
