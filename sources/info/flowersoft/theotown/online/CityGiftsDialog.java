package info.flowersoft.theotown.online;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.stages.AccountStage;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.FillingListItem;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.ReportDialog;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.ui.listitem.GadgetListItem;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONObject;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.gui.TextFrame;
import io.blueflower.stapel2d.util.Setter;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class CityGiftsDialog extends Dialog {
    public final int REPORT_FRAME;
    public final City city;
    public final Stapel2DGameContext context;
    public boolean forceRebuild;
    public final Setter<Stage> gameStack;
    public final CityGiftManager giftManager;
    public List<VirtualGift> gifts;
    public final ListBox listBox;
    public final Translator translator;

    public CityGiftsDialog(final CityGiftManager cityGiftManager, final City city, final Setter<Stage> setter, Master master, final Stapel2DGameContext stapel2DGameContext) {
        super(Resources.ICON_GOLDEN_PRESENT, stapel2DGameContext.getTranslator().translate(EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE), "", 300, 300, master);
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$anim_store_report00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft);
        this.REPORT_FRAME = animationDraft.frames[0];
        this.giftManager = cityGiftManager;
        this.city = city;
        this.gameStack = setter;
        this.context = stapel2DGameContext;
        TranslationManager translator = stapel2DGameContext.getTranslator();
        this.translator = translator;
        addHiddenCancelButton();
        ListBox listBox = new ListBox(0, 0, 0, 0, getContentPane()) { // from class: info.flowersoft.theotown.online.CityGiftsDialog.1
            @Override // io.blueflower.stapel2d.gui.ListBox, io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                if (cityGiftManager.getGifts() != CityGiftsDialog.this.gifts || CityGiftsDialog.this.forceRebuild) {
                    CityGiftsDialog.this.build();
                }
            }
        };
        this.listBox = listBox;
        listBox.fillParent();
        if (cityGiftManager.isReceiver()) {
            removeControlLine();
        } else {
            addButton(Resources.ICON_PLUS, translator.translate(3408), false, false, true, new Runnable() { // from class: info.flowersoft.theotown.online.CityGiftsDialog$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CityGiftsDialog.$r8$lambda$pqrL5MsVcXURZwjqTKLB29CX5ic(this.f$0, cityGiftManager, city, setter, stapel2DGameContext);
                }
            }).setGolden(true);
        }
    }

    public static /* synthetic */ void $r8$lambda$pqrL5MsVcXURZwjqTKLB29CX5ic(CityGiftsDialog cityGiftsDialog, CityGiftManager cityGiftManager, City city, Setter setter, Stapel2DGameContext stapel2DGameContext) {
        cityGiftsDialog.getClass();
        if (Backend.getInstance().getUser().isForumConnected()) {
            new MakeCityGiftDialog(cityGiftManager, city, setter, (Master) cityGiftsDialog.listBox.getAbsoluteParent(), stapel2DGameContext).setVisible(true);
        } else {
            cityGiftsDialog.gameStack.set(new AccountStage(stapel2DGameContext));
        }
    }

    public final void build() {
        float shiftY = this.listBox.getShiftY();
        this.listBox.removeAllItems();
        List<VirtualGift> list = this.gifts;
        List<VirtualGift> gifts = this.giftManager.getGifts();
        this.gifts = gifts;
        this.forceRebuild = false;
        if (gifts != null && list == null) {
            this.giftManager.markGiftsAsSeen();
        }
        List<VirtualGift> list2 = this.gifts;
        if (list2 == null) {
            this.listBox.addItem(new ListItem("..."));
        } else if (list2.isEmpty()) {
            if (this.giftManager.isReceiver()) {
                this.listBox.addItem(new FillingListItem(Resources.ICON_ACCOUNT, this.translator.translate(2718), this.listBox));
            } else {
                this.listBox.addItem(new FillingListItem(Resources.ICON_PLUS, this.translator.translate(1905), this.listBox));
            }
        } else {
            for (int i = 0; i < this.gifts.size(); i++) {
                this.listBox.addItem(createGiftItem(this.gifts.get(i)));
            }
        }
        this.listBox.setShiftY(shiftY);
    }

    @Override // info.flowersoft.theotown.ui.Dialog
    public void setVisible(boolean z, boolean z2) {
        if (z && !isVisible()) {
            this.giftManager.fetch(false);
            build();
        }
        super.setVisible(z, z2);
    }

    public final int getGiftIcon(VirtualGift virtualGift) {
        if (virtualGift.getType() == GiftType.CASH) {
            return Resources.ICON_MONEY;
        }
        if (virtualGift.getType() == GiftType.DIAMOND) {
            return TheoTown.PREMIUM ? Resources.ICON_ONLINE_REGION_COIN : Resources.ICON_DIAMOND;
        }
        if (virtualGift.getType() == GiftType.TEXT) {
            return Resources.ICON_NOTIFICATION;
        }
        return ((AnimationDraft) Drafts.get("$logo_unknown00", AnimationDraft.class)).frames[0];
    }

    public final String getGiftTitle(VirtualGift virtualGift) {
        String strTranslate;
        if (virtualGift.getType() == GiftType.CASH) {
            strTranslate = Localizer.localizeMoney(virtualGift.getAmount());
        } else if (virtualGift.getType() == GiftType.DIAMOND) {
            strTranslate = Localizer.localizeDiamonds((int) virtualGift.getAmount());
        } else if (virtualGift.getType() == GiftType.TEXT) {
            strTranslate = this.translator.translate(964);
        } else {
            strTranslate = this.translator.translate(3508);
        }
        if (virtualGift.getPriv() != 1) {
            return strTranslate;
        }
        return strTranslate + " " + this.translator.translate(2618);
    }

    public final boolean canRedeemGift(VirtualGift virtualGift) {
        return this.giftManager.isReceiver() && virtualGift.getReceiveTime() == 0 && virtualGift.getType().isConsumable();
    }

    public final void redeemGift(final VirtualGift virtualGift) {
        if (virtualGift.getReceiveTime() > 0) {
            return;
        }
        this.giftManager.redeem(virtualGift, new Runnable() { // from class: info.flowersoft.theotown.online.CityGiftsDialog.2
            @Override // java.lang.Runnable
            public void run() {
                int amount;
                int i = AnonymousClass9.$SwitchMap$info$flowersoft$theotown$online$GiftType[virtualGift.getType().ordinal()];
                if (i != 1) {
                    if (i == 2 && (amount = (int) virtualGift.getAmount()) > 0) {
                        if (TheoTown.PREMIUM) {
                            GameHandler.getInstance().earnRegionCoins(amount);
                            SuccessOverlay.getInstance().addEvent(3, amount);
                        } else {
                            GameHandler.getInstance().earnDiamonds(amount, true, "gift by " + virtualGift.getSenderId());
                        }
                    }
                } else if (virtualGift.getAmount() > 0.0d) {
                    ((DefaultBudget) CityGiftsDialog.this.city.getComponent(0)).earn(virtualGift.getAmount(), "gift by " + virtualGift.getSenderId());
                    SuccessOverlay.getInstance().addEvent(1, virtualGift.getAmount());
                }
                virtualGift.setReceiveTime(System.currentTimeMillis() / 1000);
                CityGiftsDialog.this.forceRebuild = true;
                CityGiftsDialog.this.giftManager.fetch(true);
            }
        }, new Setter<String>() { // from class: info.flowersoft.theotown.online.CityGiftsDialog.3
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(String str) {
                TheoTown.runtimeFeatures.showToast("Error: " + str);
            }
        });
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.online.CityGiftsDialog$9, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass9 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$online$GiftType;

        static {
            int[] iArr = new int[GiftType.values().length];
            $SwitchMap$info$flowersoft$theotown$online$GiftType = iArr;
            try {
                iArr[GiftType.CASH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$online$GiftType[GiftType.DIAMOND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public final ListItem createGiftItem(final VirtualGift virtualGift) {
        Panel panel = new Panel(0, 0, this.listBox.getClientWidth() - 4, 80, this.listBox) { // from class: info.flowersoft.theotown.online.CityGiftsDialog.4
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                drawChildren(i, i2);
            }
        };
        panel.setPadding(5);
        int clientWidth = panel.getClientWidth() - 20;
        if (canRedeemGift(virtualGift)) {
            final String strTranslate = this.translator.translate(775);
            GoldButton goldButton = new GoldButton(0, "", 0, 0, ((int) Resources.skin.fontDefault.getWidth(strTranslate)) + 8, 45, panel) { // from class: info.flowersoft.theotown.online.CityGiftsDialog.5
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    CityGiftsDialog.this.redeemGift(virtualGift);
                }

                @Override // info.flowersoft.theotown.ui.GoldButton, info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i, int i2) {
                    super.draw(i, i2);
                    Skin skin = this.skin;
                    Engine engine = skin.engine;
                    Font font = skin.fontDefault;
                    engine.drawImage(Resources.IMAGE_WORLD, getX() + i + this.paddingLeft, getY() + i2 + this.paddingTop, getClientWidth(), getClientHeight(), 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Resources.ICON_OK);
                    engine.setColor(Colors.DARK_YELLOW);
                    engine.drawText(font, strTranslate, i + getX() + this.paddingLeft, i2 + getY() + this.paddingTop, getClientWidth(), getClientHeight(), 0.5f, 1.0f);
                    engine.setColor(Colors.WHITE);
                }
            };
            panel = panel;
            goldButton.setPadding(4, 4);
            goldButton.setPosition((panel.getClientWidth() - goldButton.getWidth()) - 20, 0);
            clientWidth = goldButton.getX() - 5;
        }
        int i = clientWidth;
        new Button(panel.getClientWidth() - 15, 0, 15, 15, panel) { // from class: info.flowersoft.theotown.online.CityGiftsDialog.6
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                int i4;
                Engine engine = this.skin.engine;
                User user = Backend.getInstance().getUser();
                boolean z = (user.isValid() && user.getAdmin() != 0) || CityGiftsDialog.this.giftManager.isReceiver() || (user.isValid() && (((long) virtualGift.getSenderId()) > user.getId() ? 1 : (((long) virtualGift.getSenderId()) == user.getId() ? 0 : -1)) == 0);
                engine.setColor(Colors.WHITE);
                engine.setScale(0.5f, 0.5f);
                engine.setTransparency(100);
                Image image = Resources.IMAGE_WORLD;
                float x = i2 + getX();
                float y = i3 + getY();
                float f = this.width;
                float f2 = this.height;
                if (!z) {
                    i4 = CityGiftsDialog.this.REPORT_FRAME;
                } else {
                    i4 = Resources.ICON_REMOVE;
                }
                engine.drawImage(image, x, y, f, f2, 0.5f, 0.5f, i4);
                engine.setTransparency(255);
                engine.setScale(1.0f, 1.0f);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                User user = Backend.getInstance().getUser();
                boolean z = false;
                boolean z2 = user.isValid() && user.getAdmin() != 0;
                boolean zIsReceiver = CityGiftsDialog.this.giftManager.isReceiver();
                if (user.isValid() && virtualGift.getSenderId() == user.getId()) {
                    z = true;
                }
                if (z2 || zIsReceiver || z) {
                    CityGiftsDialog.this.showDeleteGiftDialog(virtualGift);
                } else {
                    CityGiftsDialog.this.showReportGiftDialog(virtualGift);
                }
            }
        };
        new Icon(getGiftIcon(virtualGift), 0, 0, 26, 26, panel);
        Label label = new Label(getGiftTitle(virtualGift), 30, 0, i, 0, panel);
        label.setFont(Resources.skin.fontBig);
        label.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        label.adjustSizeToText();
        Label label2 = new Label("by ", 30, label.getY() + label.getHeight(), 0, 0, panel);
        label2.setFont(Resources.skin.fontSmall);
        label2.adjustSizeToText();
        Label label3 = new Label(virtualGift.getSender().getName(), label2.getX() + label2.getWidth(), label2.getY(), 0, 0, panel);
        label3.setFont(Resources.skin.fontSmall);
        label3.setColor(virtualGift.getSender().getColor());
        label3.adjustSizeToText();
        Label label4 = new Label(StringFormatter.format(" - %1$s ago", TimeSpan.localize(Math.max(InternetTime.getInstance().getTime() - (virtualGift.getCreationTime() * 1000), 0L))), label3.getX() + label3.getWidth(), label3.getY(), 0, 0, panel);
        label4.setFont(Resources.skin.fontSmall);
        label4.adjustSizeToText();
        TextFrame textFrame = new TextFrame(new DraftLocalizer(this.city).localizePacked(virtualGift.getContent().replace("\\n", "\n")), 30, label2.getHeight() + label2.getY(), i - 30, 0, panel);
        if (textFrame.getText().trim().isEmpty()) {
            textFrame.setColor(Colors.GRAY);
            textFrame.setText(this.translator.translate(3075));
        }
        textFrame.setHeight(textFrame.calculateTextHeight());
        panel.setHeight(textFrame.getY() + textFrame.getHeight() + panel.getPaddingTop() + panel.getPaddingBottom());
        GadgetListItem gadgetListItem = new GadgetListItem(panel);
        gadgetListItem.setDrawBackground(true);
        gadgetListItem.setCanBeSelected(false);
        return gadgetListItem;
    }

    public final void showReportGiftDialog(final VirtualGift virtualGift) {
        ReportDialog.show(this.context, (Master) this.contentPane.getAbsoluteParent(), StringFormatter.format(this.translator.translate(2344), virtualGift.getSender().getName()), new ReportDialog.Reporter() { // from class: info.flowersoft.theotown.online.CityGiftsDialog.7
            @Override // info.flowersoft.theotown.ui.ReportDialog.Reporter
            public void report(String str, final Runnable runnable, final Setter<String> setter) {
                CityGiftsDialog.this.giftManager.reportGift(virtualGift, str, new Service.Handler() { // from class: info.flowersoft.theotown.online.CityGiftsDialog.7.1
                    @Override // info.flowersoft.theotown.backend.Service.Handler
                    public void onSuccess(JSONObject jSONObject) {
                        TheoTown.analytics.logEvent("online", "report gift", virtualGift.toString());
                        runnable.run();
                        CityGiftsDialog.this.giftManager.fetch(true);
                    }

                    @Override // info.flowersoft.theotown.backend.Service.Handler
                    public void onFailure(JSONObject jSONObject) {
                        setter.set(jSONObject.optString("hint"));
                    }
                });
            }
        });
    }

    public final void showDeleteGiftDialog(final VirtualGift virtualGift) {
        Dialog dialog = new Dialog(Resources.ICON_REMOVE, this.translator.translate(1942), this.translator.translate(3288), (Master) this.contentPane.getAbsoluteParent());
        dialog.addCancelButton(Resources.ICON_CANCEL, this.translator.translate(1477)).setMarked(true);
        dialog.addButton(Resources.ICON_REMOVE, this.translator.translate(2282), false, new Runnable() { // from class: info.flowersoft.theotown.online.CityGiftsDialog.8
            @Override // java.lang.Runnable
            public void run() {
                CityGiftsDialog.this.giftManager.deleteGift(virtualGift, new Service.Handler() { // from class: info.flowersoft.theotown.online.CityGiftsDialog.8.1
                    @Override // info.flowersoft.theotown.backend.Service.Handler
                    public void onSuccess(JSONObject jSONObject) {
                        TheoTown.runtimeFeatures.showToast("Success");
                        CityGiftsDialog.this.giftManager.fetch(true);
                    }

                    @Override // info.flowersoft.theotown.backend.Service.Handler
                    public void onFailure(JSONObject jSONObject) {
                        TheoTown.runtimeFeatures.showToast("Error: " + jSONObject.optString("hint", jSONObject.optString("status")));
                    }
                });
            }
        });
        dialog.setVisible(true);
    }
}
