package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.ironsource.M9;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.MapSize;
import info.flowersoft.theotown.creation.CityCreator;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.WinterManager;
import info.flowersoft.theotown.stages.CreateCityStageExt;
import info.flowersoft.theotown.stages.createcity.CreateCityDialogs;
import info.flowersoft.theotown.ui.ComboButton;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.IconRadioButton;
import info.flowersoft.theotown.ui.MapPreview;
import info.flowersoft.theotown.ui.Page;
import info.flowersoft.theotown.ui.TextField;
import info.flowersoft.theotown.util.CityGenerator;
import info.flowersoft.theotown.util.LineLayoutFiller;
import info.flowersoft.theotown.util.RegionLayout;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CreateCityStageExt extends BaseStage {
    public GoldButton cmdForward;
    public final CityGenerator generator;
    public CityGenerator lastGenerated;
    public MapPreview mapPreview;
    public final CityGenerator origin;
    public final boolean region;
    public ComboButton<MapSize> sizeButton;
    public TextField tfSeed;

    public CreateCityStageExt(CityGenerator cityGenerator, Stapel2DGameContext stapel2DGameContext, boolean z) {
        super(stapel2DGameContext);
        this.region = z;
        this.origin = cityGenerator;
        CityGenerator cityGenerator2 = new CityGenerator(stapel2DGameContext, z);
        this.generator = cityGenerator2;
        cityGenerator2.setTo(cityGenerator);
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        WinterManager.getInstance().setWinter(WinterManager.shouldItBeWinter(Settings.winter));
        Page page = new Page(this.context, this.translator.translate(this.region ? 1383 : 257), Resources.ICON_CITY, this.gui);
        Panel contentPanel = page.getContentPanel();
        LineLayoutFiller lineLayoutFiller = new LineLayoutFiller(30, 1, contentPanel);
        lineLayoutFiller.setTargetSize(0, 80);
        this.lastGenerated = null;
        this.mapPreview = new MapPreview(contentPanel.getClientWidth() - 130, 0, Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR_VALUE, Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR_VALUE, contentPanel, this.translator, true);
        lineLayoutFiller.setLineWidth((contentPanel.getClientWidth() - this.mapPreview.getWidth()) - 2);
        lineLayoutFiller.setTargetSize(2, 30);
        lineLayoutFiller.setTargetSize(3, 30);
        lineLayoutFiller.setTargetSize(4, 30);
        lineLayoutFiller.addLabel(this.translator.translate(3098));
        TextField textField = new TextField(0, 0, 0, lineLayoutFiller.getLineHeight(), contentPanel) { // from class: info.flowersoft.theotown.stages.CreateCityStageExt.1
            @Override // info.flowersoft.theotown.ui.TextField
            public void onTextChange(String str) {
                CreateCityStageExt.this.generator.setSeed(str);
                CreateCityStageExt.this.generateMinimap();
            }
        };
        this.tfSeed = textField;
        textField.setText(this.generator.getSeed());
        this.tfSeed.setActive();
        lineLayoutFiller.addGadget(this.tfSeed);
        lineLayoutFiller.addButton(Resources.ICON_RANDOM, "", new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityStageExt.m2219$r8$lambda$QbfsR6b_1rLRhsLLHnlOh5clyY(this.f$0);
            }
        });
        lineLayoutFiller.addButton(Resources.ICON_MAP, "", new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityStageExt createCityStageExt = this.f$0;
                CreateCityDialogs.showSeedDialog(createCityStageExt.context, createCityStageExt.generator.getHeightMapManager(), createCityStageExt.gui, createCityStageExt.generator.getSeed(), new Setter() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda8
                    @Override // io.blueflower.stapel2d.util.Setter
                    public final void set(Object obj) {
                        CreateCityStageExt.$r8$lambda$odYyQxAdWgLkyurZcx8YqkNK1EI(createCityStageExt, (String) obj);
                    }
                }, createCityStageExt.getGameStack());
            }
        });
        lineLayoutFiller.addButton(Resources.ICON_FOLDER, "", new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityStageExt.m2221$r8$lambda$f4qF6ln4_4Su03Lnh2SSAM8Z1k(this.f$0);
            }
        });
        lineLayoutFiller.finalizeLine();
        lineLayoutFiller.setTargetSize(2, 0);
        lineLayoutFiller.setTargetSize(3, 0);
        lineLayoutFiller.addLabel(this.translator.translate(3466));
        ComboButton<MapSize> comboButton = new ComboButton<>(0, 0, 0, 0, contentPanel, new MapSizeRepr(), new Setter() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda3
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                CreateCityStageExt.$r8$lambda$I51ARaXhIRhxZO8p3K3NoqM7eFg(this.f$0, (MapSize) obj);
            }
        });
        this.sizeButton = comboButton;
        if (!this.region) {
            comboButton.addItem(MapSize.SMALL);
            this.sizeButton.addItem(MapSize.MIDDLE);
            this.sizeButton.addItem(MapSize.BIG);
        }
        ComboButton<MapSize> comboButton2 = this.sizeButton;
        MapSize mapSize = MapSize.BIG2;
        comboButton2.addItem(mapSize);
        if (Settings.debugMode || this.region || Gdx.app.getType() == Application.ApplicationType.Desktop) {
            if (!this.region) {
                this.sizeButton.addItem(MapSize.BIG3);
            }
            this.sizeButton.addItem(MapSize.BIG4);
            if (this.region && ((Runtime.getRuntime().maxMemory() / 1024) / 1024 >= 512 || Settings.experimentalFeatures)) {
                this.sizeButton.addItem(MapSize.BIG8);
            }
        }
        lineLayoutFiller.addGadget(this.sizeButton);
        lineLayoutFiller.finalizeLine();
        if (this.region) {
            if (this.generator.getSize() != mapSize && this.generator.getSize() != MapSize.BIG3 && this.generator.getSize() != MapSize.BIG4 && (this.generator.getSize() != MapSize.BIG8 || Gdx.app.getType() != Application.ApplicationType.Desktop)) {
                this.generator.setSize(mapSize);
            }
            lineLayoutFiller.addLabel(this.translator.translate(2792));
            lineLayoutFiller.addButton(Resources.ICON_REGION_SPLIT, this.translator.translate(796), new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    CreateCityStageExt.$r8$lambda$xndiNr9_hMtpIF657AN7cL2qNYg(this.f$0);
                }
            });
            lineLayoutFiller.addButton(Resources.ICON_REGION_CIRCLE, this.translator.translate(3459), new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    CreateCityStageExt.m2217$r8$lambda$DW8FJQPFXlpK1Esph6TSEHbzoE(this.f$0);
                }
            });
            lineLayoutFiller.finalizeLine();
        }
        this.sizeButton.select(this.generator.getSize());
        lineLayoutFiller.setTargetSize(0, 0);
        lineLayoutFiller.addGadget(new IconRadioButton(Resources.ICON_TREE, this.translator.translate(1415), contentPanel) { // from class: info.flowersoft.theotown.stages.CreateCityStageExt.2
            @Override // info.flowersoft.theotown.ui.IconRadioButton, io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                CreateCityStageExt.this.generator.setTrees(!CreateCityStageExt.this.generator.isTrees());
                CreateCityStageExt.this.generateMinimap();
            }

            @Override // io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button
            public boolean isPressed() {
                return CreateCityStageExt.this.generator.isTrees();
            }
        });
        lineLayoutFiller.addGadget(new IconRadioButton(Resources.ICON_DECORATION, this.translator.translate(M9.b.e), contentPanel) { // from class: info.flowersoft.theotown.stages.CreateCityStageExt.3
            @Override // info.flowersoft.theotown.ui.IconRadioButton, io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                CreateCityStageExt.this.generator.setDecos(!CreateCityStageExt.this.generator.isDecos());
                CreateCityStageExt.this.generateMinimap();
            }

            @Override // io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button
            public boolean isPressed() {
                return CreateCityStageExt.this.generator.isDecos();
            }
        });
        lineLayoutFiller.addGadget(new AnonymousClass4(Resources.ICON_HILLS, this.translator.translate(3351), 0, 0, 0, 0, contentPanel));
        lineLayoutFiller.addGadget(new AnonymousClass5(Resources.ICON_DESERT, this.translator.translate(3226), 0, 0, 0, 0, contentPanel));
        lineLayoutFiller.finalizeLine();
        page.setOnBackgroundClick(new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityStageExt.$r8$lambda$M9dbaamg39vHimjDXTNdmywjmTg(this.f$0);
            }
        });
        GoldButton goldButtonAddButton = page.addButton(Resources.ICON_FORWARD, this.translator.translate(1797), false, true, new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityStageExt.m2218$r8$lambda$IB7ZYOVLDOxUpBWrnBP47l4Xo(this.f$0);
            }
        });
        this.cmdForward = goldButtonAddButton;
        goldButtonAddButton.setGolden(true);
        this.cmdForward.addSensitiveKey(66);
        if (this.region && !hasAccessToStorage()) {
            TextField textField2 = this.tfSeed;
            if (textField2 != null) {
                textField2.setVisible(false);
            }
            CreateCityDialogs.showNoPermissionsDialog(this.context, this.gui, getGameStack());
        }
        generateMinimap();
    }

    /* JADX INFO: renamed from: $r8$lambda$QbfsR6b_1rLRhsLLHnlOh5cl-yY, reason: not valid java name */
    public static /* synthetic */ void m2219$r8$lambda$QbfsR6b_1rLRhsLLHnlOh5clyY(CreateCityStageExt createCityStageExt) {
        createCityStageExt.generator.setRandomSeed();
        createCityStageExt.tfSeed.setText(createCityStageExt.generator.getSeed());
        createCityStageExt.generateMinimap();
    }

    public static /* synthetic */ void $r8$lambda$odYyQxAdWgLkyurZcx8YqkNK1EI(CreateCityStageExt createCityStageExt, String str) {
        createCityStageExt.generator.setSeed(str + "#");
        createCityStageExt.generator.setRandomSeed();
        createCityStageExt.tfSeed.setText(createCityStageExt.generator.getSeed());
        createCityStageExt.generateMinimap();
    }

    public static /* synthetic */ void $r8$lambda$XNkvZDjIvoTHQkL6HYUsSWJwtT0(final CreateCityStageExt createCityStageExt, final File file) {
        createCityStageExt.getClass();
        createCityStageExt.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityStageExt.m2223$r8$lambda$zSmdgaz1oRoKY3JJTgk7SX9shE(this.f$0, file);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$f4qF6ln4_4Su03-Lnh2SSAM8Z1k, reason: not valid java name */
    public static /* synthetic */ void m2221$r8$lambda$f4qF6ln4_4Su03Lnh2SSAM8Z1k(final CreateCityStageExt createCityStageExt) {
        createCityStageExt.getClass();
        TheoTown.runtimeFeatures.importImageFile(TheoTown.APP_CACHE_DIR, new Setter() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda10
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                CreateCityStageExt.$r8$lambda$XNkvZDjIvoTHQkL6HYUsSWJwtT0(this.f$0, (File) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$zSmdgaz1oRoKY3JJ-Tgk7SX9shE, reason: not valid java name */
    public static /* synthetic */ void m2223$r8$lambda$zSmdgaz1oRoKY3JJTgk7SX9shE(final CreateCityStageExt createCityStageExt, final File file) {
        createCityStageExt.getClass();
        if (file == null || !file.exists()) {
            return;
        }
        file.deleteOnExit();
        createCityStageExt.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityStageExt.$r8$lambda$fD5M0Mij2SvpXdMIXYvBENnVYxA(this.f$0, file);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$fD5M0Mij2SvpXdMIXYvBENnVYxA(CreateCityStageExt createCityStageExt, File file) {
        createCityStageExt.generator.setSeed(file.getName());
        createCityStageExt.tfSeed.setText(file.getName());
        createCityStageExt.generateMinimap();
    }

    public static /* synthetic */ void $r8$lambda$I51ARaXhIRhxZO8p3K3NoqM7eFg(CreateCityStageExt createCityStageExt, MapSize mapSize) {
        createCityStageExt.generator.setSize(mapSize);
        createCityStageExt.generateMinimap();
    }

    public static /* synthetic */ void $r8$lambda$xndiNr9_hMtpIF657AN7cL2qNYg(CreateCityStageExt createCityStageExt) {
        RegionLayout regionLayout = createCityStageExt.generator.getRegionLayout();
        regionLayout.reset();
        regionLayout.divide(0, 2);
    }

    /* JADX INFO: renamed from: $r8$lambda$DW8FJQPFXlpK1E-sph6TSEHbzoE, reason: not valid java name */
    public static /* synthetic */ void m2217$r8$lambda$DW8FJQPFXlpK1Esph6TSEHbzoE(CreateCityStageExt createCityStageExt) {
        RegionLayout regionLayout = createCityStageExt.generator.getRegionLayout();
        try {
            if (createCityStageExt.generator.getSize().getWidth() / 64 < 8) {
                regionLayout.fromJSON(new JSONObject("{\"xyde\":[0,0,4,0,1,0,4,1,0,1,4,1,2,0,4,1,3,0,4,0,3,1,4,1,0,2,4,1,0,3,4,0,1,3,4,1,3,2,4,1,2,3,4,1,3,3,4,0,1,1,2,1],\"max divisor\":4,\"stride\":4,\"max allowed divisor\":6}"));
            } else {
                regionLayout.fromJSON(new JSONObject("{\"xyde\":[2,0,8,0,2,1,8,1,5,0,8,0,5,1,8,1,6,2,8,1,7,2,8,0,6,5,8,1,7,5,8,0,5,6,8,1,5,7,8,0,2,6,8,1,2,7,8,0,0,5,8,0,1,5,8,1,0,2,8,0,1,2,8,1,3,0,4,1,0,3,4,1,3,6,4,1,6,3,4,1,2,2,2,1,0,0,8,0,1,0,8,0,0,1,8,0,1,1,8,1,6,0,8,0,7,0,8,0,6,1,8,1,7,1,8,0,6,6,8,1,7,6,8,0,6,7,8,0,7,7,8,0,0,6,8,0,1,6,8,1,0,7,8,0,1,7,8,0],\"max divisor\":8,\"stride\":4,\"max allowed divisor\":8}"));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.CreateCityStageExt$4, reason: invalid class name */
    public class AnonymousClass4 extends IconButton {
        public AnonymousClass4(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget) {
            super(i, str, i2, i3, i4, i5, gadget);
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            CreateCityStageExt createCityStageExt = CreateCityStageExt.this;
            CreateCityDialogs.showTerrainDialog(createCityStageExt.context, createCityStageExt.gui, new CreateCityDialogs.TerrainSettings(createCityStageExt.generator), new Setter() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$4$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    CreateCityStageExt.AnonymousClass4.$r8$lambda$l9LESskoFnF4crzYQdGEVpI3Nzg(this.f$0, (CreateCityDialogs.TerrainSettings) obj);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$l9LESskoFnF4crzYQdGEVpI3Nzg(AnonymousClass4 anonymousClass4, CreateCityDialogs.TerrainSettings terrainSettings) {
            terrainSettings.apply(CreateCityStageExt.this.generator);
            CreateCityStageExt.this.generateMinimap();
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.CreateCityStageExt$5, reason: invalid class name */
    public class AnonymousClass5 extends IconButton {
        public AnonymousClass5(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget) {
            super(i, str, i2, i3, i4, i5, gadget);
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            CreateCityStageExt createCityStageExt = CreateCityStageExt.this;
            CreateCityDialogs.showBiomeSelectionDialog(createCityStageExt.context, createCityStageExt.gui, createCityStageExt.generator.getDisabledBiomeIds(), new Setter() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$5$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    CreateCityStageExt.AnonymousClass5.$r8$lambda$7gtbogZ87jK2b_XFTdwB63rr8Y0(this.f$0, (List) obj);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$7gtbogZ87jK2b_XFTdwB63rr8Y0(AnonymousClass5 anonymousClass5, List list) {
            CreateCityStageExt.this.generator.setDisabledBiomeIds(list);
            CreateCityStageExt.this.generateMinimap();
        }
    }

    public static /* synthetic */ void $r8$lambda$M9dbaamg39vHimjDXTNdmywjmTg(CreateCityStageExt createCityStageExt) {
        createCityStageExt.getGameStack().pop();
        createCityStageExt.getGameStack().pop();
    }

    /* JADX INFO: renamed from: $r8$lambda$IB7ZYOVLDO-xUpB-WrnBP47l4Xo, reason: not valid java name */
    public static /* synthetic */ void m2218$r8$lambda$IB7ZYOVLDOxUpBWrnBP47l4Xo(CreateCityStageExt createCityStageExt) {
        createCityStageExt.origin.setTo(createCityStageExt.generator);
        createCityStageExt.getGameStack().pop();
    }

    public final boolean hasAccessToStorage() {
        if (Gdx.app.getType() != Application.ApplicationType.Android || !this.region) {
            return true;
        }
        File regionsDir = Resources.getRegionsDir();
        if (!regionsDir.exists()) {
            regionsDir.mkdirs();
        }
        return regionsDir.canWrite() && regionsDir.exists();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void generateMinimap() {
        final CityGenerator cityGenerator = new CityGenerator(this.generator);
        if (cityGenerator.equals(this.lastGenerated)) {
            return;
        }
        this.lastGenerated = cityGenerator;
        this.mapPreview.issueMinimapRendering(new Getter() { // from class: info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda9
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return CreateCityStageExt.m2220$r8$lambda$U3eh5jkcR8pOhtMqGdeWZue5Qo(this.f$0, cityGenerator);
            }
        }, cityGenerator.getEffectiveSize(), cityGenerator.getEffectiveGridSize(), cityGenerator.getRegionLayout());
    }

    /* JADX INFO: renamed from: $r8$lambda$U3eh5-jkcR8pOhtMqGdeWZue5Qo, reason: not valid java name */
    public static /* synthetic */ City m2220$r8$lambda$U3eh5jkcR8pOhtMqGdeWZue5Qo(CreateCityStageExt createCityStageExt, CityGenerator cityGenerator) {
        CityCreator.CityData cityDataGenerate = cityGenerator.generate(createCityStageExt.mapPreview.getProgress(), createCityStageExt.mapPreview.getStatus());
        if (cityDataGenerate != null) {
            return cityDataGenerate.city;
        }
        return null;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
        if (this.region) {
            RegionLayout regionLayout = this.generator.getRegionLayout();
            regionLayout.setMaxAllowedDivisor(this.generator.getSize().getWidth() / 64);
            this.cmdForward.setEnabled(regionLayout.isValid());
        }
        if (this.tfSeed.usesNativeTextField()) {
            this.tfSeed.setVisible(!isDialogOpen() && (!this.sizeButton.isOpen() || this.gui.getHeight() >= 300));
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        MapPreview mapPreview = this.mapPreview;
        if (mapPreview != null) {
            mapPreview.stopRendering();
        }
        super.drop();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onBack() {
        boolean zIsDialogOpen = isDialogOpen();
        super.onBack();
        if (zIsDialogOpen) {
            return;
        }
        getGameStack().pop();
    }

    public String toString() {
        return "CreateCityStage1;region=" + this.region;
    }

    public class MapSizeRepr implements ComboButton.ButtonRepr<MapSize> {
        public MapSizeRepr() {
        }

        @Override // info.flowersoft.theotown.ui.ComboButton.ButtonRepr
        public int getIcon(MapSize mapSize) {
            return mapSize.getIcon();
        }

        @Override // info.flowersoft.theotown.ui.ComboButton.ButtonRepr
        public String getText(MapSize mapSize) {
            return CreateCityStageExt.this.translator.translate(mapSize.getLocalizationId()) + " " + localizeArea(mapSize.getWidth() * 10 * mapSize.getHeight() * 10);
        }

        public final String localizeArea(int i) {
            return Settings.getEffectiveUnits().localizeArea(i / 1000000.0f);
        }
    }
}
