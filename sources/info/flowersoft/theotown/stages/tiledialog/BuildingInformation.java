package info.flowersoft.theotown.stages.tiledialog;

import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.objects.EmptyBuildingCause;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultPeople;
import info.flowersoft.theotown.components.coverage.Aspect;
import info.flowersoft.theotown.components.coverage.CoverageAspect;
import info.flowersoft.theotown.components.coverage.CoverageCalculator;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.libraries.GUILibrary;
import info.flowersoft.theotown.stages.cityinfo.CityInfo;
import info.flowersoft.theotown.stages.cityinfo.EducationCityInfo;
import info.flowersoft.theotown.stages.cityinfo.HealthCityInfo;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.Selector;
import info.flowersoft.theotown.ui.selectable.SelectableUpgrade;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.SensitiveGadget;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.Pair;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingInformation extends AbstractBuildingInformation {
    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        return this.building != null;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public int getIcon() {
        int iOptint = resolveScriptValue(this.draft, "getIcon").optint(-1);
        return iOptint >= 0 ? iOptint : this.building.getDraft().getIcon();
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public String getTitle() {
        String strOptjstring = resolveScriptValue(this.draft, "getTitle").optjstring(null);
        return strOptjstring != null ? strOptjstring : this.building.getName() != null ? this.building.getName() : new DraftLocalizer(this.city).getTitle(this.building.getDraft());
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public String getText() {
        boolean z;
        EmptyBuildingCause emptyCause;
        String string = "";
        if (!this.building.inConstruction() && !this.building.hasPendingUpgrades()) {
            DraftLocalizer draftLocalizer = new DraftLocalizer(this.city);
            BuildingDraft buildingDraft = this.draft;
            String rCITypeName = draftLocalizer.getRCITypeName(buildingDraft.buildingType, buildingDraft.level);
            if (rCITypeName != null && !rCITypeName.equals(getTitle())) {
                string = "" + rCITypeName + "\n";
            }
            AnimationDraft buildingIcon = this.building.getBuildingIcon();
            if (buildingIcon != null) {
                string = string + draftLocalizer.getTitle(buildingIcon) + "\n";
            }
            int i = 0;
            if (this.building.getText() != null) {
                string = this.building.getText() + "\n";
                z = true;
            } else {
                z = false;
            }
            String strOptjstring = resolveScriptValue(this.draft, "getText").optjstring(null);
            if (strOptjstring != null) {
                string = strOptjstring + "\n";
                z = true;
            }
            if (this.building.getBuildingType().isRCIOrDeco() && this.building.getBuildingType() != BuildingType.DECORATION) {
                DefaultPeople defaultPeople = (DefaultPeople) this.city.getComponent(9);
                if (this.building.isEmpty() && (emptyCause = this.building.getEmptyCause()) != null) {
                    string = string + emptyCause.localize(this.translator, draftLocalizer) + "\n";
                }
                int iRound = Math.round(defaultPeople.countPeopleInBuilding(this.building));
                if (this.building.isWorking() && iRound <= 0 && this.building.getOverallPeople() > 0) {
                    iRound = 1;
                }
                BuildingDraft buildingDraft2 = this.draft;
                int i2 = buildingDraft2.habitants + buildingDraft2.workers;
                if (!z) {
                    string = this.building.getBuildingType() == BuildingType.RESIDENTIAL ? string + StringFormatter.format(this.translator.translate(Sdk.SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE), Integer.valueOf(Math.min(iRound, i2)), Integer.valueOf(i2)) : string + StringFormatter.format(this.translator.translate(3260), Integer.valueOf(Math.min(iRound, i2)), Integer.valueOf(i2));
                }
                ConcreteAttributeContainer concreteAttributeContainer = (ConcreteAttributeContainer) this.building.getAttributeContainer();
                if (!this.building.isEmpty() && concreteAttributeContainer != null) {
                    ArrayList arrayList = new ArrayList();
                    List<Attribute> attributes = AttributeFactory.getAttributes();
                    for (int i3 = 0; i3 < attributes.size(); i3++) {
                        Attribute attribute = attributes.get(i3);
                        if (attribute.isVisible() && attribute.isHappiness()) {
                            float f = concreteAttributeContainer.getValues()[i3];
                            if (f >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                                arrayList.add(new Pair(attribute, Float.valueOf(f)));
                            }
                        }
                    }
                    Collections.sort(arrayList, new Comparator<Pair<Attribute, Float>>() { // from class: info.flowersoft.theotown.stages.tiledialog.BuildingInformation.1
                        @Override // java.util.Comparator
                        public int compare(Pair<Attribute, Float> pair, Pair<Attribute, Float> pair2) {
                            return Float.compare(pair.getSecond().floatValue(), pair2.getSecond().floatValue());
                        }
                    });
                    string = string + "\n" + StringFormatter.format(this.translator.translate(3213), Float.valueOf(Math.min(Math.max(concreteAttributeContainer.getHappiness(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f) * 100.0f));
                    if (!arrayList.isEmpty()) {
                        while (i < Math.min(3, arrayList.size())) {
                            Attribute attribute2 = (Attribute) ((Pair) arrayList.get(i)).getFirst();
                            float fFloatValue = ((Float) ((Pair) arrayList.get(i)).getSecond()).floatValue() * 100.0f;
                            String strTranslate = this.translator.translate(attribute2.getNameLocalizationId());
                            StringBuilder sb = new StringBuilder();
                            sb.append(string);
                            sb.append("\n");
                            sb.append(StringFormatter.format(this.translator.translate(i == 0 ? 1170 : 2364), strTranslate, Float.valueOf(fFloatValue)));
                            string = sb.toString();
                            i++;
                        }
                    }
                }
            } else {
                if (!z) {
                    string = (string + new DraftLocalizer(this.city).getText(this.draft)) + "\n";
                }
                if (!this.city.getGameMode().hasInfinityMoney()) {
                    long monthlyPrice = this.building.getMonthlyPrice();
                    if (monthlyPrice > 0) {
                        string = string + "\n" + StringFormatter.format(this.translator.translate(176), Localizer.localizeMoney(monthlyPrice));
                    } else if (monthlyPrice < 0) {
                        string = string + "\n" + StringFormatter.format(this.translator.translate(174), Localizer.localizeMoney(-monthlyPrice));
                    }
                }
                CoverageCalculator coverageCalculator = ((DefaultManagement) this.city.getComponent(3)).getCoverageCalculator();
                int[] iArr = CoverageAspect.values;
                int length = iArr.length;
                while (i < length) {
                    int i4 = iArr[i];
                    Aspect aspectFor = coverageCalculator.getAspectFor(i4);
                    int usedAspectAmount = this.building.getUsedAspectAmount(i4);
                    int iProvidedAmount = aspectFor.providedAmount(this.building);
                    if (aspectFor.providedAmount(this.building) > 0) {
                        string = string + "\n" + StringFormatter.format(this.translator.translate(CoverageAspect.textIds[i4]), Integer.valueOf(usedAspectAmount), Integer.valueOf(iProvidedAmount));
                    }
                    i++;
                }
            }
            if (this.building.getBuildingType() != BuildingType.TERRAIN && this.building.getBuildingType() != BuildingType.DESTROYED && this.building.getBuildingType() != BuildingType.DECORATION) {
                return string + "\n" + StringFormatter.format(this.translator.translate(1315), Integer.valueOf((int) this.building.getDaysBuilt(((DefaultDate) this.city.getComponent(1)).getAbsoluteDay())));
            }
        }
        return string;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void finish(final Dialog dialog, final Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
        if (!this.city.isReadonly()) {
            if (this.draft.renameable) {
                new SensitiveGadget(dialog.getTitleLabel().getX(), dialog.getTitleLabel().getY(), dialog.getTitleLabel().getClientWidth(), dialog.getTitleLabel().getHeight(), dialog.getTitleLabel().getParent()) { // from class: info.flowersoft.theotown.stages.tiledialog.BuildingInformation.2
                    @Override // io.blueflower.stapel2d.gui.Gadget
                    public void onClick() {
                        super.onClick();
                        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder((Master) dialog.getContentPane().getAbsoluteParent(), BuildingInformation.this.translator, stapel2DGameContext.getKey());
                        renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer<String>() { // from class: info.flowersoft.theotown.stages.tiledialog.BuildingInformation.2.1
                            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
                            public void accept(String str) {
                                BuildingInformation.this.building.setName(str);
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                dialog.setTitle(BuildingInformation.this.getTitle());
                            }
                        });
                        renameDialogBuilder.build(Resources.ICON_EDIT, BuildingInformation.this.translator.translate(2745), BuildingInformation.this.translator.translate(1578), BuildingInformation.this.getTitle()).setVisible(true);
                    }
                };
                Icon icon = new Icon(Resources.ICON_EDIT, 0, 0, 0, 0, dialog.getTitleLabel()) { // from class: info.flowersoft.theotown.stages.tiledialog.BuildingInformation.3
                    @Override // io.blueflower.stapel2d.gui.Icon, io.blueflower.stapel2d.gui.Gadget
                    public void draw(int i, int i2) {
                        this.skin.engine.drawImage(Resources.IMAGE_WORLD, i + this.x + 7, i2 + this.y, this.width + 7, this.height, 1.0f, 0.5f, this.frame);
                    }
                };
                icon.fillParent();
                icon.setAlignment(1.0f, 0.5f);
                dialog.getTitleLabel().setWidth(dialog.getTitleLabel().getWidth() - 12);
            }
            if (this.building.getBuildingType().isRCIOrDeco() && this.building.getBuildingType() != BuildingType.DECORATION) {
                new IconButton(Resources.ICON_UNTOUCHABLE, this.translator.translate(3291), 0, 0, 0, dialog.getControlLine().getFirstPart().getClientHeight(), dialog.getControlLine().getFirstPart()) { // from class: info.flowersoft.theotown.stages.tiledialog.BuildingInformation.4
                    @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void draw(int i, int i2) {
                        if (isPressed()) {
                            drawNinePatch(i, i2, this.skin.npButtonDown);
                        } else {
                            drawNinePatch(i, i2, this.skin.npButton);
                        }
                        drawChildren(i, i2 + (isPressed() ? 2 : 0));
                    }

                    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void onClick() {
                        super.onClick();
                        BuildingInformation.this.building.setUntouchable(!r0.isUntouchable());
                    }

                    @Override // io.blueflower.stapel2d.gui.Button
                    public boolean isPressed() {
                        return super.isPressed() ^ BuildingInformation.this.building.isUntouchable();
                    }
                }.setId("cmdUntouchable");
            }
        }
        List<UpgradeDraft> visibleUpgrades = this.building.getDraft().getVisibleUpgrades();
        if (visibleUpgrades.size() == 0 || this.building.inConstruction() || this.building.hasPendingUpgrades()) {
            return;
        }
        new IconButton(Resources.ICON_UPGRADE, StringFormatter.format(this.translator.translate(3004), Integer.valueOf(this.building.getUpgrades().size()), Integer.valueOf(visibleUpgrades.size())), 0, 0, 0, dialog.getControlLine().getFirstPart().getClientHeight(), dialog.getControlLine().getFirstPart()) { // from class: info.flowersoft.theotown.stages.tiledialog.BuildingInformation.5
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                dialog.clearButtons();
                dialog.getContentPane().removeAllChildren();
                Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.tiledialog.BuildingInformation.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        dialog.setVisible(false);
                    }
                };
                ArrayList arrayList = new ArrayList();
                for (UpgradeDraft upgradeDraft : BuildingInformation.this.building.getDraft().upgrades) {
                    BuildingInformation buildingInformation = BuildingInformation.this;
                    SelectableUpgrade selectableUpgrade = new SelectableUpgrade(buildingInformation.city, upgradeDraft, buildingInformation.building);
                    selectableUpgrade.setOnSelect(runnable);
                    arrayList.add(selectableUpgrade);
                }
                dialog.abuseFor(new Selector(BuildingInformation.this.translator.translate(2014), dialog.getContentPane(), arrayList));
                dialog.addHiddenCancelButton();
            }
        }.setEnabled(!this.building.isBurning());
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void finishLast(Dialog dialog) {
        resolveScriptValue(this.draft, "finishInformationDialog", GUILibrary.wrapDialog(dialog));
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.tiledialog.BuildingInformation$6, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass6 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$draft$BuildingType;

        static {
            int[] iArr = new int[BuildingType.values().length];
            $SwitchMap$info$flowersoft$theotown$draft$BuildingType = iArr;
            try {
                iArr[BuildingType.EDUCATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.MEDIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.RESIDENTIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.COMMERCIAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.INDUSTRIAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.PARK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.SPORT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.FIRE_BRIGADE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.POLICE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.ENERGY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.WATER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.RELIGION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public CityInfo[] getCityInfos() {
        if (!this.building.isWorking()) {
            return null;
        }
        int i = AnonymousClass6.$SwitchMap$info$flowersoft$theotown$draft$BuildingType[this.building.getBuildingType().ordinal()];
        if (i == 1) {
            return new CityInfo[]{new EducationCityInfo()};
        }
        if (i != 2) {
            return null;
        }
        return new CityInfo[]{new HealthCityInfo()};
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public int getSound() {
        int i = this.draft.soundClick;
        if (i != -1) {
            return i;
        }
        switch (AnonymousClass6.$SwitchMap$info$flowersoft$theotown$draft$BuildingType[this.building.getBuildingType().ordinal()]) {
            case 1:
                return Resources.SOUND_SCHOOL;
            case 2:
                return Resources.SOUND_MEDIC;
            case 3:
                return Resources.SOUND_RESIDENTIAL;
            case 4:
                return Resources.SOUND_COMMERCIAL;
            case 5:
                return Resources.SOUND_INDUSTRIAL;
            case 6:
                return Resources.SOUND_PARK;
            case 7:
                return Resources.SOUND_SPORT;
            case 8:
                return Resources.SOUND_FIREDEPARTMENT;
            case 9:
                return Resources.SOUND_POLICE;
            case 10:
                return Resources.SOUND_POWER;
            case 11:
                return Resources.SOUND_BUILD_WATER;
            case 12:
                return Resources.SOUND_RELIGION;
            default:
                return super.getSound();
        }
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public int[] getInfluenceVector() {
        if (!this.building.isWorking()) {
            return null;
        }
        int[] iArrCopyOf = this.draft.influenceInduceVector;
        List<UpgradeDraft> upgrades = this.building.getUpgrades();
        if (!upgrades.isEmpty()) {
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, iArrCopyOf.length);
            for (int i = 0; i < upgrades.size(); i++) {
                for (int i2 = 0; i2 < iArrCopyOf.length; i2++) {
                    iArrCopyOf[i2] = iArrCopyOf[i2] + upgrades.get(i).influenceInduceVector[i2];
                }
            }
        }
        return iArrCopyOf;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public int getPluginId() {
        return this.draft.pluginId;
    }
}
