package info.flowersoft.theotown.ui;

import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.NotificationAction;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Panel;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class NotificationBar {
    public int NOTIFICATION_CMD_WIDTH;
    public List<NotificationAction> actions;
    public long buildTime;
    public int icon;
    public boolean important;
    public final Panel panel;
    public String text;
    public final int NOTIFICATION_CMD_HEIGHT = 30;
    public final int NOTIFICATION_ANIMATION_TIME = 300;

    public NotificationBar(Gadget gadget, boolean z) {
        this.NOTIFICATION_CMD_WIDTH = 30;
        int iMin = Math.min(600, gadget.getClientWidth());
        if (z) {
            this.NOTIFICATION_CMD_WIDTH = 20;
        }
        Panel panel = new Panel((gadget.getClientWidth() - iMin) / 2, gadget.getClientHeight() - 36, iMin, 36, gadget) { // from class: info.flowersoft.theotown.ui.NotificationBar.1
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                float fMin = Math.min((TimeUtils.millis() - NotificationBar.this.buildTime) / 300.0f, 1.0f);
                float f = ((-2.0f) * fMin * fMin * fMin) + (3.0f * fMin * fMin);
                int i3 = (int) ((1.0f - f) * 60.0f);
                engine.setColor(Colors.BLACK);
                engine.drawNinePatch(Resources.IMAGE_WORLD, ((this.x + i) + NotificationBar.this.NOTIFICATION_CMD_WIDTH) - 3, ((this.y + i2) + i3) - 5, (this.width - NotificationBar.this.NOTIFICATION_CMD_WIDTH) + 8, this.height + 10, this.skin.npRectShadow);
                Color color = Colors.WHITE;
                engine.setColor(color);
                engine.setTransparency(Math.round(f * 255.0f));
                if (NotificationBar.this.important) {
                    engine.setColor(Colors.LIGHT_ORANGE);
                }
                engine.drawNinePatch(Resources.IMAGE_WORLD, this.x + i + NotificationBar.this.NOTIFICATION_CMD_WIDTH + 2, this.y + i2 + i3, (this.width - NotificationBar.this.NOTIFICATION_CMD_WIDTH) - 2, this.height, this.skin.npNotificationBar);
                engine.setColor(color);
                drawChildren(i, i2 + i3);
                engine.setTransparency(255);
            }

            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
            }
        };
        this.panel = panel;
        panel.setId("pnlNotification");
    }

    public void setIcon(int i) {
        this.icon = i;
    }

    public void setText(String str) {
        this.text = str;
    }

    public void setActions(List<NotificationAction> list) {
        this.actions = list;
    }

    public void setImportant(boolean z) {
        this.important = z;
    }

    public void build(boolean z) {
        this.panel.removeAllChildren();
        int clientWidth = this.panel.getClientWidth() - 2;
        List<NotificationAction> list = this.actions;
        if (list != null) {
            for (final NotificationAction notificationAction : list) {
                int i = clientWidth - (this.NOTIFICATION_CMD_WIDTH + 1);
                new IconButton(notificationAction.getIconId(), "", i, (this.panel.getClientHeight() - 30) / 2, this.NOTIFICATION_CMD_WIDTH, 30, this.panel) { // from class: info.flowersoft.theotown.ui.NotificationBar.2
                    @Override // info.flowersoft.theotown.ui.IconButton
                    public void calculateMinWidth() {
                    }

                    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void onClick() {
                        super.onClick();
                        notificationAction.setButton(this);
                        notificationAction.getAction().run();
                    }
                }.setId(notificationAction.getId());
                clientWidth = i;
            }
        }
        int i2 = clientWidth;
        new Icon(this.icon, 0, 0, this.NOTIFICATION_CMD_WIDTH, 32, this.panel) { // from class: info.flowersoft.theotown.ui.NotificationBar.3
            @Override // io.blueflower.stapel2d.gui.Icon, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i3, int i4) {
                Image image = this.skin.img;
                float width = image.getWidth(this.frame);
                float height = image.getHeight(this.frame);
                float fRound = this.x + i3 + Math.round(this.alignmentX * (this.width - width)) + image.getHandleX(this.frame);
                float fRound2 = this.y + i4 + Math.round(this.alignmentY * (this.height - height)) + image.getHandleX(this.frame);
                Engine engine = this.skin.engine;
                engine.setColor(Colors.BLACK);
                engine.setTransparency(30);
                float f = fRound + 1.0f;
                float f2 = fRound2 + 1.0f;
                drawIcon(this.skin.img, f, f2, this.frame);
                engine.setTransparency(20);
                drawIcon(this.skin.img, f - 1.0f, f2, this.frame);
                drawIcon(this.skin.img, f + 1.0f, f2, this.frame);
                drawIcon(this.skin.img, f, f2 - 1.0f, this.frame);
                drawIcon(this.skin.img, f, f2 + 1.0f, this.frame);
                engine.setTransparency(255);
                engine.setColor(Colors.WHITE);
                drawIcon(this.skin.img, fRound, fRound2, this.frame);
            }
        };
        ScrollableTextFrame scrollableTextFrame = new ScrollableTextFrame(this.text, this.NOTIFICATION_CMD_WIDTH + 8, 0, (i2 - r0) - 10, this.panel.getClientHeight(), this.panel);
        scrollableTextFrame.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        scrollableTextFrame.setFont(Resources.skin.fontSmall);
        scrollableTextFrame.setShowBorder(false);
        if (this.important) {
            scrollableTextFrame.setColor(Resources.skin.cTextRed);
        } else {
            scrollableTextFrame.setColor(Resources.skin.cText);
        }
        if (z) {
            this.buildTime = TimeUtils.millis();
        }
    }

    public void free() {
        this.panel.getParent().removeChild(this.panel);
        this.panel.free();
    }
}
