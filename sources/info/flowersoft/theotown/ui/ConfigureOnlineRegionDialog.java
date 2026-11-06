package info.flowersoft.theotown.ui;

import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.cityfile.OnlineMapDirectory;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.online.RegionSettings;
import info.flowersoft.theotown.online.RegionTagMap;
import info.flowersoft.theotown.online.VirtualRegion;
import info.flowersoft.theotown.region.RegionIcon;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.listitem.GroupItem;
import info.flowersoft.theotown.ui.settings.SettingsListbox;
import info.flowersoft.theotown.ui.settings.ValueSettingsItem;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import kotlin.enums.EnumEntries;

/* JADX INFO: loaded from: classes4.dex */
public class ConfigureOnlineRegionDialog extends Dialog {
    public final Stapel2DGameContext context;
    public final Master gui;
    public final OnlineMapDirectory omd;
    public final Runnable onChanged;
    public RegionSettings originalSettings;
    public RegionSettings settings;
    public final Translator translator;

    public ConfigureOnlineRegionDialog(OnlineMapDirectory onlineMapDirectory, Runnable runnable, Stapel2DGameContext stapel2DGameContext, Master master) {
        super(Resources.ICON_SETTINGS, stapel2DGameContext.getTranslator().translate(975), "", 300, Sdk.SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, master);
        this.omd = onlineMapDirectory;
        this.onChanged = runnable;
        this.context = stapel2DGameContext;
        this.translator = stapel2DGameContext.getTranslator();
        this.gui = master;
        extractSettings();
        setup();
    }

    public final void extractSettings() {
        VirtualRegion virtualRegion = this.omd.getVirtualRegion();
        RegionTagMap tags = this.omd.getRegionStore().getTags();
        this.originalSettings = new RegionSettings(virtualRegion, tags);
        this.settings = new RegionSettings(virtualRegion, tags);
    }

    public final void setup() {
        addHiddenCancelButton();
        addButton(Resources.ICON_EYE, this.translator.translate(3232), false, false, true, new Runnable() { // from class: info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ConfigureOnlineRegionDialog.$r8$lambda$ADcinz9GCCL12uFb52vjZz0p4Ow(this.f$0);
            }
        });
        addButton(Resources.ICON_OK, this.translator.translate(3456), false, true, true, new Runnable() { // from class: info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.apply();
            }
        }).setGolden(true).addSensitiveKey(66);
        distributeButtons();
        buildContent();
    }

    public static /* synthetic */ void $r8$lambda$ADcinz9GCCL12uFb52vjZz0p4Ow(ConfigureOnlineRegionDialog configureOnlineRegionDialog) {
        int frame = configureOnlineRegionDialog.settings.icon.getFrame();
        String name = configureOnlineRegionDialog.omd.getRegionInformation().getName();
        RegionSettings regionSettings = configureOnlineRegionDialog.settings;
        String str = regionSettings.rules;
        String str2 = regionSettings.infos;
        boolean z = regionSettings.allowPlugins;
        boolean z2 = regionSettings.allowSandbox;
        long ownerId = configureOnlineRegionDialog.omd.getOwnerId();
        String authorName = configureOnlineRegionDialog.omd.getAuthorName();
        Color authorColor = configureOnlineRegionDialog.omd.getAuthorColor();
        RegionSettings regionSettings2 = configureOnlineRegionDialog.settings;
        new RegionRulesDialog(frame, name, str, str2, z, z2, 1000L, ownerId, authorName, authorColor, regionSettings2.tags, regionSettings2.availableTags, configureOnlineRegionDialog.context, null, (Master) configureOnlineRegionDialog.contentPane.getAbsoluteParent()).setVisible(true);
    }

    private void buildContent() {
        SettingsListbox settingsListbox = new SettingsListbox(this.translator.prefersRTL(), 0, 0, 0, 0, getContentPane());
        settingsListbox.fillParent();
        settingsListbox.setTargetObject(this.settings);
        try {
            settingsListbox.addItem(new EditIconListItem(this.translator, this.settings, this.gui));
            settingsListbox.addBinarySettingsItem(this.translator.translate(891), this.settings.getClass().getDeclaredField("allowPlugins"), false);
            settingsListbox.addBinarySettingsItem(this.translator.translate(3519), this.settings.getClass().getDeclaredField("allowSandbox"), false);
            settingsListbox.addEditableTextItem(this.translator.translate(2865), this.translator.translate(1472), this.settings.getClass().getDeclaredField("infos"), false, this.context);
            settingsListbox.addEditableTextItem(this.translator.translate(188), this.translator.translate(1791), this.settings.getClass().getDeclaredField("rules"), false, this.context);
            String[] strArr = new String[this.settings.availableTags.size()];
            for (int i = 0; i < this.settings.availableTags.size(); i++) {
                strArr[i] = this.settings.availableTags.getNameById(this.settings.availableTags.getId(i));
            }
            settingsListbox.addValueSettingsItem(this.translator.translate(Sdk.SDKError.Reason.AD_LOAD_FAIL_PLACEMENT_ID_MISMATCH_VALUE), strArr, false, new ValueSettingsItem.Selection() { // from class: info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog.1
                @Override // info.flowersoft.theotown.ui.settings.ValueSettingsItem.Selection
                public boolean isSelected(int i2) {
                    return ConfigureOnlineRegionDialog.this.settings.tags.contains(ConfigureOnlineRegionDialog.this.settings.availableTags.getId(i2));
                }

                @Override // info.flowersoft.theotown.ui.settings.ValueSettingsItem.Selection
                public void select(int i2) {
                    int id = ConfigureOnlineRegionDialog.this.settings.availableTags.getId(i2);
                    if (ConfigureOnlineRegionDialog.this.settings.tags.contains(id)) {
                        ConfigureOnlineRegionDialog.this.settings.tags.removeValue(id);
                        return;
                    }
                    ConfigureOnlineRegionDialog.this.settings.tags.add(id);
                    while (ConfigureOnlineRegionDialog.this.settings.tags.size() > 3) {
                        ConfigureOnlineRegionDialog.this.settings.tags.removeAt(0);
                    }
                }
            });
            if (this.settings.hasPasswordDefined) {
                settingsListbox.addEditableTextItem(this.translator.translate(3296), this.translator.translate(2556), this.settings.getClass().getDeclaredField("password"), false, this.context);
                settingsListbox.addBinarySettingsItem(this.translator.translate(1422), this.settings.getClass().getDeclaredField("enforcePassword"), false);
            }
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    public final void apply() {
        if (this.settings.equals(this.originalSettings)) {
            this.onChanged.run();
        } else {
            this.omd.applySettings(this.settings, new Service.Handler() { // from class: info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog.2
                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onSuccess(JSONObject jSONObject) {
                    TheoTown.analytics.logEvent("online", "configure region", ConfigureOnlineRegionDialog.this.omd.getRegionInformation().getName());
                    ConfigureOnlineRegionDialog.this.onChanged.run();
                }

                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onFailure(JSONObject jSONObject) {
                    TheoTown.runtimeFeatures.showToast("Error: " + jSONObject.optString("hint", jSONObject.optString("status")));
                }
            });
        }
    }

    public static class EditIconListItem extends ListItem {
        public final Master gui;
        public final RegionSettings settings;
        public final Translator translator;

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 26;
        }

        public EditIconListItem(Translator translator, RegionSettings regionSettings, Master master) {
            super(translator.translate(2996));
            this.translator = translator;
            this.settings = regionSettings;
            this.gui = master;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            super.drawBackground(false, i, i2, i3, i4, i5, skin);
            Engine engine = skin.engine;
            engine.setColor(skin.cText);
            float f = i3;
            engine.drawText(skin.fontDefault, this.text, i2 + 5, f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i5, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
            engine.reset();
            int frame = this.settings.icon.getFrame();
            Image image = skin.img;
            engine.drawImage(image, ((i2 + i4) - 5) - image.getWidth(frame), f, frame);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            super.onClick(i, i2);
            Dialog dialog = new Dialog(this.settings.icon.getFrame(), this.translator.translate(2340), "", 260, 200, this.gui);
            dialog.addHiddenCancelButton();
            dialog.removeControlLine();
            ListBox listBox = new ListBox(0, 0, 0, 0, dialog.contentPane);
            listBox.fillParent();
            int clientWidth = listBox.getClientWidth() / 26;
            EnumEntries<RegionIcon> entries = RegionIcon.getEntries();
            GroupItem groupItem = null;
            int i3 = 0;
            while (i3 < entries.size()) {
                if (i3 % clientWidth == 0) {
                    groupItem = new GroupItem();
                    listBox.addItem(groupItem);
                }
                GroupItem groupItem2 = groupItem;
                final RegionIcon regionIcon = entries.get(i3);
                final int frame = regionIcon.getFrame();
                final Dialog dialog2 = dialog;
                dialog = dialog2;
                groupItem2.add(new ListItem("") { // from class: info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog.EditIconListItem.1
                    @Override // io.blueflower.stapel2d.gui.ListItem
                    public int getHeight(boolean z) {
                        return 26;
                    }

                    @Override // io.blueflower.stapel2d.gui.ListItem
                    public void draw(boolean z, int i4, int i5, int i6, int i7, int i8, Skin skin) {
                        super.drawBackground(regionIcon == EditIconListItem.this.settings.icon, i4, i5, i6, i7, i8, skin);
                        skin.engine.drawImage(skin.img, i5 + ((i7 - skin.img.getWidth(frame)) * 0.5f), i6 + ((i8 - skin.img.getHeight(frame)) * 0.5f), frame);
                    }

                    @Override // io.blueflower.stapel2d.gui.ListItem
                    public void onClick(int i4, int i5) {
                        super.onClick(i4, i5);
                        EditIconListItem.this.settings.icon = regionIcon;
                        dialog2.setVisible(false);
                    }
                });
                i3++;
                groupItem = groupItem2;
            }
            if (groupItem != null) {
                for (int i4 = 0; i4 < clientWidth - (entries.size() % clientWidth); i4++) {
                    groupItem.add(new ListItem(""));
                }
            }
            dialog.setVisible(true);
        }
    }
}
