package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Gdx;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.MapSize;
import info.flowersoft.theotown.cityfile.LocalMapDirectory;
import info.flowersoft.theotown.cityfile.LocalRegionProvider;
import info.flowersoft.theotown.cityfile.RegionInformation;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.creation.CityCreator;
import info.flowersoft.theotown.creation.RegionCreator;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.FreeModeManager;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.ComboButton;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.IconRadioButton;
import info.flowersoft.theotown.ui.MapPreview;
import info.flowersoft.theotown.ui.Page;
import info.flowersoft.theotown.ui.ScrollableTextFrame;
import info.flowersoft.theotown.ui.SpendDiamondsButton;
import info.flowersoft.theotown.ui.TextField;
import info.flowersoft.theotown.util.CityGenerator;
import info.flowersoft.theotown.util.LineLayoutFiller;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.ProgressVariable;
import info.flowersoft.theotown.util.RegionLayout;
import info.flowersoft.theotown.util.Status;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class CreateCityStage extends BaseStage {
    public GoldButton cmdForward;
    public ScrollableTextFrame gameModeDescription;
    public final CityGenerator generator;
    public MapPreview mapPreview;
    public final boolean region;
    public TextField tfAuthor;
    public TextField tfName;

    public static /* synthetic */ void $r8$lambda$SPxQPAL4tuichiU1NwVvBQ8Xovg(boolean z) {
    }

    public CreateCityStage(Stapel2DGameContext stapel2DGameContext, boolean z) {
        super(stapel2DGameContext);
        this.region = z;
        CityGenerator cityGenerator = new CityGenerator(stapel2DGameContext, z);
        this.generator = cityGenerator;
        if (z) {
            cityGenerator.getRegionLayout().divide(0, 2);
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
        getGameStack().push(new CreateCityStageExt(this.generator, this.context, this.region));
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        Panel panel;
        final CreateCityStage createCityStage;
        boolean z;
        super.enter();
        Page page = new Page(this.context, this.translator.translate(this.region ? 1383 : 257), Resources.ICON_CITY, this.gui);
        page.setOnBackgroundClick(new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.getGameStack().pop();
            }
        });
        Panel contentPanel = page.getContentPanel();
        int iMin = Math.min((contentPanel.getClientHeight() - 3) / 4, 30);
        this.mapPreview = new MapPreview(contentPanel.getClientWidth() - 60, 0, 60, 60, contentPanel, this.translator, false);
        LineLayoutFiller lineLayoutFiller = new LineLayoutFiller(iMin, 1, contentPanel);
        lineLayoutFiller.setTargetSize(0, 80);
        lineLayoutFiller.setTargetSize(1, 0);
        lineLayoutFiller.setTargetSize(2, 30);
        lineLayoutFiller.setLineWidth(contentPanel.getClientWidth() - 62);
        lineLayoutFiller.addLabel(this.translator.translate(this.region ? 107 : 1328));
        TextField textField = new TextField(0, 0, 0, lineLayoutFiller.getLineHeight(), contentPanel) { // from class: info.flowersoft.theotown.stages.CreateCityStage.1
            @Override // info.flowersoft.theotown.ui.TextField
            public void onTextChange(String str) {
                CreateCityStage.this.generator.setName(str);
            }
        };
        this.tfName = textField;
        textField.setText(this.generator.getName());
        this.tfName.setActive();
        lineLayoutFiller.addGadget(this.tfName);
        lineLayoutFiller.addButton(Resources.ICON_RANDOM, "", new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStage.2
            @Override // java.lang.Runnable
            public void run() {
                CreateCityStage.this.generator.setRandomName();
                CreateCityStage.this.tfName.setText(CreateCityStage.this.generator.getName());
            }
        });
        lineLayoutFiller.finalizeLine();
        if (this.generator.isRegion()) {
            panel = contentPanel;
            createCityStage = this;
        } else {
            lineLayoutFiller.addLabel(this.translator.translate(2154));
            TextField textField2 = new TextField(0, 0, 0, lineLayoutFiller.getLineHeight(), contentPanel) { // from class: info.flowersoft.theotown.stages.CreateCityStage.3
                @Override // info.flowersoft.theotown.ui.TextField
                public void onTextChange(String str) {
                    CreateCityStage.this.generator.setAuthor(str);
                }
            };
            panel = contentPanel;
            createCityStage = this;
            createCityStage.tfAuthor = textField2;
            textField2.setText(createCityStage.generator.getAuthor());
            lineLayoutFiller.addGadget(createCityStage.tfAuthor);
            lineLayoutFiller.finalizeLine();
        }
        lineLayoutFiller.setLineWidth(panel.getClientWidth());
        lineLayoutFiller.setTargetSize(1, 0);
        lineLayoutFiller.setTargetSize(2, 0);
        lineLayoutFiller.setTargetSize(3, 0);
        lineLayoutFiller.setTargetSize(4, 0);
        lineLayoutFiller.setTargetSize(5, 0);
        if (createCityStage.generator.isRegion()) {
            z = true;
        } else {
            lineLayoutFiller.addLabel(createCityStage.translator.translate(1182));
            z = true;
            Panel panel2 = panel;
            ComboButton comboButton = new ComboButton(0, 0, 0, 0, panel2, new GameModeRepr(), new Setter() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda1
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    CreateCityStage.$r8$lambda$dSC5t0NRzCHtDXOcD7CQuT7nbjQ(this.f$0, (GameMode) obj);
                }
            });
            comboButton.addItems(GameMode.EASY, GameMode.MIDDLE, GameMode.HARD);
            if (FreeModeManager.getInstance().isAvailable()) {
                comboButton.addItem(GameMode.SANDBOX);
            }
            comboButton.select(createCityStage.generator.getGameMode());
            lineLayoutFiller.addGadget(comboButton);
            lineLayoutFiller.addGadget(new IconRadioButton(Resources.ICON_ROAD, createCityStage.translator.translate(488), panel2) { // from class: info.flowersoft.theotown.stages.CreateCityStage.4
                @Override // info.flowersoft.theotown.ui.IconRadioButton, io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    Settings.leftSideTrafficNewCities = !Settings.leftSideTrafficNewCities;
                }

                @Override // io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button
                public boolean isPressed() {
                    return Settings.leftSideTrafficNewCities;
                }
            });
            lineLayoutFiller.finalizeLine();
            lineLayoutFiller.setLineHeight(lineLayoutFiller.getVerticalSpace());
            ScrollableTextFrame scrollableTextFrame = new ScrollableTextFrame("", 0, 0, 0, 0, panel2);
            createCityStage.gameModeDescription = scrollableTextFrame;
            scrollableTextFrame.setShowBorder(false);
            lineLayoutFiller.addLabel("");
            lineLayoutFiller.addGadget(createCityStage.gameModeDescription);
            lineLayoutFiller.finalizeLine();
            createCityStage.updateGameModeDescription();
        }
        createCityStage.prepareInvalidNameDialog();
        GoldButton goldButtonAddButton = page.addButton(Resources.ICON_OK, createCityStage.translator.translate(388), false, true, new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityStage.$r8$lambda$mmwj050gjGwuUMHe9vkmDeYD78s(this.f$0);
            }
        });
        createCityStage.cmdForward = goldButtonAddButton;
        goldButtonAddButton.setGolden(z);
        createCityStage.cmdForward.addSensitiveKey(66);
        page.addButton(Resources.ICON_BACKWARD, createCityStage.translator.translate(2416), true, false, new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityStage createCityStage2 = this.f$0;
                createCityStage2.getGameStack().push(new CreateCityStageExt(createCityStage2.generator, createCityStage2.context, createCityStage2.region));
            }
        });
        page.setOnBackgroundClick(new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.getGameStack().pop();
            }
        });
        createCityStage.prepareHugeDialog();
        createCityStage.generateMinimap();
    }

    public static /* synthetic */ void $r8$lambda$dSC5t0NRzCHtDXOcD7CQuT7nbjQ(CreateCityStage createCityStage, GameMode gameMode) {
        createCityStage.generator.setGameMode(gameMode);
        createCityStage.updateGameModeDescription();
    }

    public static /* synthetic */ void $r8$lambda$mmwj050gjGwuUMHe9vkmDeYD78s(final CreateCityStage createCityStage) {
        if (CityKeeper.isCityNameValid(createCityStage.generator.getName())) {
            if (createCityStage.region) {
                if (createCityStage.getDiamondPrice() == 0) {
                    createCityStage.createRegion(new SpendDiamondsButton.HandlerReporter() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda6
                        @Override // info.flowersoft.theotown.ui.SpendDiamondsButton.HandlerReporter
                        public final void report(boolean z) {
                            CreateCityStage.$r8$lambda$SPxQPAL4tuichiU1NwVvBQ8Xovg(z);
                        }
                    });
                    return;
                } else {
                    new BuyOrVideoDialog(Resources.ICON_REGION, createCityStage.translator.translate(511), createCityStage.translator.translate(550), createCityStage.gui, Math.max(r0, 0), new SpendDiamondsButton.SuccessHandler() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda7
                        @Override // info.flowersoft.theotown.ui.SpendDiamondsButton.SuccessHandler
                        public final void handle(SpendDiamondsButton.HandlerReporter handlerReporter) {
                            CreateCityStage.$r8$lambda$1S2IX984sCrrfg2mb4s33fsJc68(this.f$0, handlerReporter);
                        }
                    }, (Setter<Stage>) createCityStage.getGameStack(), createCityStage.context, "generate region", (String) null, false).setVisible(true);
                    return;
                }
            }
            if (createCityStage.generator.getGameMode() == GameMode.FREE && !TheoTown.PREMIUM) {
                FreeModeManager.getInstance().showDialog(createCityStage.generator.getSize().getWidth(), createCityStage.context, createCityStage.gui, createCityStage.getGameStack(), new Getter() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda8
                    @Override // io.blueflower.stapel2d.util.Getter
                    public final Object get() {
                        return CreateCityStage.$r8$lambda$qAe0BglAZPizHbKGB8j69Jx0jDU(this.f$0);
                    }
                }, null);
            } else {
                createCityStage.createCity(null);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$1S2IX984sCrrfg2mb4s33fsJc68(CreateCityStage createCityStage, final SpendDiamondsButton.HandlerReporter handlerReporter) {
        createCityStage.getClass();
        createCityStage.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStage.5
            @Override // java.lang.Runnable
            public void run() {
                CreateCityStage.this.createRegion(handlerReporter);
            }
        });
    }

    public static /* synthetic */ Boolean $r8$lambda$qAe0BglAZPizHbKGB8j69Jx0jDU(CreateCityStage createCityStage) {
        createCityStage.getClass();
        createCityStage.createCity(new Setter() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda13
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                CreateCityStage.m2216$r8$lambda$sKi_2p8aqduH66W10cklxzWLIE((Boolean) obj);
            }
        });
        return Boolean.TRUE;
    }

    /* JADX INFO: renamed from: $r8$lambda$sKi_2p8aqduH66W10cklxzWL-IE, reason: not valid java name */
    public static /* synthetic */ void m2216$r8$lambda$sKi_2p8aqduH66W10cklxzWLIE(Boolean bool) {
        if (bool.booleanValue()) {
            return;
        }
        FreeModeManager.getInstance().rollback();
    }

    public final void createRegion(final SpendDiamondsButton.HandlerReporter handlerReporter) {
        final ProgressVariable progressVariable = new ProgressVariable(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        final Status status = new Status("Region creation");
        GameStack gameStack = getGameStack();
        final int width = this.generator.getSize().getWidth() / 64;
        final LocalMapDirectory newRegion = LocalMapDirectory.getNewRegion(this.generator.getName(), this.context);
        final RegionCreator regionCreator = new RegionCreator(newRegion, this.context, 64, this.generator.getSeed(), this.generator.getSeed(), this.generator.isTrees(), this.generator.isDecos(), this.generator.isTerrain(), this.generator.isRivers(), this.generator.getRoughness(), this.generator.getActiveBiomes(), this.generator.getGameMode(), null, Settings.regionOriginBackup);
        gameStack.pop();
        while (!gameStack.isEmpty() && !(gameStack.peek() instanceof RegionStage)) {
            gameStack.pop();
        }
        if (!gameStack.isEmpty()) {
            gameStack.pop();
        }
        final LocalRegionProvider localRegionProvider = new LocalRegionProvider(this.context);
        gameStack.push(new RegionStage(this.context, localRegionProvider).setLoadLastCity(false));
        gameStack.push(new WaitingStage(this.context, Resources.ICON_CITY, this.translator.translate(1383), new Thread(new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityStage.$r8$lambda$SBSQVHoK2MIoi0Z3D4vOzIP12FM(this.f$0, status, regionCreator, progressVariable);
            }
        }), new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityStage.$r8$lambda$3DC8FqUPsBh0UgIgFEyWt3GYSPI(this.f$0, width, regionCreator, status, newRegion, handlerReporter, localRegionProvider);
            }
        }, progressVariable, status).setAborted(new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityStage.$r8$lambda$Or4JSRlvhGr8rCutown4CwMDL_Q(newRegion);
            }
        }));
    }

    public static /* synthetic */ void $r8$lambda$SBSQVHoK2MIoi0Z3D4vOzIP12FM(CreateCityStage createCityStage, Status status, RegionCreator regionCreator, ProgressVariable progressVariable) {
        createCityStage.getClass();
        status.set("Generate region");
        regionCreator.beginCreation(createCityStage.generator.getEffectiveSize() / 64, createCityStage.generator.generate(progressVariable, status));
        status.set("Extract cities");
    }

    public static /* synthetic */ void $r8$lambda$3DC8FqUPsBh0UgIgFEyWt3GYSPI(CreateCityStage createCityStage, int i, RegionCreator regionCreator, Status status, LocalMapDirectory localMapDirectory, SpendDiamondsButton.HandlerReporter handlerReporter, LocalRegionProvider localRegionProvider) {
        RegionLayout regionLayout = createCityStage.generator.getRegionLayout();
        int maxDivisor = regionLayout.getMaxDivisor();
        for (int i2 = 0; i2 < regionLayout.countPlaces(); i2++) {
            if (regionLayout.getEnabled(i2)) {
                int divisor = regionLayout.getDivisor(i2);
                int x = (regionLayout.getX(i2) * i) / maxDivisor;
                int i3 = i / divisor;
                int y = (i - ((regionLayout.getY(i2) * i) / maxDivisor)) - i3;
                System.gc();
                regionCreator.addRegionMap(x, y, i3);
            }
        }
        status.set("End creation");
        regionCreator.endCreation();
        status.done();
        RegionInformation regionInformation = localMapDirectory.getRegionInformation();
        regionInformation.setName(createCityStage.generator.getName());
        localMapDirectory.saveRegionInformation(regionInformation);
        handlerReporter.report(true);
        TaskManager.getInstance().TASK_CREATED_REGION.complete();
        TheoTown.gamesService.unlockAchievement("region_generate");
        localRegionProvider.setSelectedRegionPath(localMapDirectory.getDirectory().getName());
    }

    public static /* synthetic */ void $r8$lambda$Or4JSRlvhGr8rCutown4CwMDL_Q(LocalMapDirectory localMapDirectory) {
        localMapDirectory.deleteAnything();
        localMapDirectory.getDirectory().delete();
    }

    public final void createCity(final Setter<Boolean> setter) {
        final CityKeeper cityKeeper = new CityKeeper(LocalMapDirectory.getDefault(this.context).findFileForNewCity(this.generator.getName()), this.translator);
        Gdx.app.debug("CityCreation", "Use file " + cityKeeper.getFile().getAbsolutePath() + " for city " + this.generator.getName());
        ProgressVariable progressVariable = new ProgressVariable(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        final Status status = new Status("City creation");
        final City[] cityArr = new City[1];
        final GameStack gameStack = getGameStack();
        gameStack.pop();
        gameStack.push(new WaitingStage(this.context, Resources.ICON_CITY, this.translator.translate(2519), new AnonymousClass6(progressVariable, status, cityArr), new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityStage.$r8$lambda$LDD5ZBX1WzHQmw9A4UbtqhqMU2w(this.f$0, status, cityArr, cityKeeper, gameStack, setter);
            }
        }, progressVariable, status));
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.CreateCityStage$6, reason: invalid class name */
    public class AnonymousClass6 extends Thread {
        public final /* synthetic */ City[] val$c0;
        public final /* synthetic */ ProgressVariable val$progress;
        public final /* synthetic */ Status val$status;

        public AnonymousClass6(ProgressVariable progressVariable, Status status, City[] cityArr) {
            this.val$progress = progressVariable;
            this.val$status = status;
            this.val$c0 = cityArr;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            CityCreator.CityData cityDataGenerate = CreateCityStage.this.generator.generate(new ProgressVariable(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) { // from class: info.flowersoft.theotown.stages.CreateCityStage.6.1
                @Override // info.flowersoft.theotown.util.ProgressVariable
                public void setProgress(float f) {
                    AnonymousClass6.this.val$progress.setProgress(f * 0.5f);
                }
            }, this.val$status);
            CreateCityStage createCityStage = CreateCityStage.this;
            final ProgressVariable progressVariable = this.val$progress;
            createCityStage.prepareCity(cityDataGenerate, new Setter() { // from class: info.flowersoft.theotown.stages.CreateCityStage$6$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    progressVariable.setProgress((((Float) obj).floatValue() * 0.5f) + 0.5f);
                }
            });
            this.val$c0[0] = cityDataGenerate.city;
        }
    }

    public static /* synthetic */ void $r8$lambda$LDD5ZBX1WzHQmw9A4UbtqhqMU2w(CreateCityStage createCityStage, Status status, City[] cityArr, CityKeeper cityKeeper, GameStack gameStack, Setter setter) {
        createCityStage.getClass();
        status.set("Finalize");
        City city = cityArr[0];
        city.setLeftSideTraffic(Settings.leftSideTrafficNewCities);
        cityKeeper.setCity(city);
        status.done();
        TheoTown.analytics.logNewCity(city);
        if (createCityStage.generator.getSize().getWidth() >= MapSize.BIG4.getWidth()) {
            TheoTown.gamesService.unlockAchievement("giant_map_create");
        }
        gameStack.push(new CityStage(createCityStage.context, cityKeeper, null, null, null, null));
        if (setter != null) {
            setter.set(Boolean.TRUE);
        }
    }

    public final void updateGameModeDescription() {
        if (this.gameModeDescription != null) {
            this.gameModeDescription.setText(this.translator.translate(this.generator.getGameMode().getDescriptionId()));
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onBack() {
        if (!isDialogOpen()) {
            getGameStack().push(new CreateCityStageExt(this.generator, this.context, this.region));
        } else {
            super.onBack();
        }
    }

    public final void prepareInvalidNameDialog() {
        Dialog dialog = new Dialog(Resources.FRAME_PEOPLE + 8, this.translator.translate(1605), this.translator.translate(1736), this.gui);
        dialog.addCancelButton(Resources.ICON_OK, this.translator.translate(1108));
        dialog.setVisible(false);
    }

    public final void prepareHugeDialog() {
        Dialog dialog = new Dialog(Resources.FRAME_PEOPLE, this.translator.translate(675), this.translator.translate(233), this.gui);
        dialog.addButton(Resources.ICON_OK, this.translator.translate(201), false, new Runnable() { // from class: info.flowersoft.theotown.stages.CreateCityStage.7
            @Override // java.lang.Runnable
            public void run() {
                CreateCityStage.this.generator.setSize(MapSize.BIG2);
                CreateCityStage.this.generateMinimap();
            }
        });
        dialog.addButton(Resources.ICON_CANCEL, this.translator.translate(551), true, null);
        dialog.distributeButtons();
        dialog.setVisible(false);
    }

    public final void generateMinimap() {
        final CityGenerator cityGenerator = new CityGenerator(this.generator);
        this.mapPreview.issueMinimapRendering(new Getter() { // from class: info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda5
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return CreateCityStage.m2215$r8$lambda$_fYW2nkfgLJHF3QuFrMYoo79gE(this.f$0, cityGenerator);
            }
        }, cityGenerator.getEffectiveSize(), cityGenerator.getEffectiveGridSize(), cityGenerator.getRegionLayout());
    }

    /* JADX INFO: renamed from: $r8$lambda$_fYW2nkfgL-JHF3QuFrMYoo79gE, reason: not valid java name */
    public static /* synthetic */ City m2215$r8$lambda$_fYW2nkfgLJHF3QuFrMYoo79gE(CreateCityStage createCityStage, CityGenerator cityGenerator) {
        CityCreator.CityData cityDataGenerate = cityGenerator.generate(createCityStage.mapPreview.getProgress(), createCityStage.mapPreview.getStatus());
        if (cityDataGenerate != null) {
            return cityDataGenerate.city;
        }
        return null;
    }

    public final int getDiamondPrice() {
        if (TheoTown.PREMIUM) {
            return 0;
        }
        int iOptInt = Resources.getSpecificConfig("generator").optInt("region price per tile", 30);
        if (TaskManager.getInstance().TASK_CREATED_REGION.isCompleted() || iOptInt == 0) {
            return (this.generator.getSize().getWidth() / 256) * iOptInt;
        }
        return -1;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
        if (this.region) {
            int diamondPrice = getDiamondPrice();
            if (diamondPrice > 0) {
                this.cmdForward.setText(Localizer.localizeDiamonds(diamondPrice));
                this.cmdForward.setIcon(Resources.ICON_DIAMOND);
            } else if (diamondPrice < 0) {
                this.cmdForward.setText(this.translator.translate(713));
                this.cmdForward.setIcon(Resources.ICON_AWARD);
            }
        }
        this.cmdForward.setEnabled(CityKeeper.isCityNameValid(this.generator.getName()));
        this.tfName.setVisible(!isDialogOpen());
        TextField textField = this.tfAuthor;
        if (textField != null) {
            textField.setVisible(!isDialogOpen());
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        this.generator.saveSettings();
        Settings.save();
        super.leave();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        MapPreview mapPreview = this.mapPreview;
        if (mapPreview != null) {
            mapPreview.stopRendering();
        }
        super.drop();
    }

    public String toString() {
        return "CreateCityStage2;region=" + this.region;
    }

    public final void prepareCity(CityCreator.CityData cityData, Setter<Float> setter) {
        new CityCreator(this.context).prepareCity(cityData, setter, this.generator.isDecos());
    }

    public class GameModeRepr implements ComboButton.ButtonRepr<GameMode> {
        public GameModeRepr() {
        }

        @Override // info.flowersoft.theotown.ui.ComboButton.ButtonRepr
        public int getIcon(GameMode gameMode) {
            return gameMode.getIcon();
        }

        @Override // info.flowersoft.theotown.ui.ComboButton.ButtonRepr
        public String getText(GameMode gameMode) {
            return CreateCityStage.this.translator.translate(gameMode.getLocalizationId());
        }
    }
}
