package info.flowersoft.theotown.minigame;

import com.badlogic.gdx.utils.IntIntMap;
import com.ironsource.C3522b4;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.crossplatform.VideoAdStage;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.minigame.IdleGame;
import info.flowersoft.theotown.minigame.IdleGameDialogBuilder;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Features;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.DiamondShopDialog;
import info.flowersoft.theotown.ui.listitem.ActionListItem;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.TimeUnlockable;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.StaticGetter;

/* JADX INFO: loaded from: classes4.dex */
public class IdleGameDialogBuilder {
    public static final IntIntMap gameShifts = new IntIntMap();
    public final City city;
    public final Stapel2DGameContext context;
    public final Currency currency;
    public Dialog dialog;
    public final IdleGame game;
    public final GameStack gameStack;
    public ListBox listBox;

    public IdleGameDialogBuilder(City city, Stapel2DGameContext stapel2DGameContext, GameStack gameStack, IdleGame idleGame) {
        this.city = city;
        this.context = stapel2DGameContext;
        this.gameStack = gameStack;
        this.game = idleGame;
        this.currency = idleGame.getCurrency();
    }

    public Dialog build(Master master) {
        Dialog dialog = new Dialog(this.game.getIcon(), this.game.getName(), "", 300, Math.min(master.getHeight(), 320), master);
        this.dialog = dialog;
        dialog.setDrawBackground(true);
        this.dialog.setVisible(true);
        this.dialog.addHiddenCancelButton();
        new Label("", 0, 0, 0, 0, this.dialog.getControlLine()) { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder.1
            @Override // io.blueflower.stapel2d.gui.Label, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                int i3 = i + this.x;
                int i4 = i2 + this.y;
                int clientWidth = getClientWidth();
                int clientHeight = getClientHeight();
                Skin skin = this.skin;
                Font font = skin.fontDefault;
                engine.setColor(skin.cTextGreen);
                engine.drawText(font, Localizer.localizeBigNumber(IdleGameDialogBuilder.this.currency.getEstate(), false) + IdleGameDialogBuilder.this.currency.getUnit() + "   " + Localizer.localizeBigNumber(IdleGameDialogBuilder.this.game.getOverallIncome(), true) + IdleGameDialogBuilder.this.currency.getUnit() + "/s", i3, i4, clientWidth, clientHeight, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
                engine.setColor(Colors.WHITE);
            }
        }.fillParent();
        ListBox listBox = new ListBox(0, 0, 0, 0, this.dialog.getContentPane());
        this.listBox = listBox;
        listBox.fillParent();
        this.dialog.setOnClose(new Runnable() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                IdleGameDialogBuilder idleGameDialogBuilder = this.f$0;
                IdleGameDialogBuilder.gameShifts.put(idleGameDialogBuilder.game.getId(), (int) idleGameDialogBuilder.listBox.getShiftY());
            }
        });
        update();
        this.listBox.setShiftY(gameShifts.get(this.game.getId(), 0));
        return this.dialog;
    }

    public final void update() {
        this.dialog.setTitle(this.game.getName());
        this.listBox.removeAllItems();
        for (int i = 0; i < this.game.countStages(); i++) {
            buildItem(i);
        }
        if (this.game.countStages() < this.game.maxStageCount()) {
            buildUnlockItem(this.game.countStages());
        }
    }

    public final void buildItem(final int i) {
        ActionListItem actionListItem = new ActionListItem(this.listBox);
        actionListItem.setTitle(new Getter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda8
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return this.f$0.game.getStageTitle(i);
            }
        });
        actionListItem.setSubTitle(new Getter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda9
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return this.f$0.game.getStageSubTitle(i);
            }
        });
        actionListItem.setSubTitleColor(new StaticGetter(Resources.skin.cTextGreen));
        actionListItem.setIcon(new ActionListItem.Icon() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder.2
            @Override // info.flowersoft.theotown.ui.listitem.ActionListItem.Icon
            public int getHeight() {
                return 32;
            }

            @Override // info.flowersoft.theotown.ui.listitem.ActionListItem.Icon
            public int getWidth() {
                return 64;
            }

            @Override // info.flowersoft.theotown.ui.listitem.ActionListItem.Icon
            public void draw(Engine engine, int i2, int i3, int i4, int i5) {
                IdleGameDialogBuilder.this.game.drawStageIcon(engine, i2, i3, i4, i5, i);
            }
        });
        final Setter setter = new Setter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda10
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                this.f$0.dialog.setVisible(((Boolean) obj).booleanValue());
            }
        };
        for (int i2 = 0; i2 < this.game.countProperties(); i2++) {
            final IdleGame.Property property = this.game.getProperty(i2);
            actionListItem.addAction(property.getIcon(), property.getName(), new Runnable() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    property.onClick(i, setter);
                }
            }, (Getter<Boolean>) null, (Getter<Boolean>) null, new Getter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda12
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    IdleGame.Property property2 = property;
                    int i3 = i;
                    return Boolean.valueOf(property2.isNeeded(i3) && !property2.isReady(i3));
                }
            });
        }
        actionListItem.addAction(Resources.ICON_UPGRADE, this.game.getUpgradeTitle(i), new Runnable() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                IdleGameDialogBuilder idleGameDialogBuilder = this.f$0;
                new IdleGameStageDialogBuilder(idleGameDialogBuilder.city, idleGameDialogBuilder.context.getTranslator(), idleGameDialogBuilder.game, i, idleGameDialogBuilder.currency).build((Master) idleGameDialogBuilder.listBox.getAbsoluteParent()).setVisible(true);
            }
        }, new Getter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda14
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return Boolean.valueOf(this.f$0.game.propertiesFulfilled(i));
            }
        }, (Getter<Boolean>) null, new Getter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda15
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return IdleGameDialogBuilder.$r8$lambda$qUOyjSLgAgvhPVZ6CEPqbMy1Frs(this.f$0, i);
            }
        });
        this.listBox.addItem(actionListItem);
    }

    public static /* synthetic */ Boolean $r8$lambda$qUOyjSLgAgvhPVZ6CEPqbMy1Frs(IdleGameDialogBuilder idleGameDialogBuilder, int i) {
        Currency currency = idleGameDialogBuilder.currency;
        IdleGame idleGame = idleGameDialogBuilder.game;
        return Boolean.valueOf(currency.canSpend(idleGame.priceOfUpgrade(i, idleGame.getLevel(i))));
    }

    public final void buildUnlockItem(final int i) {
        JSONObject specificConfig = Resources.getSpecificConfig("idle game");
        final double dPriceOfStage = this.game.priceOfStage(i);
        final int iOptInt = specificConfig.optInt("ad skip min", 30);
        final TimeUnlockable stageLock = this.game.getStageLock();
        int iMax = stageLock != null ? (int) Math.max((stageLock.getRemainingTimeMS() / 1000) / 60, 0L) : 0;
        int iOptInt2 = stageLock != null ? iMax / specificConfig.optInt("min to diamond ratio") : 0;
        final Getter<Boolean> getter = new Getter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda1
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return Boolean.valueOf(this.f$0.currency.canSpend(dPriceOfStage));
            }
        };
        if (stageLock == null || TheoTown.PREMIUM) {
            ActionListItem actionListItem = new ActionListItem(this.listBox);
            actionListItem.setTitle(this.game.getUnlockTitle(i));
            actionListItem.setSubTitle(this.game.getUnlockSubTitle(i));
            actionListItem.addAction(Resources.ICON_UNLOCK, Localizer.localizeBigNumber(dPriceOfStage, false) + this.currency.getUnit(), new Runnable() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder.3
                @Override // java.lang.Runnable
                public void run() {
                    IdleGameDialogBuilder.this.currency.spend(dPriceOfStage);
                    IdleGameDialogBuilder.this.game.addStage();
                    IdleGameDialogBuilder.this.update();
                }
            }, getter, (Getter<Boolean>) null, getter);
            this.listBox.addItem(actionListItem);
            return;
        }
        final TranslationManager translator = this.context.getTranslator();
        ActionListItem actionListItem2 = new ActionListItem(this.listBox);
        actionListItem2.setIcon(Resources.ICON_LOCKED);
        actionListItem2.setTitle(new StaticGetter(translator.translate(3425) + ": " + Localizer.localizeBigNumber(dPriceOfStage, false) + " " + this.currency.getUnit()));
        actionListItem2.setTitleColor(new Getter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda2
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return IdleGameDialogBuilder.$r8$lambda$hT1eDEmK7FQifGfqc5A7Xh0MC8s(getter);
            }
        });
        actionListItem2.setSubTitle(new Getter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda3
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return IdleGameDialogBuilder.m2144$r8$lambda$cBIgChUASX3OLRn52m3g4efx8(translator, stageLock);
            }
        });
        actionListItem2.addAction(Resources.ICON_CLOCK, Localizer.localizeBigNumber(dPriceOfStage, false) + this.currency.getUnit(), new Runnable() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder.4
            @Override // java.lang.Runnable
            public void run() {
                IdleGameDialogBuilder.this.currency.spend(dPriceOfStage);
                stageLock.resume();
                IdleGameDialogBuilder.this.update();
            }
        }, getter, new Getter<Boolean>() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                return Boolean.valueOf(stageLock.isPaused());
            }
        }, getter);
        final int i2 = iMax;
        actionListItem2.addAction(Resources.ICON_DIAMOND, "" + iOptInt2, (Runnable) new AnonymousClass6(iOptInt2, stageLock, i, i2), (Getter<Boolean>) null, new Getter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda4
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                TimeUnlockable timeUnlockable = stageLock;
                return Boolean.valueOf(!timeUnlockable.isPaused());
            }
        }, true);
        final VideoAdStage videoAdStageCreate = TheoTown.videoAdStageFactory.create(this.context, "Idle_Game_Skip_Time", new VideoAdStage.AdResultHandler() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda5
            @Override // info.flowersoft.theotown.crossplatform.VideoAdStage.AdResultHandler
            public final void handle(int i3) {
                IdleGameDialogBuilder.$r8$lambda$PAxgXOsXkRxNoBKvoRhsXuDStSQ(stageLock, iOptInt, i, i2, i3);
            }
        });
        actionListItem2.addAction(Resources.ICON_PLAY_AD_VIDEO, TimeSpan.localize(((long) (-iOptInt)) * 60000), new Runnable() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder.7
            @Override // java.lang.Runnable
            public void run() {
                IdleGameDialogBuilder.this.gameStack.push(videoAdStageCreate);
            }
        }, (Getter<Boolean>) null, new Getter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda6
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return Boolean.valueOf(!stageLock.isPaused() && videoAdStageCreate.isLoaded());
            }
        }, true);
        actionListItem2.setVisibility(new Getter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda7
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return IdleGameDialogBuilder.$r8$lambda$T8Yd25D10Wj2_kV15N6d10njoAM(this.f$0, stageLock);
            }
        });
        this.listBox.addItem(actionListItem2);
    }

    public static /* synthetic */ Color $r8$lambda$hT1eDEmK7FQifGfqc5A7Xh0MC8s(Getter getter) {
        if (((Boolean) getter.get()).booleanValue()) {
            return Resources.skin.cTextGreen;
        }
        return Resources.skin.cTextRed;
    }

    /* JADX INFO: renamed from: $r8$lambda$cBIgC-hUASX3OLRn52m3-g4efx8, reason: not valid java name */
    public static /* synthetic */ String m2144$r8$lambda$cBIgChUASX3OLRn52m3g4efx8(Translator translator, TimeUnlockable timeUnlockable) {
        return translator.translate(IronSourceError.ERROR_IS_LOAD_FAILED_NO_CANDIDATES) + ": " + TimeSpan.localize(timeUnlockable.getRemainingTimeMS());
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$6, reason: invalid class name */
    public class AnonymousClass6 implements Runnable {
        public final /* synthetic */ int val$approxTimeMin;
        public final /* synthetic */ int val$diamondPrice;
        public final /* synthetic */ TimeUnlockable val$lock;
        public final /* synthetic */ int val$stage;

        public AnonymousClass6(int i, TimeUnlockable timeUnlockable, int i2, int i3) {
            this.val$diamondPrice = i;
            this.val$lock = timeUnlockable;
            this.val$stage = i2;
            this.val$approxTimeMin = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            final GameHandler gameHandler = GameHandler.getInstance();
            if (gameHandler.getDiamonds() >= this.val$diamondPrice) {
                int i = Resources.ICON_UNLOCK;
                String unlockImmediatelyTitle = IdleGameDialogBuilder.this.game.getUnlockImmediatelyTitle();
                String unlockImmediatelyText = IdleGameDialogBuilder.this.game.getUnlockImmediatelyText();
                Master master = (Master) IdleGameDialogBuilder.this.listBox.getAbsoluteParent();
                long j = this.val$diamondPrice;
                final TimeUnlockable timeUnlockable = this.val$lock;
                final int i2 = this.val$stage;
                final int i3 = this.val$approxTimeMin;
                new BuyOrVideoDialog(i, unlockImmediatelyTitle, unlockImmediatelyText, master, j, (Getter<Boolean>) new Getter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$6$$ExternalSyntheticLambda0
                    @Override // io.blueflower.stapel2d.util.Getter
                    public final Object get() {
                        return IdleGameDialogBuilder.AnonymousClass6.$r8$lambda$Qx9fIefl40tYVvrOKFcZIQcz1BY(this.f$0, timeUnlockable, gameHandler, i2, i3);
                    }
                }, (Setter<Stage>) null, IdleGameDialogBuilder.this.context, "unlock idle lane", (String) null, false).setVisible(true);
                return;
            }
            Setter setter = new Setter() { // from class: info.flowersoft.theotown.minigame.IdleGameDialogBuilder$6$$ExternalSyntheticLambda1
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    IdleGameDialogBuilder.this.gameStack.push((Stage) obj);
                }
            };
            TheoTown.analytics.logEvent("Shop", "Open", "IdleGame");
            new DiamondShopDialog((Master) IdleGameDialogBuilder.this.listBox.getAbsoluteParent(), IdleGameDialogBuilder.this.context, setter).setVisible(true);
        }

        public static /* synthetic */ Boolean $r8$lambda$Qx9fIefl40tYVvrOKFcZIQcz1BY(AnonymousClass6 anonymousClass6, TimeUnlockable timeUnlockable, GameHandler gameHandler, int i, int i2) {
            anonymousClass6.getClass();
            timeUnlockable.unlockImmediately();
            IdleGameDialogBuilder.this.update();
            if (gameHandler.getDiamonds() < 100000 && Constants.f3913VERDCHTIG == 0 && !Features.getInstance().isProbablyTestUser()) {
                TheoTown.analytics.logEvent("Unlock immediately", new String[]{C3522b4.i.q, "" + i, "time", "" + i2});
            }
            return Boolean.TRUE;
        }
    }

    public static /* synthetic */ void $r8$lambda$PAxgXOsXkRxNoBKvoRhsXuDStSQ(TimeUnlockable timeUnlockable, int i, int i2, int i3, int i4) {
        if (i4 == 0) {
            timeUnlockable.reduceWaitingTime(((long) i) * 60000);
            TheoTown.analytics.logEvent("Shorten time", new String[]{C3522b4.i.q, "" + i2, "time", "" + i3});
        }
    }

    public static /* synthetic */ Boolean $r8$lambda$T8Yd25D10Wj2_kV15N6d10njoAM(IdleGameDialogBuilder idleGameDialogBuilder, TimeUnlockable timeUnlockable) {
        idleGameDialogBuilder.getClass();
        if (timeUnlockable.isUnlocked()) {
            idleGameDialogBuilder.game.addStage();
            idleGameDialogBuilder.update();
        }
        return Boolean.TRUE;
    }
}
