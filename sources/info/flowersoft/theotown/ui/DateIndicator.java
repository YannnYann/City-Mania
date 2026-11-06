package info.flowersoft.theotown.ui;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Features;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class DateIndicator extends Indicator {
    public City city;
    public Stapel2DGameContext context;
    public DefaultDate date;
    public int prevSpeed;
    public FeatureDraft slowSpeedFeature;
    public Setter<Stage> stageVisitor;

    /* JADX WARN: Multi-variable type inference failed */
    public DateIndicator(int i, int i2, Gadget gadget, City city, Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
        super(i, i2, 141, 20, gadget);
        this.prevSpeed = 0;
        this.city = city;
        this.date = (DefaultDate) city.getComponent(1);
        this.context = stapel2DGameContext;
        this.stageVisitor = setter;
        this.slowSpeedFeature = (FeatureDraft) Features.getInstance().FEATURE_SLOWSPEED.get();
        init();
    }

    public final void init() {
        int i;
        removeAllChildren();
        new SpeedButton(70, 0, 20, 20, this, Resources.ICON_PAUSE, 2, KeyAction.SPEED_PAUSE);
        if (this.slowSpeedFeature.isUnlocked()) {
            new SpeedButton(87, 0, 20, 20, this, Resources.ICON_PLAYSLOW, 4, KeyAction.SPEED_SLOW);
            i = 34;
        } else {
            i = 17;
        }
        int i2 = i;
        new SpeedButton(i2 + 70, 0, 20, 20, this, Resources.ICON_PLAY, 0, KeyAction.SPEED_NORMAL);
        new SpeedButton(i2 + 87, 0, 20, 20, this, Resources.ICON_PLAYFAST, 1, KeyAction.SPEED_FAST);
        SpeedButton speedButton = new SpeedButton(i2 + 104, 0, 20, 20, this, Resources.ICON_PLAYFASTFAST, 3, KeyAction.SPEED_FASTFAST);
        SuccessOverlay.getInstance().setPlacement(4, speedButton.getAbsoluteX(), speedButton.getAbsoluteY());
        KeyAction.SPEED_PAUSE_UNPAUSE.applyTo(new Button(0, 0, 0, 0, this) { // from class: info.flowersoft.theotown.ui.DateIndicator.1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i3, int i4) {
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                if (DateIndicator.this.date.getSpeed() == 2) {
                    DateIndicator.this.date.setSpeed(DateIndicator.this.prevSpeed);
                    return;
                }
                DateIndicator dateIndicator = DateIndicator.this;
                dateIndicator.prevSpeed = dateIndicator.date.getSpeed();
                DateIndicator.this.date.setSpeed(2);
            }
        });
        setWidth(i2 + Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        super.onUpdate();
        if (countChildren() == 4 && this.slowSpeedFeature.isUnlocked()) {
            init();
        }
    }

    @Override // info.flowersoft.theotown.ui.Indicator, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        super.draw(i, i2);
        this.engine.setScale(0.5f, 0.5f);
        this.engine.drawImage(Resources.IMAGE_WORLD, this.px, this.py, 20.0f, 20.0f, 0.5f, 0.5f, Resources.ICON_CLOCK_EMPTY);
        this.engine.setScale(1.0f, 1.0f);
        this.engine.setColor(Colors.BLACK);
        this.engine.setTransparency(100);
        Drawing drawing = Drawing.getInstance();
        int i3 = this.px;
        double day = ((double) ((this.date.getDay() / 30.0f) * 2.0f)) * 3.141592653589793d;
        drawing.drawLine(i3 + 10, this.py + 10, i3 + 10 + (((float) Math.sin(day)) * 4.0f), (this.py + 10) - (((float) Math.cos(day)) * 4.0f), 1.0f, this.engine);
        this.engine.setTransparency(255);
        Drawing drawing2 = Drawing.getInstance();
        int i4 = this.px;
        double month = ((double) ((this.date.getMonth() / 12.0f) * 2.0f)) * 3.141592653589793d;
        drawing2.drawLine(i4 + 10, this.py + 10, i4 + 10 + (((float) Math.sin(month)) * 3.0f), (this.py + 10) - (((float) Math.cos(month)) * 3.0f), 1.0f, this.engine);
        this.engine.setColor(this.skin.cIndicatorText);
        this.engine.drawText(this.font, StringFormatter.format(this.city.getTranslator().translate(2724), Integer.valueOf(this.date.getDay()), Integer.valueOf(this.date.getMonth()), Integer.valueOf(this.date.getYear())), this.px + 20, this.py, 50.0f, this.height, 0.5f, 0.5f);
        this.engine.setColor(Colors.WHITE);
        this.engine.setTransparency(255);
        drawChildren(i, i2);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean isVisible() {
        return super.isVisible() && Tutorial.isVisible(Tutorial.FLAG_DATE);
    }

    public class SpeedButton extends Button {
        public final int icon;
        public final int speed;

        public SpeedButton(int i, int i2, int i3, int i4, Gadget gadget, int i5, int i6, KeyAction keyAction) {
            super(i, i2, i3, i4, gadget);
            this.icon = i5;
            this.speed = i6;
            keyAction.applyTo(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            Engine engine = this.skin.engine;
            int i3 = this.x + i;
            int i4 = this.y + i2;
            if (isPressed()) {
                engine.setColorAndTransparency(this.skin.cIndicatorSelection);
                engine.drawImage(Resources.IMAGE_WORLD, i3 + 3, i4 + 3, this.width - 6, this.height - 6, Resources.FRAME_RECT);
                engine.reset();
            }
            engine.setScale(0.5f, 0.5f);
            engine.drawImage(Resources.IMAGE_WORLD, i3, i4, this.width, this.height, 0.5f, 0.5f, this.icon);
            engine.setScale(1.0f, 1.0f);
            if (this.speed != 3 || TheoTown.PREMIUM || isPressed() || ((FeatureDraft) Features.getInstance().FEATURE_FREEFASTSPEED00.get()).isUnlocked()) {
                return;
            }
            Drawing.getInstance().drawHalo(i3 + (this.width / 2), i4 + (this.height / 2), engine);
        }

        @Override // io.blueflower.stapel2d.gui.Button
        public boolean isPressed() {
            return super.isPressed() || DateIndicator.this.date.getSpeed() == this.speed;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            if (this.speed != 3 || GameHandler.getInstance().getTimedEffectManager().getFastForwardDays() > 0 || ((FeatureDraft) Features.getInstance().FEATURE_FREEFASTSPEED00.get()).isUnlocked() || TheoTown.PREMIUM) {
                DateIndicator.this.date.setSpeed(this.speed);
            } else {
                new FastForwardDialog(DateIndicator.this.context, DateIndicator.this.stageVisitor, (Master) getAbsoluteParent(), DateIndicator.this.city, this.speed).setVisible(true);
            }
        }
    }
}
