package info.flowersoft.theotown.ui;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3522b4;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.InAppHandler;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.draft.ScriptDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.mechanics.RewardManager;
import info.flowersoft.theotown.resources.AdReward;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Features;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.PersistentData;
import info.flowersoft.theotown.resources.RedeemCode;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.Script;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.ui.DiamondShopDialog;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.listitem.GadgetListItem;
import info.flowersoft.theotown.ui.listitem.GroupItem;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.JSONUtil;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.RandomUtil;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import info.flowersoft.theotown.util.vfs.VirtualFile;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Predicate;
import io.blueflower.stapel2d.util.Setter;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class DiamondShopDialog extends Dialog {
    public static long lastOpened;
    public final Stapel2DGameContext context;
    public final List<String> invitationIds;
    public final List<Long> invitationTimes;
    public final JSONObject invitationsConfig;
    public RedeemCodeResult lastRedeemResult;
    public final ListBox listBox;
    public boolean redeemRunning;
    public final boolean rtl;
    public final Setter<Stage> stageVisitor;
    public final Translator translator;

    public static /* synthetic */ void $r8$lambda$4Mz7Op19_2_faIemHzDwBW8605k(FeatureDraft featureDraft) {
    }

    public static boolean isUnlimitedFreeAvailable() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DiamondShopDialog(Master master, Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
        super(Resources.ICON_DIAMOND, stapel2DGameContext.getTranslator().translate(888), "", 300, 100, master);
        final DiamondShopDialog diamondShopDialog = this;
        diamondShopDialog.invitationsConfig = Resources.getSpecificConfig("invitations");
        diamondShopDialog.invitationIds = new ArrayList();
        diamondShopDialog.invitationTimes = new ArrayList();
        diamondShopDialog.context = stapel2DGameContext;
        TranslationManager translator = stapel2DGameContext.getTranslator();
        diamondShopDialog.translator = translator;
        diamondShopDialog.rtl = translator.prefersRTL();
        diamondShopDialog.stageVisitor = setter;
        diamondShopDialog.load();
        diamondShopDialog.checkInvitations();
        diamondShopDialog.setCanCloseViaBackground(false);
        diamondShopDialog.removeControlLine();
        new ColorRect(Resources.skin.cMenuBg, diamondShopDialog.getContentPane());
        ListBox listBox = new ListBox(0, 0, 0, 0, diamondShopDialog.getContentPane());
        diamondShopDialog.listBox = listBox;
        listBox.fillParent();
        listBox.setShowBorder(false);
        InAppHandler.getInstance().fetch();
        ArrayList arrayList = new ArrayList();
        for (FeatureDraft featureDraft : Drafts.FEATURES) {
            if (featureDraft.buyable && !featureDraft.hidden && featureDraft.diamonds.get() > 0) {
                arrayList.add(featureDraft);
            }
        }
        if (diamondShopDialog.isFriendInvitationsActive() && diamondShopDialog.getRedeemedFriendInvitations() < diamondShopDialog.getTotalFriendInvitations()) {
            Panel panel = new Panel(0, 0, diamondShopDialog.listBox.getClientWidth(), 40, diamondShopDialog.listBox) { // from class: info.flowersoft.theotown.ui.DiamondShopDialog.1
                @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i, int i2) {
                    drawChildren(i, i2);
                }
            };
            diamondShopDialog = this;
            Label label = new Label(getRedeemedFriendInvitations() + "/" + getTotalFriendInvitations(), 5, 0, 0, panel.getClientHeight(), panel) { // from class: info.flowersoft.theotown.ui.DiamondShopDialog.2
                @Override // io.blueflower.stapel2d.gui.Gadget
                public void onUpdate() {
                    super.onUpdate();
                    setText(DiamondShopDialog.this.getRedeemedFriendInvitations() + "/" + DiamondShopDialog.this.getTotalFriendInvitations());
                }
            };
            label.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
            label.setFont(Resources.skin.fontBig);
            Color color = Colors.WHITE;
            label.setColor(color);
            Label label2 = new Label(StringFormatter.format(diamondShopDialog.translator.translate(1143), Integer.valueOf(diamondShopDialog.getDiamondsPerInvitation())), 40, 0, 0, panel.getClientHeight(), panel);
            label2.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
            label2.setScale(Math.min(1.0f, (panel.getClientWidth() - 85) / label2.getTextWidth()), 1.0f);
            label2.setColor(color);
            new IconButton(Resources.ICON_PLUS, "", panel.getClientWidth() - panel.getClientHeight(), 4, panel.getClientHeight() - 8, panel.getClientHeight() - 8, panel) { // from class: info.flowersoft.theotown.ui.DiamondShopDialog.3
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    TheoTown.runtimeFeatures.shareText(DiamondShopDialog.this.translator.translate(1102), StringFormatter.format(DiamondShopDialog.this.translator.translate(2517), DiamondShopDialog.this.allocateFriendInvitationURL()));
                }

                @Override // io.blueflower.stapel2d.gui.Gadget
                public boolean isVisible() {
                    return super.isVisible() && DiamondShopDialog.this.getRedeemedFriendInvitations() < DiamondShopDialog.this.getTotalFriendInvitations();
                }
            };
            diamondShopDialog.listBox.addItem(new GadgetListItem(panel));
        }
        if (Gdx.app.getType() == Application.ApplicationType.Android) {
            TheoTown.STORE_NAME.equals("playstore");
        }
        ListBox listBox2 = diamondShopDialog.listBox;
        GroupItem groupItem = new GroupItem();
        listBox2.addItem(groupItem);
        groupItem.add(diamondShopDialog.new BuyItem((FeatureDraft) arrayList.get(0), 80));
        groupItem.add(diamondShopDialog.new BuyItem((FeatureDraft) arrayList.get(1), 80));
        groupItem.add(diamondShopDialog.new BuyItem((FeatureDraft) arrayList.get(2), 80));
        ListBox listBox3 = diamondShopDialog.listBox;
        GroupItem groupItem2 = new GroupItem();
        listBox3.addItem(groupItem2);
        groupItem2.add(diamondShopDialog.new BuyItem((FeatureDraft) arrayList.get(4), 80).setPopular(true));
        groupItem2.add(diamondShopDialog.buildAdRewardItem());
        if (isUnlimitedFreeAvailable()) {
            ListBox listBox4 = diamondShopDialog.listBox;
            GroupItem groupItem3 = new GroupItem();
            listBox4.addItem(groupItem3);
            groupItem3.add(diamondShopDialog.buildSingleFeatureItem((FeatureDraft) Features.getInstance().FEATURE_FREEFASTSPEED00.get(), 1.0f, 48));
            groupItem3.add(diamondShopDialog.buildSingleFeatureItem((FeatureDraft) Features.getInstance().FEATURE_FREETUNNELS00.get(), 1.0f, 48));
        }
        ListBox listBox5 = diamondShopDialog.listBox;
        GroupItem groupItem4 = new GroupItem();
        listBox5.addItem(groupItem4);
        if (GameHandler.getInstance().canEarnDiamonds()) {
            groupItem4.add(diamondShopDialog.buildRedeemItem(diamondShopDialog.listBox));
        }
        if (setter != null) {
            groupItem4.add(diamondShopDialog.buildFeaturesItem());
        }
        if (Gdx.app.getType() == Application.ApplicationType.iOS) {
            ListBox listBox6 = diamondShopDialog.listBox;
            GroupItem groupItem5 = new GroupItem();
            listBox6.addItem(groupItem5);
            groupItem5.add(new IconItem(Resources.ICON_RESET, diamondShopDialog.translator.translate(2583), new Runnable() { // from class: info.flowersoft.theotown.ui.DiamondShopDialog$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DiamondShopDialog.m2370$r8$lambda$TU4TKicWpBRpZ_buMNe90zjBqA(this.f$0);
                }
            }, false, diamondShopDialog.rtl));
        }
        diamondShopDialog.addHiddenCancelButton();
        lastOpened = TimeUtils.millis();
        diamondShopDialog.setSize(diamondShopDialog.getWidth(), (diamondShopDialog.listBox.getContentHeight() + diamondShopDialog.window.getHeight()) - diamondShopDialog.listBox.getClientHeight());
    }

    /* JADX INFO: renamed from: $r8$lambda$-TU4TKicWpBRpZ_buMNe90zjBqA, reason: not valid java name */
    public static /* synthetic */ void m2370$r8$lambda$TU4TKicWpBRpZ_buMNe90zjBqA(DiamondShopDialog diamondShopDialog) {
        diamondShopDialog.getClass();
        TheoTown.purchaseManager.purchaseRestore();
        GameHandler.getInstance().saveData();
        Dialog dialog = new Dialog(Resources.ICON_UPGRADE, diamondShopDialog.translator.translate(2449), diamondShopDialog.translator.translate(3523), (Master) diamondShopDialog.contentPane.getAbsoluteParent());
        dialog.addCancelButton(Resources.ICON_OK, diamondShopDialog.translator.translate(1899)).setGolden(true);
        dialog.setVisible(true);
    }

    public final void load() {
        SSP.Reader readerLoad = new SSP("shopninvitiations").load();
        try {
            synchronized (this.invitationIds) {
                try {
                    this.invitationIds.clear();
                    JSONArray jSONArray = new JSONArray(readerLoad.getString("invitationids", "[]"));
                    for (int i = 0; i < jSONArray.length(); i += 2) {
                        String strOptString = jSONArray.optString(i);
                        long jOptLong = jSONArray.optLong(i + 1);
                        if (InternetTime.getInstance().getTime() - jOptLong < 604800000) {
                            this.invitationIds.add(strOptString);
                            this.invitationTimes.add(Long.valueOf(jOptLong));
                        }
                    }
                } finally {
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void save() {
        SSP.Writer writerEdit = new SSP("shopninvitiations").edit();
        JSONArray jSONArray = new JSONArray();
        synchronized (this.invitationIds) {
            for (int i = 0; i < this.invitationIds.size(); i++) {
                try {
                    jSONArray.put(this.invitationIds.get(i));
                    jSONArray.put(this.invitationTimes.get(i));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        writerEdit.putString("invitationids", jSONArray.toString());
        writerEdit.apply();
    }

    public final void checkInvitations() {
        if (this.invitationIds.isEmpty()) {
            new Thread() { // from class: info.flowersoft.theotown.ui.DiamondShopDialog.4
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new URL("https://theotown.com/share?id=0?check=true").openStream(), StandardCharsets.UTF_8));
                        bufferedReader.readLine();
                        bufferedReader.close();
                    } catch (Exception e) {
                        TheoTown.analytics.logException("Invitation Check", e);
                    }
                }
            }.start();
        } else {
            new Thread() { // from class: info.flowersoft.theotown.ui.DiamondShopDialog.5
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    String str;
                    for (int i = 0; i < DiamondShopDialog.this.invitationIds.size(); i++) {
                        try {
                            synchronized (DiamondShopDialog.this.invitationIds) {
                                str = (String) DiamondShopDialog.this.invitationIds.get(i);
                            }
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new URL("https://theotown.com/share?id=" + str + "&check=true").openStream(), StandardCharsets.UTF_8));
                            String line = bufferedReader.readLine();
                            bufferedReader.close();
                            if (new JSONObject(line).optBoolean("redeemed", false)) {
                                synchronized (DiamondShopDialog.this.invitationIds) {
                                    try {
                                        if (DiamondShopDialog.this.getTotalFriendInvitations() > DiamondShopDialog.this.getRedeemedFriendInvitations()) {
                                            TheoTown.analytics.logEvent("Invitation", "Redeem", "" + DiamondShopDialog.this.getRedeemedFriendInvitations());
                                            DiamondShopDialog.this.invitationIds.remove(str);
                                            DiamondShopDialog.this.redeemFriendInvitation();
                                            DiamondShopDialog.this.save();
                                        }
                                    } finally {
                                    }
                                }
                            }
                        } catch (Exception e) {
                            TheoTown.analytics.logException("Invitation Check", e);
                        }
                    }
                }
            }.start();
        }
    }

    public final IconItem buildFeaturesItem() {
        return new IconItem(Resources.ICON_FEATURES, this.translator.translate(3279), new Runnable() { // from class: info.flowersoft.theotown.ui.DiamondShopDialog.6
            @Override // java.lang.Runnable
            public void run() {
                DiamondShopDialog.this.setVisible(false);
                new FeaturesShopDialog(DiamondShopDialog.this.context, (Master) DiamondShopDialog.this.contentPane.getAbsoluteParent(), DiamondShopDialog.this.stageVisitor).setVisible(true);
            }
        }, false, this.rtl);
    }

    public final IconItem buildSingleFeatureItem(final FeatureDraft featureDraft, final float f, final int i) {
        return new IconItemWidth(featureDraft.frames[0], new DraftLocalizer(this.context, "").getTitle(featureDraft), new Runnable() { // from class: info.flowersoft.theotown.ui.DiamondShopDialog$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                DiamondShopDialog.m2372$r8$lambda$HAiGIjNwO0uUsQT8XpNQQHRujo(featureDraft);
            }
        }, true, this.rtl) { // from class: info.flowersoft.theotown.ui.DiamondShopDialog.7
            @Override // info.flowersoft.theotown.ui.IconItem, io.blueflower.stapel2d.gui.ListItem
            public void draw(boolean z, int i2, int i3, int i4, int i5, int i6, Skin skin) {
                if (isAvailable()) {
                    super.draw(z, i2, i3, i4, i5, i6, skin);
                }
            }

            @Override // info.flowersoft.theotown.ui.listitem.GroupItem.Item
            public float getWidthRatio() {
                return isAvailable() ? f : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            }

            @Override // info.flowersoft.theotown.ui.IconItem, io.blueflower.stapel2d.gui.ListItem
            public int getHeight(boolean z) {
                if (isAvailable()) {
                    return i;
                }
                return 0;
            }

            public final boolean isAvailable() {
                return !featureDraft.isUnlocked() && featureDraft.buyable;
            }
        };
    }

    /* JADX INFO: renamed from: $r8$lambda$HAiGIjNwO0uUsQT8XpNQQHRu-jo, reason: not valid java name */
    public static /* synthetic */ void m2372$r8$lambda$HAiGIjNwO0uUsQT8XpNQQHRujo(FeatureDraft featureDraft) {
        if (!featureDraft.buyable || featureDraft.isUnlocked()) {
            return;
        }
        InAppHandler inAppHandler = InAppHandler.getInstance();
        String str = Features.getInstance().isProbablyTestUser() ? " (TEST)" : "";
        TheoTown.analytics.logEvent("IAP", "Request IAP " + featureDraft.id + str, "Has " + GameHandler.getInstance().getDiamonds() + " diamonds");
        inAppHandler.requestPurchase(featureDraft, new Setter() { // from class: info.flowersoft.theotown.ui.DiamondShopDialog$$ExternalSyntheticLambda3
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                DiamondShopDialog.$r8$lambda$4Mz7Op19_2_faIemHzDwBW8605k((FeatureDraft) obj);
            }
        }, false);
    }

    public final IconItem buildAdRewardItem() {
        final AdReward adReward = new AdReward();
        final GameHandler gameHandler = GameHandler.getInstance();
        final RewardManager rewardManager = gameHandler.getRewardManager();
        return new IconItemWidth(Resources.ICON_GOLDEN_PRESENT, this.translator.translate(963), new Runnable() { // from class: info.flowersoft.theotown.ui.DiamondShopDialog$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                DiamondShopDialog.m2371$r8$lambda$753QL9I6Bu7PNcwf7Dqk3FEfjs(this.f$0, rewardManager);
            }
        }, true, this.rtl) { // from class: info.flowersoft.theotown.ui.DiamondShopDialog.8
            @Override // info.flowersoft.theotown.ui.listitem.GroupItem.Item
            public float getWidthRatio() {
                if (DiamondShopDialog.this.stageVisitor != null && adReward.isAvailable() && gameHandler.canEarnDiamonds()) {
                    return 0.5f;
                }
                return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            }
        };
    }

    /* JADX INFO: renamed from: $r8$lambda$753QL9I6Bu7PNcwf7Dq-k3FEfjs, reason: not valid java name */
    public static /* synthetic */ void m2371$r8$lambda$753QL9I6Bu7PNcwf7Dqk3FEfjs(DiamondShopDialog diamondShopDialog, RewardManager rewardManager) {
        diamondShopDialog.getClass();
        if (rewardManager.isTimeForReward()) {
            new DailyPresentDialog(rewardManager.getRewardDay(), (Master) diamondShopDialog.listBox.getAbsoluteParent(), diamondShopDialog.translator, diamondShopDialog.stageVisitor, diamondShopDialog.context).setVisible(true);
        } else {
            new AdRewardDialog(diamondShopDialog.stageVisitor, (Master) diamondShopDialog.getContentPane().getAbsoluteParent(), diamondShopDialog.context).setVisible(true);
        }
    }

    public static abstract class IconItemWidth extends IconItem implements GroupItem.Item {
        public IconItemWidth(int i, String str, Runnable runnable, boolean z, boolean z2) {
            super(i, str, runnable, z, z2);
        }
    }

    public final IconItem buildRedeemItem(ListBox listBox) {
        PersistentData codeData = getCodeData();
        JSONObject jSONObject = codeData.read();
        return new IconItem(Resources.ICON_AWARD, this.translator.translate(951), new AnonymousClass9(JSONUtil.optArray(jSONObject, "redeemed"), codeData, jSONObject), false, this.rtl);
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.DiamondShopDialog$9, reason: invalid class name */
    public class AnonymousClass9 implements Runnable {
        public final /* synthetic */ JSONObject val$codeData;
        public final /* synthetic */ PersistentData val$codeDataHolder;
        public final /* synthetic */ JSONArray val$redeemedKeys;

        public AnonymousClass9(JSONArray jSONArray, PersistentData persistentData, JSONObject jSONObject) {
            this.val$redeemedKeys = jSONArray;
            this.val$codeDataHolder = persistentData;
            this.val$codeData = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (GameHandler.getInstance().canEarnDiamonds()) {
                if (DiamondShopDialog.this.lastRedeemResult != null || DiamondShopDialog.this.redeemRunning) {
                    return;
                }
                RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder((Master) DiamondShopDialog.this.listBox.getAbsoluteParent(), DiamondShopDialog.this.translator, DiamondShopDialog.this.context.getKey());
                final JSONArray jSONArray = this.val$redeemedKeys;
                final PersistentData persistentData = this.val$codeDataHolder;
                final JSONObject jSONObject = this.val$codeData;
                renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.ui.DiamondShopDialog$9$$ExternalSyntheticLambda0
                    @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
                    public final void accept(Object obj) {
                        DiamondShopDialog.AnonymousClass9.$r8$lambda$3_BCEYuajt5VLwdArLs7Pj6Pz2g(this.f$0, jSONArray, persistentData, jSONObject, (String) obj);
                    }
                });
                renameDialogBuilder.setFilter(new Predicate() { // from class: info.flowersoft.theotown.ui.DiamondShopDialog$9$$ExternalSyntheticLambda1
                    @Override // io.blueflower.stapel2d.util.Predicate
                    public final boolean apply(Object obj) {
                        return new RedeemCode((String) obj).isValid();
                    }
                });
                renameDialogBuilder.setCancelText(DiamondShopDialog.this.translator.translate(1477));
                renameDialogBuilder.setOkText(DiamondShopDialog.this.translator.translate(529));
                renameDialogBuilder.build(Resources.ICON_AWARD, DiamondShopDialog.this.translator.translate(1530), DiamondShopDialog.this.translator.translate(402), "").setVisible(true);
                return;
            }
            TheoTown.runtimeFeatures.showToast("Too much winning");
        }

        public static /* synthetic */ void $r8$lambda$3_BCEYuajt5VLwdArLs7Pj6Pz2g(AnonymousClass9 anonymousClass9, final JSONArray jSONArray, final PersistentData persistentData, final JSONObject jSONObject, String str) {
            anonymousClass9.getClass();
            final String strTrim = str.toLowerCase(Locale.ENGLISH).trim();
            RedeemCode redeemCode = new RedeemCode(strTrim);
            DiamondShopDialog.this.redeemRunning = true;
            RedeemCode.CheckResult checkResult = new RedeemCode.CheckResult() { // from class: info.flowersoft.theotown.ui.DiamondShopDialog.9.1
                @Override // info.flowersoft.theotown.resources.RedeemCode.CheckResult
                public void onSuccess(int i) {
                    GameHandler.getInstance().earnDiamonds(i, true, "redeemed " + strTrim);
                    DiamondShopDialog.this.lastRedeemResult = new RedeemCodeResult();
                    DiamondShopDialog.this.lastRedeemResult.successful = true;
                    DiamondShopDialog.this.lastRedeemResult.diamonds = i;
                    DiamondShopDialog.this.redeemRunning = false;
                    jSONArray.put(strTrim);
                    persistentData.write(jSONObject);
                    TheoTown.analytics.logEvent("RedeemCode", "Success", strTrim + ": " + i);
                }

                @Override // info.flowersoft.theotown.resources.RedeemCode.CheckResult
                public void onFailure(String str2) {
                    JSONObject jSONObjectOptJSONObject;
                    DiamondShopDialog.this.lastRedeemResult = new RedeemCodeResult();
                    DiamondShopDialog.this.lastRedeemResult.successful = false;
                    DiamondShopDialog.this.lastRedeemResult.errorMessage = str2;
                    JSONObject jSONObjectOptJSONObject2 = Resources.getSpecificConfig("redeem").optJSONObject("keys");
                    if (jSONObjectOptJSONObject2 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(strTrim)) != null) {
                        DiamondShopDialog.this.lastRedeemResult.successful = true;
                        String strOptString = jSONObjectOptJSONObject.optString("script", "");
                        if (strOptString != null && !strOptString.isEmpty()) {
                            DiamondShopDialog.this.runScript("redeem", strOptString);
                        }
                        String strOptString2 = jSONObjectOptJSONObject.optString("url");
                        if (strOptString2 != null && !strOptString2.isEmpty()) {
                            TheoTown.runtimeFeatures.openURLInApp(strOptString2);
                        }
                    }
                    DiamondShopDialog.this.redeemRunning = false;
                    TheoTown.analytics.logEvent("RedeemCode", "Failure", strTrim + ": " + str2);
                }
            };
            if (!JSONUtil.contains(jSONArray, strTrim)) {
                redeemCode.check(checkResult);
            } else {
                checkResult.onFailure("This code has been redeemed already");
            }
        }
    }

    public final void runScript(String str, String str2) {
        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        Draft draft = Drafts.get("$script_redeem00", ScriptDraft.class);
        try {
            scriptingEnvironment.setCurrentScript(new Script(draft, draft, str, VirtualFile.createFile(str, new byte[0], null)));
            scriptingEnvironment.loadString(str2, str).invoke();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            scriptingEnvironment.setCurrentScript(null);
        }
    }

    public final PersistentData getCodeData() {
        return new PersistentData("codes");
    }

    @Override // info.flowersoft.theotown.ui.Dialog
    public void onUpdate() {
        super.onUpdate();
        RedeemCodeResult redeemCodeResult = this.lastRedeemResult;
        if (redeemCodeResult == null || this.redeemRunning) {
            return;
        }
        if (redeemCodeResult.successful) {
            if (redeemCodeResult.diamonds > 0) {
                Dialog dialog = new Dialog(Resources.ICON_DIAMOND, this.translator.translate(2085), StringFormatter.format(this.translator.translate(1390), Localizer.localizeDiamonds(this.lastRedeemResult.diamonds)), (Master) getContentPane().getAbsoluteParent());
                dialog.addCancelButton(Resources.ICON_OK, this.translator.translate(2447)).setGolden(true);
                dialog.setVisible(true);
            }
        } else {
            Dialog dialog2 = new Dialog(Resources.FRAME_ZONE_OVERLOADED, this.translator.translate(2824), this.translator.translate(44), (Master) getContentPane().getAbsoluteParent());
            dialog2.addCancelButton(Resources.ICON_OK, this.translator.translate(2447));
            dialog2.setVisible(true);
        }
        this.lastRedeemResult = null;
    }

    public class BuyItem extends ListItem {
        public GoldButton cmd;
        public FeatureDraft featureDraft;
        public int height;
        public FeatureDraft oldPriceDraft;
        public boolean popular;

        public BuyItem(FeatureDraft featureDraft, int i) {
            String strOptString;
            int i2;
            int i3;
            super("");
            this.featureDraft = featureDraft;
            this.height = i;
            JSONObject jSONObjectOptJSONObject = featureDraft.meta.optJSONObject("tags");
            if (jSONObjectOptJSONObject != null && (strOptString = jSONObjectOptJSONObject.optString("old price")) != null) {
                FeatureDraft featureDraft2 = (FeatureDraft) Drafts.ALL.get(strOptString);
                this.oldPriceDraft = featureDraft2;
                if (featureDraft2 != null && ((i2 = featureDraft.microPrice) == 0 || (i3 = featureDraft2.microPrice) == 0 || i3 <= i2)) {
                    this.oldPriceDraft = null;
                }
            }
            GoldButton goldButton = new GoldButton(Resources.ICON_LOAN, "", 0, 0, 88, 24, DiamondShopDialog.this.listBox) { // from class: info.flowersoft.theotown.ui.DiamondShopDialog.BuyItem.1
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    BuyItem.this.onClick(0, 0);
                }
            };
            this.cmd = goldButton;
            goldButton.setGreen(true);
        }

        public BuyItem setPopular(boolean z) {
            this.popular = z;
            return this;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            Engine engine = skin.engine;
            engine.setColor(skin.cMenuItem);
            int i6 = i5 - 1;
            engine.drawNinePatch(Resources.IMAGE_WORLD, i2, i3, i4, i6, skin.npWhiteRectBordered);
            engine.setTransparency(200);
            engine.setColor(skin.cTextAccent);
            float f = i2;
            float f2 = i3;
            float f3 = i4;
            engine.drawImage(Resources.IMAGE_WORLD, f, f2, f3, i6, Resources.FRAME_SHOPITEM_BACKGROUND);
            engine.reset();
            engine.setScale(0.5f, 0.5f);
            engine.drawImage(Resources.IMAGE_WORLD, f, f2, f3, 70.0f, 0.5f, 0.5f, this.featureDraft.frames[0]);
            int iMillis = (int) TimeUtils.millis();
            if (iMillis < 0) {
                iMillis -= Integer.MIN_VALUE;
            }
            engine.setTransparency(Math.round(((float) Math.pow((Math.sin(((double) (((((iMillis % 5000) + (i2 * 13)) + (i3 * 29)) / 5000.0f) * 2.0f)) * 3.141592653589793d) * 0.5d) + 0.5d, 2.0d)) * 100.0f));
            engine.setColor(Colors.YELLOW);
            engine.setAdditive(255);
            engine.drawImage(Resources.IMAGE_WORLD, f, i3 - 2, f3, 70.0f, 0.5f, 0.5f, this.featureDraft.frames[0]);
            engine.setAdditive(0);
            Color color = Colors.WHITE;
            engine.setColor(color);
            engine.setTransparency(255);
            engine.setScale(1.0f, 1.0f);
            engine.setColor(color);
            if (this.popular) {
                engine.setColor(Colors.CYAN);
                engine.drawText(skin.fontSmall, DiamondShopDialog.this.translator.translate(2596), i2 + 2, i3 + 2);
            }
            String str = StringFormatter.format(DiamondShopDialog.this.translator.translate(2553), Localizer.localizeDiamonds(this.featureDraft.diamonds.get()));
            Font font = skin.fontDefault;
            Color color2 = Colors.BLACK;
            engine.setColor(color2);
            engine.setTransparency(120);
            float f4 = (i4 / 2) + i2;
            float f5 = i3 + 3;
            engine.drawNinePatch(Resources.IMAGE_WORLD, (f4 - (font.getWidth(str) / 2.0f)) - 2.0f, f5, font.getWidth(str) + 4.0f, font.getHeight(str), skin.npWhiteRectBordered);
            engine.setColor(color);
            engine.setTransparency(255);
            Drawing.getInstance().drawShadowedText(str, f4, f5, font, color2, engine, 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            engine.setColor(color);
            GoldButton goldButton = this.cmd;
            goldButton.setPosition((i4 - goldButton.getWidth()) / 2, this.height - 28);
            this.cmd.setText(this.featureDraft.formattedPrice);
            this.cmd.draw(i2, i3);
            FeatureDraft featureDraft = this.oldPriceDraft;
            if (featureDraft != null) {
                String str2 = featureDraft.formattedPrice;
                Font font2 = skin.fontSmall;
                engine.setColor(color);
                engine.setTransparency(100);
                float f6 = (i2 + i4) - 6;
                engine.drawText(font2, str2, f6, i3 + 14, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                Drawing.getInstance().drawLine(f6 - font2.getWidth(str2), i3 + 22, f6, i3 + 18, 1.0f, engine);
                engine.setColor(color);
                engine.setTransparency(255);
            }
            GoldButton goldButton2 = this.cmd;
            goldButton2.setPosition((i2 - goldButton2.getParent().getAbsoluteX()) + ((i4 - this.cmd.getWidth()) / 2), ((i3 - this.cmd.getParent().getAbsoluteY()) + this.height) - 26);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            super.onClick(i, i2);
            String str = Features.getInstance().isProbablyTestUser() ? " (TEST)" : "";
            InAppHandler inAppHandler = InAppHandler.getInstance();
            final Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.ui.DiamondShopDialog$BuyItem$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DiamondShopDialog.this.setVisible(false);
                }
            };
            if (this.featureDraft.isPurchased()) {
                if (inAppHandler.consume(this.featureDraft)) {
                    runnable.run();
                    return;
                }
                return;
            }
            TheoTown.analytics.logEvent("IAP", "Request IAP " + this.featureDraft.id + str, "Has " + GameHandler.getInstance().getDiamonds() + " diamonds");
            inAppHandler.requestPurchase(this.featureDraft, new Setter() { // from class: info.flowersoft.theotown.ui.DiamondShopDialog$BuyItem$$ExternalSyntheticLambda1
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    runnable.run();
                }
            }, false);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return this.height;
        }
    }

    public static class RedeemCodeResult {
        public int diamonds;
        public String errorMessage;
        public boolean successful;

        public RedeemCodeResult() {
        }
    }

    public boolean isFriendInvitationsActive() {
        return !TheoTown.PREMIUM && TheoTown.runtimeFeatures.supportsShareText() && this.invitationsConfig.optBoolean("active");
    }

    public String allocateFriendInvitationURL() {
        String strGenerateRandomString = RandomUtil.generateRandomString(8);
        synchronized (this.invitationIds) {
            this.invitationIds.add(strGenerateRandomString);
            this.invitationTimes.add(Long.valueOf(InternetTime.getInstance().getTime()));
            save();
        }
        TheoTown.analytics.logEvent("Invitation", "Alloc", "" + getRedeemedFriendInvitations());
        return this.invitationsConfig.optString("base url", "https://theotown.com/share?id=") + strGenerateRandomString;
    }

    public int getTotalFriendInvitations() {
        return this.invitationsConfig.optInt(C3522b4.i.l);
    }

    public int getDiamondsPerInvitation() {
        return this.invitationsConfig.optInt("diamonds", 10);
    }

    public int getRedeemedFriendInvitations() {
        GameHandler gameHandler = GameHandler.getInstance();
        int i = 0;
        for (int i2 = 0; i2 < getTotalFriendInvitations(); i2++) {
            if (gameHandler.isEventRedeemed(":shop:friend_invitation:" + i2)) {
                i++;
            }
        }
        return i;
    }

    public boolean redeemFriendInvitation() {
        GameHandler gameHandler = GameHandler.getInstance();
        for (int i = 0; i < getTotalFriendInvitations(); i++) {
            if (!gameHandler.isEventRedeemed(":shop:friend_invitation:" + i)) {
                gameHandler.earnDiamondsEvent(getDiamondsPerInvitation(), ":shop:friend_invitation:" + i, "friend invistaion " + i, true);
                SuccessOverlay.getInstance().addEvent(0, (double) getDiamondsPerInvitation());
                return true;
            }
        }
        return false;
    }
}
