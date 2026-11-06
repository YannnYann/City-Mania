package info.flowersoft.theotown.stages.gameuibuilder;

import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.ads.core.domain.AndroidInitializeBoldSDK;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.store.LightStoreQuery;
import info.flowersoft.theotown.store.StoreMode;
import info.flowersoft.theotown.store.StorePluginWrapper;
import info.flowersoft.theotown.store.StoreStage;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Builder;
import io.blueflower.stapel2d.util.Setter;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class NewPluginsHintBuilder extends Builder<CityStage.GameStageContext> {
    public static long lastShowTime;
    public static long lastUpdateTime;
    public final JSONObject beginnerConfig;
    public final int closeTime;
    public final int fetchAmount;
    public final int fetchInterval;
    public final int firstShowDelay;
    public long lastFetchTime;
    public final LightStoreQuery lightStoreQuery;
    public Gadget panel;
    public List<StorePluginWrapper> pluginWrappers;
    public final boolean showInPremium;
    public final int showInterval;
    public final int showTime;
    public long startCloseTime;
    public long startOpenTime;
    public long startTime;
    public StorePluginWrapper target;
    public final int timeoutTime;
    public final Translator translator;

    public final float easeOutBounce(float f) {
        if (f < 0.36363637f) {
            return 7.5625f * f * f;
        }
        if (f < 0.72727275f) {
            float f2 = f - 0.54545456f;
            return (7.5625f * f2 * f2) + 0.75f;
        }
        if (f < 2.5d / ((double) 2.75f)) {
            float f3 = f - 0.8181818f;
            return (7.5625f * f3 * f3) + 0.9375f;
        }
        float f4 = f - 0.95454544f;
        return (7.5625f * f4 * f4) + 0.984375f;
    }

    public NewPluginsHintBuilder(CityStage.GameStageContext gameStageContext) {
        super(gameStageContext);
        JSONObject specificConfig = Resources.getSpecificConfig("beginner");
        this.beginnerConfig = specificConfig;
        this.showTime = 1000;
        this.closeTime = 200;
        this.timeoutTime = specificConfig.optInt("plugin rec timeout sec", 10) * 1000;
        this.firstShowDelay = specificConfig.optInt("plugin rec first show delay sec", 30) * 1000;
        this.fetchInterval = specificConfig.optInt("plugin rec fetch interval sec", 720) * 1000;
        this.showInterval = specificConfig.optInt("plugin rec show interval sec", 360) * 1000;
        this.fetchAmount = specificConfig.optInt("plugin rec fetch amount", 17);
        this.showInPremium = specificConfig.optBoolean("plugin rec premium", false);
        this.translator = gameStageContext.getGameContext().getTranslator();
        this.lightStoreQuery = new LightStoreQuery(getBuilderContext().getGameContext());
        this.startTime = TimeUtils.millis();
        fetch();
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        new Gadget(0, 0, 0, 0, getBuilderContext().getGUI()) { // from class: info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.1
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                NewPluginsHintBuilder.this.update();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        long jMillis = TimeUtils.millis();
        if (jMillis - lastUpdateTime > 1000) {
            this.startTime = jMillis;
        }
        lastUpdateTime = jMillis;
        if (jMillis - this.lastFetchTime > this.fetchInterval) {
            fetch();
        }
        List<StorePluginWrapper> list = this.pluginWrappers;
        if (this.target == null && list != null) {
            this.target = list.get(Resources.RND.nextInt(list.size()));
        }
        StorePluginWrapper storePluginWrapper = this.target;
        if (this.panel != null || storePluginWrapper == null || jMillis - Math.max(lastShowTime, StoreStage.lastEnterTime) <= this.showInterval || Settings.isFirstStart || jMillis - this.startTime <= this.firstShowDelay || getBuilderContext().getCity().isTutorial()) {
            return;
        }
        this.target = null;
        build(storePluginWrapper, list);
    }

    public final void fetch() {
        this.lastFetchTime = TimeUtils.millis();
        if (this.showInPremium || !TheoTown.PREMIUM) {
            this.lightStoreQuery.fetch(StoreMode.FEATURED, 0, this.fetchAmount, new Setter<List<StorePluginWrapper>>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.2
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(List<StorePluginWrapper> list) {
                    if (list.isEmpty()) {
                        return;
                    }
                    NewPluginsHintBuilder.this.target = null;
                    NewPluginsHintBuilder.this.pluginWrappers = list;
                }
            }, new Setter<Exception>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.3
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(Exception exc) {
                    exc.printStackTrace();
                }
            });
        }
    }

    public final void build(final StorePluginWrapper storePluginWrapper, final List<StorePluginWrapper> list) {
        long jMillis = TimeUtils.millis();
        this.startOpenTime = jMillis;
        this.startCloseTime = 0L;
        lastShowTime = jMillis;
        final int i = 10;
        Panel panel = new Panel(r6.getClientWidth() - 190, i, 180, 40, getBuilderContext().getGUI()) { // from class: info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.4
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                drawChildren(i2, i3);
            }

            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                long jMillis2 = TimeUtils.millis();
                if (NewPluginsHintBuilder.this.startOpenTime != 0) {
                    float fEaseOutBounce = NewPluginsHintBuilder.this.easeOutBounce(Math.min((jMillis2 - NewPluginsHintBuilder.this.startOpenTime) / 1000.0f, 1.0f));
                    int i2 = i;
                    int i3 = this.height;
                    this.y = (i2 - i3) + Math.round(i3 * fEaseOutBounce);
                    if ((jMillis2 - NewPluginsHintBuilder.this.startOpenTime) - 1000 > NewPluginsHintBuilder.this.timeoutTime) {
                        NewPluginsHintBuilder.this.timeout();
                        return;
                    }
                    return;
                }
                if (NewPluginsHintBuilder.this.startCloseTime != 0) {
                    float fMin = Math.min((jMillis2 - NewPluginsHintBuilder.this.startCloseTime) / 200.0f, 1.0f);
                    if (fMin >= 1.0f) {
                        NewPluginsHintBuilder.this.removeInternal();
                        return;
                    }
                    this.y = i - Math.round(this.height * (fMin * fMin));
                }
            }
        };
        this.panel = panel;
        new Button(0, 0, panel.getWidth(), this.panel.getHeight(), this.panel) { // from class: info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.5
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                int i4 = this.x + i2;
                int i5 = this.y + i3;
                Skin skin = this.skin;
                skin.engine.drawNinePatch(Resources.IMAGE_WORLD, i4, i5, this.width, this.height, skin.npIndicator);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                NewPluginsHintBuilder.this.open(storePluginWrapper, list);
            }
        };
        new Panel(2, 2, 36, 36, this.panel) { // from class: info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.6
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                Engine engine = this.skin.engine;
                int i4 = this.x + i2;
                int i5 = this.y + i3;
                Image image = storePluginWrapper.getImage();
                if (image != null) {
                    Drawing.getInstance().drawRoundedFit(engine, image, i4, i5, this.width, this.height, storePluginWrapper.getFrame(), 4.0f);
                } else {
                    engine.setColor(0, 0, 0);
                    engine.drawNinePatch(Resources.IMAGE_WORLD, i4, i5, this.width, this.height, this.skin.npWhiteRect);
                    engine.setColor(255, 255, 255);
                }
            }
        }.setTouchThrough(true);
        Label label = new Label(storePluginWrapper.getTitle(), 40, 5, this.panel.getClientWidth() - 60, 15, this.panel);
        label.setColor(Colors.WHITE);
        label.setScaleToFitWidth(true);
        Label label2 = new Label(this.translator.translate(1930), 40, 20, this.panel.getClientWidth() - 45, 15, this.panel);
        label2.setFont(Resources.skin.fontSmall);
        label2.setScaleToFitWidth(true);
        label2.setColor(Colors.YELLOW);
        new IconButton(Resources.skin.fCloseButton, "", this.panel.getClientWidth() - 17, 2, 15, 15, this.panel) { // from class: info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.7
            @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                drawChildren(i2, i3);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                NewPluginsHintBuilder.this.close();
            }
        }.getIconGadget().setScale(0.5f);
    }

    public final void open(StorePluginWrapper storePluginWrapper, List<StorePluginWrapper> list) {
        StoreStage storeStage = new StoreStage(getBuilderContext().getGameContext(), getBuilderContext().getCity());
        storeStage.configureMode(StoreMode.FEATURED);
        storeStage.configureLoaded(storePluginWrapper, list);
        getBuilderContext().visitStage(storeStage);
        closeInternal();
        TheoTown.analytics.logEvent("Recommend Plugin", "Open", "");
    }

    public final void timeout() {
        closeInternal();
        TheoTown.analytics.logEvent("Recommend Plugin", AndroidInitializeBoldSDK.MSG_TIMEOUT, "");
    }

    public final void close() {
        closeInternal();
        TheoTown.analytics.logEvent("Recommend Plugin", "Close", "");
    }

    public final void closeInternal() {
        this.lightStoreQuery.clearTextureCache();
        this.startOpenTime = 0L;
        this.startCloseTime = TimeUtils.millis();
    }

    public final void removeInternal() {
        Gadget gadget = this.panel;
        if (gadget != null) {
            gadget.getParent().removeChild(this.panel);
            this.panel = null;
        }
    }
}
