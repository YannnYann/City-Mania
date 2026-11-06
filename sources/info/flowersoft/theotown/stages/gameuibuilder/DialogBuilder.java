package info.flowersoft.theotown.stages.gameuibuilder;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.InAppHandler;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.People;
import info.flowersoft.theotown.city.components.QuestionListener;
import info.flowersoft.theotown.city.components.ResourceNeededListener;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultIdleGame;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.minigame.Currency;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundPlayer;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.stages.CityInfoStage;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.stages.cityinfo.LoanCityInfo;
import info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.PlayVideoAdButton;
import info.flowersoft.theotown.ui.SpendDiamondsButton;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONObject;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Builder;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.SessionLogger;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class DialogBuilder extends Builder<CityStage.GameStageContext> {
    public static final long START_MS = TimeUtils.millis();
    public static boolean showedLightRateDialog = false;
    public final JSONObject beginnerCfg;
    public City city;
    public final Stapel2DGameContext context;
    public ResourceNeededListener diamondNeededListener;
    public final Master gui;
    public Gadget hidden;
    public ResourceNeededListener moneyNeededListener;
    public QuestionListener questionListener;
    public Dialog rateDialog;

    public final void rateOutcome(String str) {
        SessionLogger.logGeneric("rate_" + str);
    }

    public DialogBuilder(CityStage.GameStageContext gameStageContext) {
        super(gameStageContext);
        this.beginnerCfg = Resources.getSpecificConfig("beginner");
        this.gui = getBuilderContext().getGUI();
        this.context = getBuilderContext().getGameContext();
    }

    public final Master getMaster() {
        return (Master) this.hidden.getAbsoluteParent();
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        final TranslationManager translator = this.context.getTranslator();
        this.hidden = new Gadget(0, 0, 0, 0, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.1
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                DialogBuilder.this.update();
            }
        };
        this.city = getBuilderContext().getCity();
        final Setter setter = new Setter() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                this.f$0.getBuilderContext().visitStage((Stage) obj);
            }
        };
        this.questionListener = new QuestionListener() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.2
            @Override // info.flowersoft.theotown.city.components.QuestionListener
            public void ask(int i, String str, String str2, Runnable runnable, Runnable runnable2) {
                Dialog dialog = new Dialog(i, str, str2, Sdk.SDKError.Reason.AD_LOAD_FAIL_PLACEMENT_ID_MISMATCH_VALUE, 120, DialogBuilder.this.getMaster());
                dialog.addButton(Resources.ICON_CANCEL, translator.translate(1477), true, runnable2);
                dialog.addButton(Resources.ICON_OK, translator.translate(2447), false, runnable).setGolden(true);
                dialog.distributeButtons();
                dialog.setVisible(true);
            }

            @Override // info.flowersoft.theotown.city.components.QuestionListener
            public void ask(int i, int i2, int i3, Runnable runnable, Runnable runnable2) {
                ask(i, translator.translate(i2), translator.translate(i3), runnable, runnable2);
            }
        };
        this.diamondNeededListener = new ResourceNeededListener() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda1
            @Override // info.flowersoft.theotown.city.components.ResourceNeededListener
            public final void beg(long j, Runnable runnable, String str, boolean z) {
                DialogBuilder.$r8$lambda$MwkHGqcbTmVMBo0MnqvrEuvHfx8(this.f$0, translator, j, runnable, str, z);
            }
        };
        this.moneyNeededListener = new ResourceNeededListener() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda2
            @Override // info.flowersoft.theotown.city.components.ResourceNeededListener
            public final void beg(long j, Runnable runnable, String str, boolean z) {
                DialogBuilder.$r8$lambda$V5mZGW6xLbZ8P0cK2OdmPpp4pBI(this.f$0, translator, setter, j, runnable, str, z);
            }
        };
        Dialog dialog = new Dialog(Resources.PEOPLE_OFFICEWORKER, translator.translate(2841), translator.translate(612), 260, 140, this.gui, translator) { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.4
            public final /* synthetic */ Translator val$translator;

            {
                this.val$translator = translator;
                addButton(Resources.ICON_CANCEL, translator.translate(674), false, new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DialogBuilder.this.rateOutcome("no_feedback");
                        TheoTown.analytics.logEvent("RateDialog", "No feedback", "");
                    }
                });
                addButton(Resources.ICON_EDIT, translator.translate(3526), false, new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.4.2
                    @Override // java.lang.Runnable
                    public void run() {
                        DialogBuilder.this.rateOutcome("write_feedback");
                        TheoTown.analytics.logEvent("RateDialog", "Write feedback", "");
                        TheoTown.runtimeFeatures.openURL("mailto:info@theotown.com");
                    }
                }).setGolden(true);
                distributeButtons();
            }
        };
        boolean zOptBoolean = this.beginnerCfg.optBoolean("legacyRateUsIcon", false);
        boolean zOptBoolean2 = this.beginnerCfg.optBoolean("legacyRateUsTitle", false);
        boolean zOptBoolean3 = this.beginnerCfg.optBoolean("legacyRateUsText", false);
        boolean zOptBoolean4 = this.beginnerCfg.optBoolean("legacyRateUsNo", false);
        boolean zOptBoolean5 = this.beginnerCfg.optBoolean("legacyRateUsYes", false);
        this.rateDialog = new AnonymousClass5(zOptBoolean ? Resources.PEOPLE_SERVANT : Resources.PEOPLE_GIRL, translator.translate(zOptBoolean2 ? 156 : 2308), translator.translate(zOptBoolean3 ? 2960 : EventTypeExtended.EVENT_TYPE_EXTENDED_IMPRESSION_OPPORTUNITY_VALUE), 260, 120, this.gui, translator, zOptBoolean4, dialog, this.beginnerCfg.optBoolean("legacyRateUsYesIcon", false), zOptBoolean5);
        new AnonymousClass6(0, 0, 0, 0, this.gui, translator, setter);
    }

    public static /* synthetic */ void $r8$lambda$MwkHGqcbTmVMBo0MnqvrEuvHfx8(DialogBuilder dialogBuilder, Translator translator, long j, final Runnable runnable, String str, boolean z) {
        dialogBuilder.getClass();
        if (!TheoTown.PREMIUM) {
            Getter getter = new Getter() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda3
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return DialogBuilder.m2327$r8$lambda$zPnsfRFLTrJvgPMkGxLGGbXngw(runnable);
                }
            };
            BuyOrVideoDialog buyOrVideoDialog = new BuyOrVideoDialog(Resources.ICON_DIAMOND, translator.translate(415), translator.translate(2523), dialogBuilder.getMaster(), (int) j, (Getter<Boolean>) getter, (Setter<Stage>) null, dialogBuilder.getBuilderContext().getGameContext(), "Diamonds needed for " + str, (String) null, z);
            buyOrVideoDialog.setVisible(true);
            buyOrVideoDialog.setCanCloseViaBackground(false);
            return;
        }
        if (TheoTown.DEBUG) {
            TheoTown.runtimeFeatures.showToast("Beg for diamonds");
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$zPnsfRFLTrJvgPMkGxLGGb-Xngw, reason: not valid java name */
    public static /* synthetic */ Boolean m2327$r8$lambda$zPnsfRFLTrJvgPMkGxLGGbXngw(Runnable runnable) {
        runnable.run();
        return Boolean.TRUE;
    }

    public static /* synthetic */ void $r8$lambda$V5mZGW6xLbZ8P0cK2OdmPpp4pBI(final DialogBuilder dialogBuilder, Translator translator, final Setter setter, long j, final Runnable runnable, String str, boolean z) {
        final DefaultBudget defaultBudget = (DefaultBudget) dialogBuilder.city.getComponent(0);
        final int diamondPriceForMoney = ((DefaultBudget) dialogBuilder.city.getComponent(0)).getDiamondPriceForMoney(j);
        double d = j;
        final long jRound = Math.round(defaultBudget.getEstate() + d);
        boolean z2 = !TheoTown.PREMIUM && (dialogBuilder.city.getScenarioInfo() == null || dialogBuilder.city.getScenarioInfo().getAllowBuyMoney());
        boolean z3 = dialogBuilder.city.getScenarioInfo() == null || dialogBuilder.city.getScenarioInfo().getAllowLoans();
        if (z2) {
            Getter getter = new Getter() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda4
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return DialogBuilder.m2326$r8$lambda$VJIocmHl4rxFjgE0KCz4GbLgmg(defaultBudget, jRound, diamondPriceForMoney, runnable);
                }
            };
            Setter setter2 = new Setter() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda5
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    this.f$0.getBuilderContext().visitStage((Stage) obj);
                }
            };
            BuyOrVideoDialog buyOrVideoDialog = new BuyOrVideoDialog(Resources.ICON_MONEY, translator.translate(976), StringFormatter.format(translator.translate(1991), Localizer.localizeMoney(d)), dialogBuilder.getMaster(), diamondPriceForMoney, (Getter<Boolean>) getter, (Setter<Stage>) setter2, dialogBuilder.getBuilderContext().getGameContext(), "Need " + j + "T to build " + str, (String) null, z);
            buyOrVideoDialog.setVisible(true);
            buyOrVideoDialog.setCanCloseViaBackground(false);
        } else {
            Dialog dialog = new Dialog(Resources.ICON_MONEY, translator.translate(37), StringFormatter.format(translator.translate(1685), Localizer.localizeMoney(d)), dialogBuilder.getMaster());
            if (z3) {
                dialog.addButton(Resources.ICON_LOAN, translator.translate(3379), false, new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.3
                    @Override // java.lang.Runnable
                    public void run() {
                        CityInfoStage cityInfoStage = new CityInfoStage(DialogBuilder.this.city, DialogBuilder.this.context);
                        cityInfoStage.selectCityInfo(new LoanCityInfo());
                        setter.set(cityInfoStage);
                    }
                });
            }
            dialog.addButton(Resources.ICON_OK, translator.translate(1899), true, null).setGolden(true).addSensitiveKey(66);
            dialog.distributeButtons();
            dialog.setVisible(true);
        }
        if (TheoTown.PREMIUM && TheoTown.DEBUG) {
            TheoTown.runtimeFeatures.showToast("Beg for money");
            defaultBudget.earn(jRound - defaultBudget.getEstate(), "beg for money");
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$VJIocmHl4rxFjgE0KCz4-GbLgmg, reason: not valid java name */
    public static /* synthetic */ Boolean m2326$r8$lambda$VJIocmHl4rxFjgE0KCz4GbLgmg(DefaultBudget defaultBudget, long j, int i, Runnable runnable) {
        defaultBudget.earn(j - defaultBudget.getEstate(), "money needed dialog " + i);
        runnable.run();
        return Boolean.TRUE;
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$5, reason: invalid class name */
    public class AnonymousClass5 extends Dialog {
        public final /* synthetic */ Dialog val$feedbackDialog;
        public final /* synthetic */ boolean val$legacyRateUsNo;
        public final /* synthetic */ boolean val$legacyRateUsYes;
        public final /* synthetic */ boolean val$legacyRateUsYesIcon;
        public final /* synthetic */ Translator val$translator;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(int i, String str, String str2, int i2, int i3, Master master, Translator translator, boolean z, final Dialog dialog, boolean z2, boolean z3) {
            super(i, str, str2, i2, i3, master);
            this.val$translator = translator;
            this.val$legacyRateUsNo = z;
            this.val$feedbackDialog = dialog;
            this.val$legacyRateUsYesIcon = z2;
            this.val$legacyRateUsYes = z3;
            setCanCloseViaBackground(false);
            addHiddenCancelButton(new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogBuilder.AnonymousClass5.$r8$lambda$p5upZy_wcu8Thvkhw22ZZxMAZec(this.f$0);
                }
            });
            addButton(Resources.ICON_CANCEL, translator.translate(z ? 780 : 3496), false, new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$5$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogBuilder.AnonymousClass5.m2328$r8$lambda$WepC8g4NKRcri1HVeSrr7fXdGI(this.f$0, dialog);
                }
            });
            addButton(z2 ? Resources.ICON_OK : Resources.ICON_STAR, translator.translate(z3 ? 3422 : 3053), false, new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$5$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    DialogBuilder.AnonymousClass5.$r8$lambda$RQ_1_VHQBPeJtSWdje_Exznde6w(this.f$0);
                }
            }).setGolden(true);
            distributeButtons();
        }

        public static /* synthetic */ void $r8$lambda$p5upZy_wcu8Thvkhw22ZZxMAZec(AnonymousClass5 anonymousClass5) {
            anonymousClass5.getClass();
            TheoTown.analytics.logEvent("RateDialog", "Later", "");
            TaskManager.getInstance().TASK_RATE.completeForSeconds(((long) DialogBuilder.this.beginnerCfg.optInt("rate later vanish min", 4200)) * 60);
            DialogBuilder.this.rateOutcome("later");
        }

        /* JADX INFO: renamed from: $r8$lambda$WepC8g4NKRcri1HVeS-rr7fXdGI, reason: not valid java name */
        public static /* synthetic */ void m2328$r8$lambda$WepC8g4NKRcri1HVeSrr7fXdGI(AnonymousClass5 anonymousClass5, Dialog dialog) {
            anonymousClass5.getClass();
            TheoTown.analytics.logEvent("RateDialog", "Don't like it", "");
            TaskManager.getInstance().TASK_RATE.complete();
            DialogBuilder.this.rateOutcome("dont_like");
            if (DialogBuilder.this.beginnerCfg.optBoolean("rate show feedback dialog", true)) {
                dialog.setVisible(true);
            }
        }

        public static /* synthetic */ void $r8$lambda$RQ_1_VHQBPeJtSWdje_Exznde6w(AnonymousClass5 anonymousClass5) {
            anonymousClass5.getClass();
            TheoTown.analytics.logEvent("RateDialog", "Like", "");
            TaskManager.getInstance().TASK_RATE.complete();
            DialogBuilder.this.rateOutcome("like");
            TheoTown.runtimeFeatures.rateGame();
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$6, reason: invalid class name */
    public class AnonymousClass6 extends Gadget {
        public final DefaultBudget budget;
        public boolean isOpen;
        public final /* synthetic */ Setter val$stageVisitor;
        public final /* synthetic */ Translator val$translator;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass6(int i, int i2, int i3, int i4, Gadget gadget, Translator translator, Setter setter) {
            super(i, i2, i3, i4, gadget);
            this.val$translator = translator;
            this.val$stageVisitor = setter;
            this.budget = (DefaultBudget) DialogBuilder.this.city.getComponent(0);
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public void onUpdate() {
            double d;
            int i;
            int i2;
            PlayVideoAdButton playVideoAdButton;
            boolean z;
            JSONObject jSONObject;
            final AnonymousClass6 anonymousClass6 = this;
            if (TheoTown.PREMIUM) {
                return;
            }
            long lastSimulationTimestamp = DialogBuilder.this.city.getLastSimulationTimestamp();
            final long jCurrentTimeMillis = System.currentTimeMillis();
            DialogBuilder.this.city.setLastSimulationTimestamp(jCurrentTimeMillis);
            long j = jCurrentTimeMillis - lastSimulationTimestamp;
            long j2 = 0;
            int iMax = (int) Math.max(j / Constants.MS_PER_IDLE_DAY(), 0L);
            JSONObject jSONObjectOptJSONObject = Resources.CONFIG.optJSONObject("idlecash");
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
            }
            JSONObject jSONObject2 = jSONObjectOptJSONObject;
            if (j >= 60000) {
                d = 0.0d;
                long absoluteDay = ((DefaultDate) DialogBuilder.this.city.getComponent(1)).getAbsoluteDay();
                i = 0;
                i2 = 0;
                for (Building building : DialogBuilder.this.city.getBuildings()) {
                    long j3 = j2;
                    if (building != null && building.getDraft().idleBuildTime) {
                        if (building.inConstruction()) {
                            building.setBuildDay(building.getBuildDay() - ((long) iMax));
                            if (building.getDaysBuilt(absoluteDay) >= 0.0d) {
                                i++;
                            }
                        } else if (building.hasPendingUpgrades()) {
                            building.skipPendingUpgradeDays(iMax);
                            if (building.getPendingUpgradeDaysLeft(absoluteDay) <= 0.0d) {
                                i2++;
                            }
                        }
                    }
                    j2 = j3;
                }
            } else {
                d = 0.0d;
                i = 0;
                i2 = 0;
            }
            long j4 = j2;
            if (j < 600000 || lastSimulationTimestamp == j4 || DialogBuilder.this.city.getGameMode().hasInfinityMoney() || DialogBuilder.this.city.isReadonly()) {
                DialogBuilder.this.city.setLastSimulationTimestamp(jCurrentTimeMillis);
            } else {
                int iMax2 = Math.max((int) ((j / 1000) / 2), 0);
                float fOptDouble = (float) jSONObject2.optDouble("c", 10.0d);
                float fOptDouble2 = (float) jSONObject2.optDouble("c2", 2000.0d);
                final int iOptInt = jSONObject2.optInt("close delay ms", 100);
                double d2 = fOptDouble;
                double d3 = iMax2;
                final long jRound = Math.round(((double) fOptDouble2) * Math.log1p(anonymousClass6.budget.getMonthlyIncome() / d2) * d2 * Math.log1p(((d3 / 30.0d) / 20.0d) / d2));
                boolean z2 = jRound > j4;
                DefaultIdleGame defaultIdleGame = (DefaultIdleGame) DialogBuilder.this.city.getComponent(20);
                final List<Currency> currencies = defaultIdleGame.getCurrencies();
                final ArrayList arrayList = new ArrayList();
                for (int i3 = 0; i3 < currencies.size(); i3++) {
                    double income = defaultIdleGame.getIncome(currencies.get(i3)) * 0.1d * d3;
                    arrayList.add(Double.valueOf(income));
                    z2 |= income > d;
                }
                if (!z2 || !Tutorial.isVisible(Tutorial.FLAG_IDLE_CASH)) {
                    DialogBuilder.this.city.setLastSimulationTimestamp(jCurrentTimeMillis);
                } else if (!anonymousClass6.isOpen) {
                    String string = StringFormatter.format(anonymousClass6.val$translator.translate(3043), DialogBuilder.this.city.getName(), Localizer.localizeMoney(jRound, true)) + "\n";
                    int i4 = 0;
                    while (i4 < currencies.size()) {
                        if (((Double) arrayList.get(i4)).doubleValue() > d) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(string);
                            jSONObject = jSONObject2;
                            sb.append(Localizer.localizeBigNumber(((Double) arrayList.get(i4)).doubleValue(), true));
                            sb.append(" ");
                            sb.append(currencies.get(i4).getUnit());
                            sb.append("\n");
                            string = sb.toString();
                        } else {
                            jSONObject = jSONObject2;
                        }
                        i4++;
                        jSONObject2 = jSONObject;
                    }
                    JSONObject jSONObject3 = jSONObject2;
                    if (i > 0) {
                        string = StringFormatter.format(anonymousClass6.val$translator.translate(1692), Integer.valueOf(i), Integer.valueOf(i2)) + " " + string;
                    }
                    final Dialog dialog = new Dialog(Resources.ICON_MONEY, anonymousClass6.val$translator.translate(2680), string, 300, 180, (Master) anonymousClass6.getAbsoluteParent()) { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.6.1
                        @Override // info.flowersoft.theotown.ui.Dialog
                        public void onCleanup() {
                            super.free();
                            AnonymousClass6.this.isOpen = false;
                        }

                        @Override // info.flowersoft.theotown.ui.Dialog
                        public boolean isCloseButtonVisible() {
                            return super.isCloseButtonVisible() && TimeUtils.millis() - this.showTime >= ((long) iOptInt);
                        }
                    };
                    anonymousClass6 = this;
                    final Setter setter = new Setter() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$6$$ExternalSyntheticLambda0
                        @Override // io.blueflower.stapel2d.util.Setter
                        public final void set(Object obj) {
                            DialogBuilder.AnonymousClass6.$r8$lambda$k73vZVA0qmWdWootAxZ26Z4o538(this.f$0, jRound, currencies, arrayList, jCurrentTimeMillis, dialog, (Boolean) obj);
                        }
                    };
                    if (jSONObject3.optBoolean("hidden cancel button")) {
                        dialog.addHiddenCancelButton(new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$6$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                setter.set(Boolean.FALSE);
                            }
                        });
                        dialog.setCanCloseViaBackground(false);
                    }
                    if (jSONObject3.optBoolean("show forfait")) {
                        dialog.addButton(Resources.ICON_TRASH, anonymousClass6.val$translator.translate(3341), false, new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.6.2
                            @Override // java.lang.Runnable
                            public void run() {
                                setter.set(Boolean.FALSE);
                            }
                        });
                    }
                    if (jSONObject3.optBoolean("show ad")) {
                        playVideoAdButton = new PlayVideoAdButton(anonymousClass6.val$translator.translate(1346), dialog.getControlLine().getThirdPart(), new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.6.3
                            @Override // java.lang.Runnable
                            public void run() {
                                dialog.setVisible(false);
                            }
                        }, new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.6.4
                            @Override // java.lang.Runnable
                            public void run() {
                                setter.set(Boolean.TRUE);
                            }
                        }, anonymousClass6.val$stageVisitor, "Idle_Cash_Collect", DialogBuilder.this.context);
                        playVideoAdButton.setGolden(true);
                    } else {
                        playVideoAdButton = null;
                    }
                    int iOptInt2 = jSONObject3.optInt("diamond price");
                    SpendDiamondsButton spendDiamondsButton = iOptInt2 > 0 ? new SpendDiamondsButton(0, 0, dialog.getControlLine().getThirdPart(), DialogBuilder.this.context, new Getter<Boolean>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.6.5
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // io.blueflower.stapel2d.util.Getter
                        public Boolean get() {
                            Setter setter2 = setter;
                            Boolean bool = Boolean.TRUE;
                            setter2.set(bool);
                            return bool;
                        }
                    }, iOptInt2, 0, (Setter<Stage>) anonymousClass6.val$stageVisitor, "idle cash") : null;
                    if (playVideoAdButton == null || spendDiamondsButton == null) {
                        z = true;
                    } else {
                        spendDiamondsButton.setGolden(false);
                        int clientWidth = dialog.getControlLine().getClientWidth() / 2;
                        spendDiamondsButton.setMaxWidth(clientWidth);
                        playVideoAdButton.setMaxWidth(clientWidth);
                        spendDiamondsButton.setWidth(clientWidth);
                        z = true;
                        playVideoAdButton.setWidth(clientWidth - 1);
                    }
                    anonymousClass6.isOpen = z;
                    dialog.setVisible(z);
                }
            }
            super.onUpdate();
        }

        public static /* synthetic */ void $r8$lambda$k73vZVA0qmWdWootAxZ26Z4o538(AnonymousClass6 anonymousClass6, long j, List list, List list2, long j2, Dialog dialog, Boolean bool) {
            anonymousClass6.getClass();
            if (bool.booleanValue()) {
                double d = j;
                anonymousClass6.budget.earn(d, "welcome back idle cash");
                for (int i = 0; i < list.size(); i++) {
                    ((Currency) list.get(i)).spend(-((Double) list2.get(i)).doubleValue());
                }
                SoundPlayer.getInstance().play(Resources.SOUND_MONEY, SoundType.UI);
                SuccessOverlay.getInstance().addEvent(1, d);
            }
            DialogBuilder.this.city.setLastSimulationTimestamp(j2);
            anonymousClass6.isOpen = false;
            dialog.setVisible(false);
            TheoTown.analytics.logEvent("Take idle cash", bool.booleanValue() ? "take" : "not take", "" + j);
        }
    }

    public final void update() {
        Tool tool = (Tool) this.city.getComponent(13);
        tool.setQuestionListener(this.questionListener);
        tool.setMoneyNeededListener(this.moneyNeededListener);
        tool.setDiamondNeededListener(this.diamondNeededListener);
        if (getBuilderContext().isDialogOpen()) {
            return;
        }
        if (GameHandler.getInstance().getDiamonds() > this.beginnerCfg.optInt("rate max diamonds", 1000)) {
            TaskManager.getInstance().TASK_RATE.complete();
        }
        long jMillis = TimeUtils.millis() - START_MS;
        long jMillis2 = TimeUtils.millis() - getBuilderContext().lastEnterMS;
        Application.ApplicationType type = Gdx.app.getType();
        if (!TaskManager.getInstance().TASK_RATE.isCompleted() && !this.city.isTutorial() && !TheoTown.PREMIUM && !this.city.isReadonly() && ((type == Application.ApplicationType.Android || type == Application.ApplicationType.iOS || (type == Application.ApplicationType.Desktop && this.beginnerCfg.optBoolean("rate on desktop fix", false))) && ((People) this.city.getComponent(9)).getPeople() > this.beginnerCfg.optInt("rate min people", 100) && Settings.playTimeSeconds >= ((long) this.beginnerCfg.optInt("rate min play min", 10)) * 60 && jMillis2 > ((long) this.beginnerCfg.optInt("rate min build min", 1)) * 60000)) {
            this.rateDialog.setVisible(true);
        } else if (!showedLightRateDialog && Settings.playTimeSeconds >= this.beginnerCfg.optLong("rate light play min", 5L) * 60 && jMillis >= this.beginnerCfg.optLong("rate light start min", 10L) * 60000 && jMillis2 >= this.beginnerCfg.optLong("rate light min build min", 1L) * 60000 && !Gdx.input.isTouched()) {
            showedLightRateDialog = true;
            TheoTown.runtimeFeatures.rateGameLight();
        }
        if (TheoTown.PREMIUM) {
            return;
        }
        for (int i = 0; i < Drafts.FEATURES.size(); i++) {
            FeatureDraft featureDraft = Drafts.FEATURES.get(i);
            if (featureDraft.consumable && featureDraft.isPurchased()) {
                if (featureDraft.consumeCtr >= 3 && TimeUtils.millis() - featureDraft.lastConsumed < 1000) {
                    Constants.f3913VERDCHTIG = 148;
                }
                GameHandler.getInstance().buyFeature(featureDraft);
                InAppHandler.getInstance().consume(featureDraft);
            }
        }
    }
}
