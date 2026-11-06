package info.flowersoft.theotown.ui;

import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.SensitiveGadget;
import io.blueflower.stapel2d.gui.TextFrame;
import io.blueflower.stapel2d.touch.TouchPoint;

/* JADX INFO: loaded from: classes4.dex */
public class Credits extends SensitiveGadget {
    public int contentHeight;
    public Stapel2DGameContext context;
    public float shiftY;

    public interface Character {
        int getIcon();

        String getName();

        Runnable onClick();
    }

    public Credits(int i, int i2, int i3, int i4, Gadget gadget, Stapel2DGameContext stapel2DGameContext) {
        super(i, i2, i3, i4, gadget);
        this.context = stapel2DGameContext;
        setGreedy(true);
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        super.onUpdate();
        TouchPoint touchPoint = this.tp;
        if (touchPoint == null) {
            this.shiftY -= (this.context.getDeltaTime() * 16.0f) + (this.context.getTouch().getScrollChange() * 8.0f);
        } else {
            this.shiftY += touchPoint.getYSpeed() * this.skin.engine.getHeightRatio();
            if (TimeUtils.millis() - this.tp.getTimestamp() > 100 || this.tp.getYSpeed() > 10.0f) {
                for (int i = 0; i < this.children.size(); i++) {
                    this.children.get(i).flush();
                }
            }
        }
        int height = 0;
        for (Gadget gadget : this.children) {
            gadget.setPosition(0, Math.round(this.shiftY + height));
            height += gadget.getHeight();
        }
        int i2 = height + 20;
        this.contentHeight = i2;
        float f = this.shiftY;
        float f2 = height;
        if (f + f2 <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            this.shiftY = f + i2;
        } else if (f2 + f > i2) {
            this.shiftY = f - i2;
        }
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        this.skin.engine.setColor(Colors.BLACK);
        this.skin.engine.setTransparency(150);
        drawNinePatch(i, i2, this.skin.npPanel);
        this.skin.engine.setTransparency(255);
        this.skin.engine.setColor(Colors.WHITE);
        this.skin.engine.setClipRect(getAbsoluteX() + this.paddingLeft, getAbsoluteY() + this.paddingTop, getClientWidth(), getClientHeight());
        drawChildren(i, i2);
        drawChildren(i, i2 + this.contentHeight);
        this.skin.engine.resetClipping();
    }

    public void addTopic(int i, String str, final Runnable runnable) {
        int i2 = 0;
        Button button = new Button(i2, 0, getClientWidth(), 0, this) { // from class: info.flowersoft.theotown.ui.Credits.1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i3, int i4) {
                drawChildren(i3, i4);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        button.setPadding(5, 15, 5, 0);
        if (i != -1) {
            Icon icon = new Icon(i, 0, 0, 0, 0, button);
            icon.fillParent();
            icon.setAlignment(0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            i2 = 50;
        }
        int i3 = i2;
        TextFrame textFrame = new TextFrame(str, 0, i3, button.getClientWidth(), 0, button);
        textFrame.setAlignment(0.5f, 0.5f);
        textFrame.setColor(Colors.WHITE);
        textFrame.setSize(textFrame.getWidth(), textFrame.calculateTextHeight());
        button.setSize(button.getWidth(), i3 + textFrame.getHeight() + button.getPaddingTop() + button.getPaddingBottom());
    }

    public void addCharacter(final Character character) {
        Button button = new Button(0, 0, getClientWidth(), 30, this) { // from class: info.flowersoft.theotown.ui.Credits.2
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                drawChildren(i, i2);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                Runnable runnableOnClick = character.onClick();
                if (runnableOnClick != null) {
                    runnableOnClick.run();
                }
            }
        };
        int clientWidth = button.getClientWidth() / 2;
        Label label = new Label(character.getName(), 0, 0, clientWidth, button.getClientHeight(), button);
        label.setColor(Colors.YELLOW);
        label.setAlignment(1.0f, 0.5f);
        if (character.getIcon() != -1) {
            new Icon(character.getIcon(), clientWidth + 10, 0, (button.getClientWidth() - clientWidth) - 10, button.getClientHeight(), button).setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        }
    }
}
