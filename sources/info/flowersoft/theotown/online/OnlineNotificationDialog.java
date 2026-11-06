package info.flowersoft.theotown.online;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.online.VirtualNotification;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.stages.RegionStage;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.FillingListItem;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.listitem.GadgetListItem;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.TextFrame;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class OnlineNotificationDialog extends Dialog {
    public final Stapel2DGameContext context;
    public final GameStack gameStack;
    public final ListBox listBox;
    public final OnlineNotificationManager manager;
    public List<VirtualNotification> notifications;

    public OnlineNotificationDialog(Stapel2DGameContext stapel2DGameContext, GameStack gameStack, Master master) {
        super(Resources.ICON_NOTIFICATION, stapel2DGameContext.getTranslator().translate(559), "", 300, 300, master);
        OnlineNotificationManager onlineNotificationManager = OnlineNotificationManager.getInstance();
        this.manager = onlineNotificationManager;
        this.context = stapel2DGameContext;
        this.gameStack = gameStack;
        addHiddenCancelButton(new Runnable() { // from class: info.flowersoft.theotown.online.OnlineNotificationDialog.1
            @Override // java.lang.Runnable
            public void run() {
                if (OnlineNotificationDialog.this.notifications != null) {
                    for (int i = 0; i < OnlineNotificationDialog.this.notifications.size(); i++) {
                        VirtualNotification virtualNotification = (VirtualNotification) OnlineNotificationDialog.this.notifications.get(i);
                        if (virtualNotification.getSeenTime() == 0) {
                            virtualNotification.setSeenTime(InternetTime.getInstance().getTime() / 1000);
                        }
                    }
                    OnlineNotificationDialog.this.manager.resetUnseenCounter();
                }
            }
        });
        onlineNotificationManager.fetch(true);
        onlineNotificationManager.markAsRead();
        getContentPane().setHeight(getContentPane().getHeight() + getControlLine().getHeight());
        ListBox listBox = new ListBox(0, 0, 0, 0, getContentPane()) { // from class: info.flowersoft.theotown.online.OnlineNotificationDialog.2
            @Override // io.blueflower.stapel2d.gui.ListBox, io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                if (OnlineNotificationDialog.this.manager.getNotifications() != OnlineNotificationDialog.this.notifications) {
                    OnlineNotificationDialog onlineNotificationDialog = OnlineNotificationDialog.this;
                    onlineNotificationDialog.notifications = onlineNotificationDialog.manager.getNotifications();
                    OnlineNotificationDialog.this.build();
                }
            }
        };
        this.listBox = listBox;
        listBox.fillParent();
        this.notifications = onlineNotificationManager.getNotifications();
        build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void build() {
        float shiftY = this.listBox.getShiftY();
        this.listBox.removeAllItems();
        List<VirtualNotification> list = this.notifications;
        if (list != null) {
            if (!list.isEmpty()) {
                for (int i = 0; i < this.notifications.size(); i++) {
                    this.listBox.addItem(createNotificationItem(this.notifications.get(i)));
                }
            } else {
                this.listBox.addItem(new FillingListItem(Resources.ICON_ONLINE_REGIONS, this.context.getTranslator().translate(61), this.listBox));
            }
        }
        this.listBox.setShiftY(shiftY);
    }

    public final void locate(VirtualNotification virtualNotification) {
        int regionId = virtualNotification.getRegionId();
        int cityId = virtualNotification.getCityId();
        if (this.gameStack.peek() instanceof RegionStage) {
            ((RegionStage) this.gameStack.peek()).locateOnline(regionId, cityId);
        }
    }

    public final int getNotificationIcon(VirtualNotification virtualNotification) {
        VirtualNotification.Action action = virtualNotification.getAction();
        if (action == null) {
            return Resources.ICON_ONLINE_REGIONS;
        }
        switch (AnonymousClass5.$SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action[action.ordinal()]) {
        }
        return Resources.ICON_ONLINE_REGIONS;
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.online.OnlineNotificationDialog$5, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass5 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action;

        static {
            int[] iArr = new int[VirtualNotification.Action.values().length];
            $SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action = iArr;
            try {
                iArr[VirtualNotification.Action.CITY_COMMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action[VirtualNotification.Action.CITY_PRESENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action[VirtualNotification.Action.STEAL_CITY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action[VirtualNotification.Action.STEAL_REGION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action[VirtualNotification.Action.GIFT_CITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action[VirtualNotification.Action.GIFT_REGION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action[VirtualNotification.Action.RESET_CITY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action[VirtualNotification.Action.DELETE_REGION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public final ListItem createNotificationItem(final VirtualNotification virtualNotification) {
        Panel panel = new Panel(0, 0, this.listBox.getClientWidth(), 40, this.listBox) { // from class: info.flowersoft.theotown.online.OnlineNotificationDialog.3
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                drawChildren(i, i2);
            }
        };
        panel.setPadding(0, 0, 5, 0);
        TextFrame textFrame = new TextFrame(virtualNotification.getText(), 40, 0, panel.getClientWidth() - 80, panel.getClientHeight(), panel);
        textFrame.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        textFrame.setBold(virtualNotification.getSeenTime() == 0);
        panel.setHeight(Math.max(panel.getHeight(), textFrame.calculateTextHeight()));
        textFrame.setHeight(panel.getClientHeight());
        Label label = new Label(StringFormatter.format(this.context.getTranslator().translate(3047), TimeSpan.localize(Math.max(InternetTime.getInstance().getTime() - (virtualNotification.getTime() * 1000), 0L))), panel.getClientWidth(), 0, 0, 0, panel);
        label.setAlignment(1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        label.setFont(Resources.skin.fontSmall);
        label.setColor(Colors.GRAY);
        new Icon(getNotificationIcon(virtualNotification), 5, 0, 30, panel.getClientHeight(), panel);
        if (virtualNotification.getAction() != VirtualNotification.Action.DELETE_REGION) {
            new IconButton(Resources.ICON_LOCATE, "", panel.getClientWidth() - 40, 12, 40, panel.getClientHeight() - 16, panel) { // from class: info.flowersoft.theotown.online.OnlineNotificationDialog.4
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    OnlineNotificationDialog.this.locate(virtualNotification);
                    OnlineNotificationDialog.this.setVisible(false);
                }
            };
            panel = panel;
        }
        GadgetListItem gadgetListItem = new GadgetListItem(panel);
        gadgetListItem.setCanBeSelected(false);
        gadgetListItem.setDrawBackground(true);
        return gadgetListItem;
    }
}
