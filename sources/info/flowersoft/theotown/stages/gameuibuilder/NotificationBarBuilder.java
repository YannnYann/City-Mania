package info.flowersoft.theotown.stages.gameuibuilder;

import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.city.components.Notification;
import info.flowersoft.theotown.city.components.NotificationAction;
import info.flowersoft.theotown.city.components.NotificationListener;
import info.flowersoft.theotown.city.components.Notificator;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundPlayer;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.stages.cityinfo.CityInfoAction;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.NotificationBar;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Builder;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class NotificationBarBuilder extends Builder<CityStage.GameStageContext> implements NotificationListener {
    public final int NOTIFICATION_MAX_SHOW_TIME;
    public Notification barNotification;
    public final DefaultDate date;
    public Dialog dialog;
    public int lastSpeed;
    public boolean modifiedSpeed;
    public boolean narrowMode;
    public NotificationBar notificationBar;
    public final Notificator notificator;
    public Panel panel;
    public long startMS;

    public NotificationBarBuilder(CityStage.GameStageContext gameStageContext) {
        super(gameStageContext);
        this.NOTIFICATION_MAX_SHOW_TIME = 60000;
        this.notificator = (Notificator) getBuilderContext().getCity().getComponent(4);
        this.date = getBuilderContext().getDate();
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        Master gui = getBuilderContext().getGUI();
        Panel panel = getBuilderContext().areaPanel;
        int width = panel.getWidth();
        boolean z = width < 310;
        this.narrowMode = z;
        if (!z) {
            width -= 48;
        }
        Panel panel2 = new Panel((Settings.leftMinimap ? 48 : 0) + panel.getX() + 2, panel.getY(), width - 4, panel.getHeight() - 2, gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder.1
            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                Tutorial.getInstance().setGUI(this.master, this);
                if (NotificationBarBuilder.this.notificationBar != null) {
                    NotificationBarBuilder.this.barNotification.update();
                    float fMillis = (TimeUtils.millis() - NotificationBarBuilder.this.startMS) / 60000.0f;
                    if (!NotificationBarBuilder.this.barNotification.rebuildMe()) {
                        if ((fMillis < 1.0f || NotificationBarBuilder.this.barNotification.keepOpen()) && !NotificationBarBuilder.this.barNotification.closeMe() && ((NotificationBarBuilder.this.barNotification.isCloseable() || NotificationBarBuilder.this.barNotification.checkCondition()) && NotificationBarBuilder.this.barNotification.checkCondition())) {
                            return;
                        }
                        NotificationBarBuilder.this.close(true);
                        return;
                    }
                    NotificationBarBuilder notificationBarBuilder = NotificationBarBuilder.this;
                    notificationBarBuilder.buildNotification(notificationBarBuilder.barNotification);
                    NotificationBarBuilder.this.barNotification.onShow();
                }
            }

            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                drawChildren(i, i2);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void free() {
                NotificationBarBuilder.this.notificator.lock(null);
                NotificationBarBuilder.this.notificator.removeListener(NotificationBarBuilder.this);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return !Settings.hideUI;
            }
        };
        this.panel = panel2;
        panel2.setTouchThrough(true);
        panel.setHeight(panel.getHeight() - 36);
        Tutorial.getInstance().setGUI(gui, this.panel);
        this.notificator.addListener(this);
        if (this.notificator.getCurrentNotification() != null) {
            recoverNotification(this.notificator.getCurrentNotification());
        } else {
            this.notificator.unlock();
        }
    }

    @Override // info.flowersoft.theotown.city.components.NotificationListener
    public void onNotification(Notification notification) {
        if (Tutorial.isVisible(Tutorial.FLAG_NOTIFICATION)) {
            buildNotification(notification);
            SoundPlayer.getInstance().play(Resources.SOUND_NOTIFICATION, SoundType.UI);
            showNotification(notification);
            if (!notification.isImportant() || this.date.getSpeed() == 2) {
                return;
            }
            this.lastSpeed = this.date.getSpeed();
            this.modifiedSpeed = true;
            this.date.setSpeed(0);
        }
    }

    public final void recoverNotification(Notification notification) {
        if (Tutorial.isVisible(Tutorial.FLAG_NOTIFICATION)) {
            buildNotification(notification);
            showNotification(notification);
        }
    }

    public final void buildNotification(Notification notification) {
        List<NotificationAction> actions = notification.getActions();
        for (NotificationAction notificationAction : actions) {
            if (notificationAction instanceof CityInfoAction) {
                final CityInfoAction cityInfoAction = (CityInfoAction) notificationAction;
                cityInfoAction.setAction(new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ((CityStage.GameStageContext) NotificationBarBuilder.this.getBuilderContext()).visitCityInfo(cityInfoAction.getType());
                    }
                });
            }
        }
        if (notification.isImmersive()) {
            buildNotificationDialog(notification, actions);
        } else {
            buildNotificationBar(notification, actions);
        }
    }

    public final void buildNotificationBar(Notification notification, List<NotificationAction> list) {
        this.barNotification = notification;
        NotificationBar notificationBar = this.notificationBar;
        if (notificationBar != null) {
            notificationBar.free();
            this.notificationBar = null;
        }
        NotificationBar notificationBar2 = new NotificationBar(this.panel, this.narrowMode);
        this.notificationBar = notificationBar2;
        notificationBar2.setIcon(notification.getIconID());
        this.notificationBar.setText(notification.getMessage());
        this.notificationBar.setActions(list);
        this.notificationBar.setImportant(notification.isImportant());
        this.notificationBar.build(true);
    }

    public final void showNotification(Notification notification) {
        this.notificator.lock(notification);
        if (notification.isImmersive()) {
            getBuilderContext().showDialog(this.dialog);
        } else {
            this.startMS = TimeUtils.millis();
        }
        notification.onShow();
    }

    public final void buildNotificationDialog(final Notification notification, List<NotificationAction> list) {
        String strTranslate;
        Dialog dialog = new Dialog(notification.getIconID(), notification.getTitle(), notification.getMessage(), (Master) this.panel.getParent());
        this.dialog = dialog;
        dialog.setOnClose(new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder.3
            @Override // java.lang.Runnable
            public void run() {
                notification.onClose();
            }
        });
        if (notification.isCloseable()) {
            this.dialog.addHiddenCancelButton();
        }
        for (final NotificationAction notificationAction : list) {
            if (notificationAction.getNameId() == -1) {
                strTranslate = "";
            } else {
                strTranslate = getBuilderContext().getGameContext().getTranslator().translate(notificationAction.getNameId());
            }
            final Button[] buttonArr = new Button[1];
            buttonArr[0] = this.dialog.addButton(notificationAction.getIconId(), strTranslate, false, new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder.4
                @Override // java.lang.Runnable
                public void run() {
                    NotificationBarBuilder.this.close(false);
                    notificationAction.setButton(buttonArr[0]);
                    notificationAction.getAction().run();
                }
            });
        }
    }

    public void close(boolean z) {
        if (this.modifiedSpeed) {
            this.modifiedSpeed = false;
            if (this.date.getSpeed() == 0) {
                this.date.setSpeed(this.lastSpeed);
            }
        }
        if (z) {
            Notification notification = this.barNotification;
            if (notification != null) {
                notification.onClose();
            }
            NotificationBar notificationBar = this.notificationBar;
            if (notificationBar != null) {
                notificationBar.free();
                this.notificationBar = null;
            }
        }
        if (z || this.notificationBar == null) {
            this.notificator.unlock();
        }
        Dialog dialog = this.dialog;
        if (dialog != null) {
            dialog.free();
            this.dialog = null;
        }
    }
}
