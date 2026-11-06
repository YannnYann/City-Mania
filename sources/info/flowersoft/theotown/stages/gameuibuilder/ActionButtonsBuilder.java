package info.flowersoft.theotown.stages.gameuibuilder;

import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.mechanics.RewardManager;
import info.flowersoft.theotown.resources.AdReward;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.stages.BuildingPackOfferStage;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.stages.StarterPackOfferStage;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.ui.AdRewardDialog;
import info.flowersoft.theotown.ui.DailyPresentDialog;
import info.flowersoft.theotown.util.SpecialOfferManager;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Builder;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class ActionButtonsBuilder extends Builder<CityStage.GameStageContext> {
    public final JSONObject beginnerConfig;
    public final JSONObject config;
    public final Master gui;

    public ActionButtonsBuilder(CityStage.GameStageContext gameStageContext) {
        super(gameStageContext);
        this.config = Resources.getSpecificConfig("action buttons builder");
        this.beginnerConfig = Resources.getSpecificConfig("beginner");
        this.gui = getBuilderContext().getGUI();
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        Panel panel = getBuilderContext().areaPanel;
        final Setter<Stage> setter = new Setter<Stage>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder.1
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Stage stage) {
                ((CityStage.GameStageContext) ActionButtonsBuilder.this.getBuilderContext()).visitStage(stage);
            }
        };
        City city = getBuilderContext().getCity();
        int y = panel.getY() + 80;
        int iOptInt = this.config.optInt("size");
        float fOptDouble = (float) this.config.optDouble("scale");
        if (fOptDouble < 0.5f || fOptDouble > 2.0f) {
            fOptDouble = 1.0f;
        }
        final float f = fOptDouble;
        final RewardManager rewardManager = GameHandler.getInstance().getRewardManager();
        if (TheoTown.PREMIUM) {
            return;
        }
        new Button((panel.getX() + panel.getWidth()) - iOptInt, y, iOptInt, iOptInt, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder.2
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                new DailyPresentDialog(rewardManager.getRewardDay(), (Master) getAbsoluteParent(), ((CityStage.GameStageContext) ActionButtonsBuilder.this.getBuilderContext()).getGameContext().getTranslator(), setter, ((CityStage.GameStageContext) ActionButtonsBuilder.this.getBuilderContext()).getGameContext()).setVisible(true);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                Drawing.getInstance().drawGadgetCircle(this, i, i2);
                float fCos = ((((float) Math.cos(((TimeUtils.millis() % 1600) * 6.283185307179586d) / 1600.0d)) * 0.1f) + 0.9f) * f;
                engine.setScale(fCos, fCos);
                engine.drawImage(Resources.IMAGE_WORLD, this.x + i, this.y + i2, this.width, this.height, 0.5f, 0.5f, Resources.ICON_DAILY_AWARD);
                Drawing.getInstance().drawHalo(this.x + i + (this.width / 2), this.y + i2 + (this.height / 2), engine);
                engine.setScale(1.0f, 1.0f);
                Drawing.getInstance().drawAnimatedGadgetCircle(this, i, i2);
                if (Tutorial.isMarked(Tutorial.FLAG_PRESENT)) {
                    Drawing.getInstance().drawArrow(i, i2, this, 3);
                }
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                if (rewardManager.isTimeForReward() && GameHandler.getInstance().canEarnDiamonds() && ActionButtonsBuilder.this.isActionlistVisible() && Tutorial.isVisible(Tutorial.FLAG_PRESENT)) {
                    return ActionButtonsBuilder.this.beginnerConfig.optLong("hide present minutes") * 60 <= Settings.playTimeSeconds || GameHandler.getInstance().getDiamonds() >= 50;
                }
                return false;
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isEnabled() {
                return isVisible();
            }
        }.setId("cmdPresent");
        final AdReward adReward = new AdReward();
        new Button((panel.getX() + panel.getWidth()) - iOptInt, y, iOptInt, iOptInt, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder.3
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                new AdRewardDialog(setter, (Master) getAbsoluteParent(), ((CityStage.GameStageContext) ActionButtonsBuilder.this.getBuilderContext()).getGameContext()).setVisible(true);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                Drawing.getInstance().drawGadgetCircle(this, i, i2);
                float fCos = ((((float) Math.cos(((TimeUtils.millis() % 1600) * 6.283185307179586d) / 1600.0d)) * 0.1f) + 1.0f) * f;
                engine.setScale(fCos, fCos);
                engine.drawImage(Resources.IMAGE_WORLD, this.x + i, this.y + i2, this.width, this.height, 0.5f, 0.5f, Resources.ICON_GOLDEN_PRESENT);
                engine.setScale(fCos, fCos);
                Drawing.getInstance().drawHalo(this.x + i + (this.width / 2), this.y + i2 + (this.height / 2), engine);
                engine.setScale(1.0f, 1.0f);
                Drawing.getInstance().drawOutlinedText("" + adReward.getAvailableCount(), this.x + i + this.width, this.y + i2, this.skin.fontSmall, Colors.BLACK, engine, 1.2f, -0.2f);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                if (!rewardManager.isTimeForReward() && GameHandler.getInstance().canEarnDiamonds() && adReward.isAvailable() && ActionButtonsBuilder.this.isActionlistVisible() && Tutorial.isVisible(Tutorial.FLAG_PRESENT)) {
                    return ActionButtonsBuilder.this.beginnerConfig.optLong("hide present minutes") * 60 <= Settings.playTimeSeconds || GameHandler.getInstance().getDiamonds() >= 50;
                }
                return false;
            }
        }.setId("cmdAdReward");
        int i = y + iOptInt;
        SpecialOfferManager specialOfferManager = SpecialOfferManager.INSTANCE;
        final FeatureDraft starterPack = specialOfferManager.getStarterPack();
        if (starterPack != null) {
            new Button((panel.getX() + panel.getWidth()) - iOptInt, i, iOptInt, iOptInt, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder.4
                public long lastClick = 0;

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    CityStage.GameStageContext gameStageContext = (CityStage.GameStageContext) ActionButtonsBuilder.this.getBuilderContext();
                    FeatureDraft featureDraft = starterPack;
                    gameStageContext.visitStage(new StarterPackOfferStage(featureDraft.frames[0], featureDraft, ((CityStage.GameStageContext) ActionButtonsBuilder.this.getBuilderContext()).getGameContext()));
                    this.lastClick = InternetTime.getInstance().getTime();
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i2, int i3) {
                    Engine engine = this.skin.engine;
                    Drawing.getInstance().drawGadgetCircle(this, i2, i3);
                    float f2 = f;
                    engine.setScale(f2, f2);
                    engine.drawImage(Resources.IMAGE_WORLD, this.x + i2, this.y + i3, this.width, this.height, 0.5f, 0.5f, starterPack.frames[0]);
                    engine.setScale(1.0f, 1.0f);
                    if (InternetTime.getInstance().getTime() - this.lastClick > 600000) {
                        Drawing.getInstance().drawHalo(this.x + i2 + (this.width / 2), this.y + i3 + (this.height / 2), engine);
                    }
                    if (Tutorial.isMarked(Tutorial.FLAG_OFFER)) {
                        Drawing.getInstance().drawArrow(i2, i3, this, 3);
                    }
                }

                @Override // io.blueflower.stapel2d.gui.Gadget
                public boolean isVisible() {
                    return SpecialOfferManager.INSTANCE.canBeOffered(starterPack) && ActionButtonsBuilder.this.isActionlistVisible() && Tutorial.isVisible(Tutorial.FLAG_OFFER) && ((long) ActionButtonsBuilder.this.beginnerConfig.optInt("hide starter pack minutes")) * 60 <= Settings.playTimeSeconds;
                }

                @Override // io.blueflower.stapel2d.gui.Gadget
                public boolean isEnabled() {
                    return isVisible();
                }
            }.setId("cmdOffer");
            i += iOptInt;
        }
        final FeatureDraft currentSpecialOffer = specialOfferManager.getCurrentSpecialOffer();
        final int iOptInt2 = this.beginnerConfig.optInt("hide special offer minutes") * 60;
        final long jMillis = TimeUtils.millis();
        final long specialOfferDurationMinutes = (((long) (specialOfferManager.getSpecialOfferDurationMinutes() * 60)) * 1000) + jMillis;
        if (currentSpecialOffer != null) {
            JSONObject jSONObjectOptJSONObject = Resources.CONFIG.optJSONObject("special offer");
            final int i2 = currentSpecialOffer.frames[0];
            int iOptInt3 = jSONObjectOptJSONObject.optInt("task vanish time minutes", 100) * 60;
            TaskManager.Task task = TaskManager.getInstance().TASK_SPECIAL_OFFER;
            final BuildingPackOfferStage buildingPackOfferStage = new BuildingPackOfferStage(i2, currentSpecialOffer, task, iOptInt3, getBuilderContext().getGameContext());
            buildingPackOfferStage.setOwnBackgroundCity(city);
            int i3 = i;
            if (Settings.playTimeSeconds >= ((long) jSONObjectOptJSONObject.optInt("min play minutes")) * 60 && !task.isCompleted() && specialOfferManager.canBeOffered(currentSpecialOffer) && jSONObjectOptJSONObject.optBoolean("auto stage visit") && !city.isReadonly()) {
                getBuilderContext().visitStage(buildingPackOfferStage);
            }
            new Button((panel.getX() + panel.getWidth()) - iOptInt, i3, iOptInt, iOptInt, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder.5
                public long lastClick = 0;

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    ((CityStage.GameStageContext) ActionButtonsBuilder.this.getBuilderContext()).visitStage(buildingPackOfferStage);
                    this.lastClick = InternetTime.getInstance().getTime();
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i4, int i5) {
                    Engine engine = this.skin.engine;
                    Drawing.getInstance().drawGadgetCircle(this, i4, i5);
                    engine.setColor(Colors.MARINE_BLUE_ULTRA_LIGHT);
                    engine.setTransparency(120);
                    Drawing.getInstance().drawCircle((this.width / 2.0f) + this.x + i4, this.y + i5 + (this.height / 2.0f), 10.0f, 12.0f, -1.5707964f, ((((specialOfferDurationMinutes - TimeUtils.millis()) / (specialOfferDurationMinutes - jMillis)) * 2.0f) - 0.5f) * 3.1415927f, 1.0f, 1.0f, engine);
                    engine.setTransparency(255);
                    engine.setColor(Colors.WHITE);
                    float f2 = f;
                    engine.setScale(f2, f2);
                    engine.drawImage(Resources.IMAGE_WORLD, this.x + i4, this.y + i5, this.width, this.height, 0.5f, 0.5f, i2);
                    engine.setScale(1.0f, 1.0f);
                    if (InternetTime.getInstance().getTime() - this.lastClick > 3600000) {
                        Drawing.getInstance().drawHalo(this.x + i4 + (this.width / 2), this.y + i5 + (this.height / 2), engine);
                    }
                    if (Tutorial.isMarked(Tutorial.FLAG_OFFER)) {
                        Drawing.getInstance().drawArrow(i4, i5, this, 3);
                    }
                }

                @Override // io.blueflower.stapel2d.gui.Gadget
                public boolean isVisible() {
                    return SpecialOfferManager.INSTANCE.canBeOffered(currentSpecialOffer) && ActionButtonsBuilder.this.isActionlistVisible() && Tutorial.isVisible(Tutorial.FLAG_SPECIAL_OFFER) && ((long) iOptInt2) <= Settings.playTimeSeconds && TimeUtils.millis() < specialOfferDurationMinutes;
                }
            }.setId("cmdSpecialOffer");
        }
    }

    public final boolean isActionlistVisible() {
        City city = getBuilderContext().getCity();
        return city.getComponent(13) == city.getDefaultTool() && !Settings.hideUI;
    }
}
