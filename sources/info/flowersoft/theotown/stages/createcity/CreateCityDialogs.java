package info.flowersoft.theotown.stages.createcity;

import com.google.android.gms.ads.AdSize;
import com.ironsource.C3522b4;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.creation.CityCreator;
import info.flowersoft.theotown.draft.BiomeDraft;
import info.flowersoft.theotown.resources.HeightMapManager;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.store.StoreCategory;
import info.flowersoft.theotown.store.StoreStage;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.settings.BinarySettingsItem;
import info.flowersoft.theotown.ui.settings.SettingsListbox;
import info.flowersoft.theotown.util.CityGenerator;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.ValueProperty;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class CreateCityDialogs {

    public static class TerrainSettings {
        public boolean rivers;
        public int roughness;
        public boolean terrain;

        public TerrainSettings(CityGenerator cityGenerator) {
            this.terrain = cityGenerator.isTerrain();
            this.rivers = cityGenerator.isRivers();
            this.roughness = cityGenerator.getRoughness();
        }

        public void apply(CityGenerator cityGenerator) {
            cityGenerator.setTerrain(this.terrain);
            cityGenerator.setRivers(this.rivers);
            cityGenerator.setRoughness(this.roughness);
        }
    }

    public static void showTerrainDialog(Stapel2DGameContext stapel2DGameContext, Master master, final TerrainSettings terrainSettings, final Setter<TerrainSettings> setter) {
        TranslationManager translator = stapel2DGameContext.getTranslator();
        Dialog dialog = new Dialog(Resources.ICON_TERRAIN, translator.translate(1980), "", 300, AdSize.WIDE_SKYSCRAPER_WIDTH, master);
        Panel contentPane = dialog.getContentPane();
        SettingsListbox settingsListbox = new SettingsListbox(translator.prefersRTL(), 0, 0, contentPane.getClientWidth(), contentPane.getClientHeight(), contentPane);
        settingsListbox.setTargetObject(terrainSettings);
        try {
            settingsListbox.addBinarySettingsItem(translator.translate(1192), TerrainSettings.class.getDeclaredField("terrain"), false);
            settingsListbox.addBinarySettingsItem(translator.translate(2261), TerrainSettings.class.getDeclaredField("rivers"), false);
            settingsListbox.addValueSettingsItem(translator.translate(1526), new String[]{translator.translate(2173), translator.translate(2346), translator.translate(568), translator.translate(1727), translator.translate(3024)}, new Integer[]{-2, -1, 0, 1, 2}, TerrainSettings.class.getDeclaredField("roughness"), false);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
        dialog.addCancelButton(Resources.ICON_CANCEL, translator.translate(1477));
        GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, translator.translate(2927), new Runnable() { // from class: info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                setter.set(terrainSettings);
            }
        });
        goldButtonAddButton.addSensitiveKey(66);
        goldButtonAddButton.setGolden(true);
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    public static void showBiomeSelectionDialog(Stapel2DGameContext stapel2DGameContext, Master master, List<String> list, final Setter<List<String>> setter) {
        final TranslationManager translator = stapel2DGameContext.getTranslator();
        Dialog dialog = new Dialog(Resources.ICON_DESERT, translator.translate(1183), "", 300, 450, master);
        Panel contentPane = dialog.getContentPane();
        final SettingsListbox settingsListbox = new SettingsListbox(translator.prefersRTL(), 0, 0, contentPane.getClientWidth(), contentPane.getClientHeight(), contentPane);
        final ArrayList arrayList = new ArrayList(list);
        Field declaredField = null;
        final List<BiomeDraft> listCollectAvailableBiomes = CityCreator.collectAvailableBiomes(null);
        final ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < listCollectAvailableBiomes.size(); i++) {
            arrayList2.add(listCollectAvailableBiomes.get(i).id);
        }
        final ValueProperty[] valuePropertyArr = new ValueProperty[listCollectAvailableBiomes.size()];
        final Setter setter2 = new Setter() { // from class: info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda4
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                CreateCityDialogs.$r8$lambda$UYHKTVtoRIKe82LxeC7MNjm76Ac(arrayList, arrayList2, settingsListbox, (Boolean) obj);
            }
        };
        final DraftLocalizer draftLocalizer = new DraftLocalizer(stapel2DGameContext, "");
        try {
            declaredField = ValueProperty.class.getDeclaredField(C3522b4.i.X);
            declaredField.setAccessible(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        final Field field = declaredField;
        Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityDialogs.$r8$lambda$oP1Cv2jw7I3Ydm8hH6ykf5uDlxE(settingsListbox, translator, setter2, listCollectAvailableBiomes, valuePropertyArr, arrayList, draftLocalizer, field);
            }
        };
        runnable.run();
        settingsListbox.setRebuildFunction(runnable);
        dialog.addCancelButton(Resources.ICON_CANCEL, translator.translate(1477));
        GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, translator.translate(2927), new Runnable() { // from class: info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityDialogs.$r8$lambda$kmx0Xo0xp3Cri534jKQprNxade4(listCollectAvailableBiomes, valuePropertyArr, setter);
            }
        });
        goldButtonAddButton.addSensitiveKey(66);
        goldButtonAddButton.setGolden(true);
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$UYHKTVtoRIKe82LxeC7MNjm76Ac(List list, List list2, SettingsListbox settingsListbox, Boolean bool) {
        list.clear();
        if (!bool.booleanValue()) {
            list.addAll(list2);
        }
        settingsListbox.rebuild();
    }

    public static /* synthetic */ void $r8$lambda$oP1Cv2jw7I3Ydm8hH6ykf5uDlxE(SettingsListbox settingsListbox, Translator translator, final Setter setter, List list, ValueProperty[] valuePropertyArr, List list2, DraftLocalizer draftLocalizer, Field field) {
        SettingsListbox settingsListbox2;
        Field field2;
        settingsListbox.removeAllItems();
        info.flowersoft.theotown.ui.listitem.ActionListItem actionListItem = new info.flowersoft.theotown.ui.listitem.ActionListItem(settingsListbox);
        actionListItem.addAction(Resources.skin.fCheckboxOn, translator.translate(1800), new Runnable() { // from class: info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                setter.set(Boolean.TRUE);
            }
        });
        actionListItem.addAction(Resources.skin.fCheckboxOff, translator.translate(3547), new Runnable() { // from class: info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                setter.set(Boolean.FALSE);
            }
        });
        settingsListbox.addItem(actionListItem);
        int i = 0;
        while (i < list.size()) {
            final BiomeDraft biomeDraft = (BiomeDraft) list.get(i);
            if (!biomeDraft.spawnable || biomeDraft.hidden) {
                settingsListbox2 = settingsListbox;
                field2 = field;
            } else {
                ValueProperty valueProperty = new ValueProperty(Boolean.valueOf(!list2.contains(biomeDraft.id)));
                valuePropertyArr[i] = valueProperty;
                settingsListbox.setTargetObject(valueProperty);
                settingsListbox2 = settingsListbox;
                field2 = field;
                settingsListbox2.addItem(new BinarySettingsItem(draftLocalizer.getTitle(biomeDraft), field2, false, settingsListbox2, valuePropertyArr[i]) { // from class: info.flowersoft.theotown.stages.createcity.CreateCityDialogs.1
                    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
                    public int getHeight(boolean z) {
                        return 30;
                    }

                    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem
                    public int getPaddingLeft() {
                        return 30;
                    }

                    @Override // info.flowersoft.theotown.ui.settings.BinarySettingsItem, info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
                    public void draw(boolean z, int i2, int i3, int i4, int i5, int i6, Skin skin) {
                        super.draw(z, i2, i3, i4, i5, i6, skin);
                        Engine engine = skin.engine;
                        int[] iArr = biomeDraft.previewFrames;
                        if (iArr != null && iArr.length > 0) {
                            engine.setColor(Colors.WHITE);
                            engine.drawImage(Resources.IMAGE_WORLD, i3 + 2, (i4 + (i6 / 2.0f)) - 13.0f, 26.0f, 26.0f, biomeDraft.previewFrames[0]);
                        } else {
                            engine.setColor(Colors.GRAY);
                            engine.drawImage(Resources.IMAGE_WORLD, i3 + 2, (i4 + (i6 / 2.0f)) - 13.0f, 26.0f, 26.0f, Resources.FRAME_RECT);
                        }
                    }
                });
            }
            i++;
            field = field2;
            settingsListbox = settingsListbox2;
        }
    }

    public static /* synthetic */ void $r8$lambda$kmx0Xo0xp3Cri534jKQprNxade4(List list, ValueProperty[] valuePropertyArr, Setter setter) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            ValueProperty valueProperty = valuePropertyArr[i];
            if (valueProperty != null && !((Boolean) valueProperty.get()).booleanValue()) {
                arrayList.add(((BiomeDraft) list.get(i)).id);
            }
        }
        setter.set(arrayList);
    }

    public static class ActionListItem extends ListItem {
        public final Runnable action;

        public ActionListItem(String str, Runnable runnable) {
            super(str);
            this.action = runnable;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            skin.engine.setColor(skin.cTextAccent);
            drawText(skin, skin.fontDefault, this.text, i2, i3, i4, i5, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, false);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            super.onClick(i, i2);
            this.action.run();
        }
    }

    public static void showSeedDialog(final Stapel2DGameContext stapel2DGameContext, HeightMapManager heightMapManager, Master master, String str, final Setter<String> setter, final Setter<Stage> setter2) {
        TranslationManager translator = stapel2DGameContext.getTranslator();
        final Dialog dialog = new Dialog(Resources.ICON_MAP, translator.translate(1829), "", 300, 450, master);
        Panel contentPane = dialog.getContentPane();
        final ListBox listBox = new ListBox(0, 0, contentPane.getClientWidth(), contentPane.getClientHeight(), contentPane);
        final ArrayList<String> availableMaps = heightMapManager.getAvailableMaps();
        listBox.addItem(new ActionListItem(translator.translate(1851), new Runnable() { // from class: info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityDialogs.$r8$lambda$jiOPC8cPdojoCuMViVMxHrgAnd4(stapel2DGameContext, setter2);
            }
        }));
        for (String str2 : availableMaps) {
            listBox.addItem(new ListItem(str2, heightMapManager, str2) { // from class: info.flowersoft.theotown.stages.createcity.CreateCityDialogs.2
                public final boolean isPlugin;
                public final /* synthetic */ HeightMapManager val$heightMapManager;
                public final /* synthetic */ String val$id;

                {
                    this.val$heightMapManager = heightMapManager;
                    this.val$id = str2;
                    this.isPlugin = heightMapManager.isPlugin(str2);
                }

                @Override // io.blueflower.stapel2d.gui.ListItem
                public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
                    drawBackground(z, i, i2, i3, i4, i5, skin);
                    if (this.isPlugin) {
                        skin.engine.reset();
                        skin.engine.setScale(0.5f, 0.5f);
                        skin.engine.drawImage(Resources.IMAGE_WORLD, i2 + 2, ((i5 / 2) + i3) - 7, Resources.ICON_PLUGIN);
                    }
                    skin.engine.reset();
                    skin.engine.setColor(z ? Colors.WHITE : skin.cText);
                    drawText(skin, skin.fontDefault, this.text, i2 + 16, i3, i4, i5, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, false);
                }
            });
        }
        if (str.indexOf(35) >= 0) {
            str = str.substring(0, str.indexOf(35));
        }
        listBox.selectItemIndex(availableMaps.indexOf(str) + 1);
        dialog.addCancelButton(Resources.ICON_CANCEL, translator.translate(1477));
        GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, translator.translate(2927), new Runnable() { // from class: info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityDialogs.$r8$lambda$_8hOHGlIanCCNK4kYOvCheFI7mA(dialog, setter, availableMaps, listBox);
            }
        });
        goldButtonAddButton.addSensitiveKey(66);
        goldButtonAddButton.setGolden(true);
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$jiOPC8cPdojoCuMViVMxHrgAnd4(Stapel2DGameContext stapel2DGameContext, Setter setter) {
        StoreStage storeStage = new StoreStage(stapel2DGameContext);
        storeStage.configureCategory(StoreCategory.Builtins.Heightmaps);
        setter.set(storeStage);
    }

    public static /* synthetic */ void $r8$lambda$_8hOHGlIanCCNK4kYOvCheFI7mA(Dialog dialog, Setter setter, ArrayList arrayList, ListBox listBox) {
        dialog.setVisible(false);
        setter.set((String) arrayList.get(listBox.getSelectedItemIndex() - 1));
    }

    public static void showNoPermissionsDialog(Stapel2DGameContext stapel2DGameContext, Master master, final GameStack gameStack) {
        TranslationManager translator = stapel2DGameContext.getTranslator();
        Dialog dialog = new Dialog(Resources.ICON_SAVE, translator.translate(412), translator.translate(1617), master);
        GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, translator.translate(1899), new Runnable() { // from class: info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CreateCityDialogs.$r8$lambda$4akE6z7rJf00MEQ5JFwROBBFZaA(gameStack);
            }
        });
        goldButtonAddButton.setGolden(true);
        goldButtonAddButton.addSensitiveKey(66);
        dialog.setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$4akE6z7rJf00MEQ5JFwROBBFZaA(GameStack gameStack) {
        gameStack.pop();
        gameStack.pop();
    }
}
