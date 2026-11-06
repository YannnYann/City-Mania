package info.flowersoft.theotown.components.management;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.EmptyBuildingCause;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultDemand;
import info.flowersoft.theotown.components.DefaultPeople;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.components.management.attribute.HappinessContext;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.SortedList;
import io.blueflower.stapel2d.util.MinimumSelector;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class HappinessWorker {
    public City city;
    public float[] counts;
    public DefaultDate date;
    public DefaultPeople defaultPeople;
    public HappinessCalculator happinessCalculator;
    public Building lowHappinessBuilding;
    public Attribute lowestHappiness;
    public Building lowestHappinessBuilding;
    public float lowestHappinessValue;
    public float[] means;
    public float[] variances;
    public int[] residential = new int[9];
    public int[] commercial = new int[9];
    public int[] industrial = new int[9];
    public float[] residentialHappiness = new float[3];
    public float[] commercialHappiness = new float[3];
    public float[] industrialHappiness = new float[3];
    public MinimumSelector<Attribute> globalHappinessSelector = new MinimumSelector<>();
    public MinimumSelector<Attribute> localHappinessSelector = new MinimumSelector<>();
    public HappinessContext happinessContext = new HappinessContext();
    public HappinessContext newBuildingContext = new HappinessContext();

    public HappinessWorker() {
        float[] fArr = new float[AttributeFactory.countAttributes()];
        this.variances = fArr;
        float[] fArr2 = new float[fArr.length];
        this.means = fArr2;
        this.counts = new float[fArr.length];
        Arrays.fill(fArr2, -1.0f);
    }

    public void setCity(City city, HappinessCalculator happinessCalculator) {
        this.happinessCalculator = happinessCalculator;
        this.city = city;
        this.defaultPeople = (DefaultPeople) city.getComponent(9);
        this.date = (DefaultDate) city.getComponent(1);
    }

    public BuildingSurvey work(BuildingSurvey buildingSurvey) {
        float ratingValue;
        float f;
        float f2;
        Iterator it;
        float f3;
        float happiness;
        float[] fArr = this.means;
        float f4 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        Arrays.fill(fArr, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Arrays.fill(this.variances, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Arrays.fill(this.counts, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Arrays.fill(this.residential, 0);
        Arrays.fill(this.commercial, 0);
        Arrays.fill(this.industrial, 0);
        Arrays.fill(this.residentialHappiness, 0.5f);
        Arrays.fill(this.commercialHappiness, 0.5f);
        Arrays.fill(this.industrialHappiness, 0.5f);
        this.globalHappinessSelector.clear();
        this.localHappinessSelector.clear();
        this.lowHappinessBuilding = null;
        BuildingSurvey buildingSurvey2 = new BuildingSurvey(buildingSurvey);
        List<Attribute> attributes = AttributeFactory.getAttributes();
        SortedList<Building> rciBuildings = this.city.getBuildings().getRciBuildings();
        Iterator it2 = new SafeListAccessor(rciBuildings).iterator();
        float f5 = 0.0f;
        float f6 = 0.0f;
        while (it2.hasNext()) {
            Building building = (Building) it2.next();
            ConcreteAttributeContainer concreteAttributeContainerRegisterNewBuilding = (ConcreteAttributeContainer) building.getAttributeContainer();
            if (concreteAttributeContainerRegisterNewBuilding == null && building.getBuildingType().isRCIOrDeco() && building.getBuildingType() != BuildingType.DECORATION && !building.isEmpty()) {
                concreteAttributeContainerRegisterNewBuilding = registerNewBuilding(building);
            }
            if (building.isEmpty() || concreteAttributeContainerRegisterNewBuilding == null) {
                f2 = f4;
                it = it2;
                f3 = f5;
            } else {
                int level = building.getLevel();
                float fCountPeopleInBuilding = this.defaultPeople.countPeopleInBuilding(building);
                boolean zInConstruction = building.inConstruction();
                f2 = f4;
                if (zInConstruction) {
                    it = it2;
                    f3 = f5;
                    happiness = f2;
                } else {
                    this.happinessCalculator.getHappinessContext(this.happinessContext, building);
                    HappinessContext happinessContext = this.happinessContext;
                    happinessContext.survey = buildingSurvey2;
                    happinessContext.people = Math.round(fCountPeopleInBuilding);
                    this.happinessCalculator.updateAttributeContainter(this.happinessContext, concreteAttributeContainerRegisterNewBuilding);
                    happiness = concreteAttributeContainerRegisterNewBuilding.getHappiness();
                    float minHappinessValue = concreteAttributeContainerRegisterNewBuilding.getMinHappinessValue();
                    Attribute attribute = AttributeFactory.getAttribute(concreteAttributeContainerRegisterNewBuilding.getMinHappinessIndex());
                    if (this.city.getGameMode().peopleMayLeave()) {
                        it = it2;
                        f3 = f5;
                        if (happiness < 0.2d && building.getDaysBuilt(this.date.getAbsoluteDay()) >= 7.0d) {
                            float fNextFloat = Resources.RND.nextFloat();
                            float f7 = fNextFloat * fNextFloat;
                            float f8 = f7 * f7;
                            if ((5.0f * happiness) + 0.01f < f8 * f8) {
                                building.setEmpty(true, EmptyBuildingCause.forHappiness(attribute, minHappinessValue));
                            }
                        }
                    } else {
                        it = it2;
                        f3 = f5;
                    }
                    f6 += fCountPeopleInBuilding * happiness;
                    float[] values = concreteAttributeContainerRegisterNewBuilding.getValues();
                    for (int i = 0; i < values.length; i++) {
                        if (values[i] >= f2 && attributes.get(i).isHappiness() && !Float.isNaN(values[i])) {
                            if (this.globalHappinessSelector.assume(attributes.get(i), values[i])) {
                                this.lowHappinessBuilding = building;
                            }
                            float[] fArr2 = this.means;
                            fArr2[i] = fArr2[i] + (values[i] * fCountPeopleInBuilding);
                            float[] fArr3 = this.counts;
                            fArr3[i] = fArr3[i] + fCountPeopleInBuilding;
                        }
                    }
                }
                int i2 = building.getDraft().habitants + building.getDraft().workers;
                int i3 = AnonymousClass1.$SwitchMap$info$flowersoft$theotown$draft$BuildingType[building.getBuildingType().getBaseType().ordinal()];
                if (i3 == 1) {
                    int[] iArr = this.residential;
                    int i4 = (zInConstruction ? 6 : 0) + level;
                    iArr[i4] = iArr[i4] + i2;
                    if (!zInConstruction) {
                        int i5 = level + 3;
                        iArr[i5] = iArr[i5] + 1;
                        float[] fArr4 = this.residentialHappiness;
                        fArr4[level] = fArr4[level] + (happiness * i2);
                    }
                } else if (i3 == 2) {
                    int[] iArr2 = this.commercial;
                    int i6 = (zInConstruction ? 6 : 0) + level;
                    iArr2[i6] = iArr2[i6] + i2;
                    if (!zInConstruction) {
                        int i7 = level + 3;
                        iArr2[i7] = iArr2[i7] + 1;
                        float[] fArr5 = this.commercialHappiness;
                        fArr5[level] = fArr5[level] + (happiness * i2);
                    }
                } else if (i3 == 3) {
                    int[] iArr3 = this.industrial;
                    int i8 = (zInConstruction ? 6 : 0) + level;
                    iArr3[i8] = iArr3[i8] + i2;
                    if (!zInConstruction) {
                        int i9 = level + 3;
                        iArr3[i9] = iArr3[i9] + 1;
                        float[] fArr6 = this.industrialHappiness;
                        fArr6[level] = fArr6[level] + (happiness * i2);
                    }
                }
                f5 = f3 + fCountPeopleInBuilding;
                it2 = it;
                f4 = f2;
            }
            it2 = it;
            f4 = f2;
            f5 = f3;
        }
        float f9 = f4;
        float f10 = f5;
        if (f10 > f9) {
            float f11 = f6 / f10;
            ratingValue = f11 - buildingSurvey.getRatingValue();
            f = f11;
        } else {
            ratingValue = f9;
            f = 0.5f;
        }
        int i10 = 0;
        while (true) {
            float[] fArr7 = this.means;
            if (i10 >= fArr7.length) {
                break;
            }
            float f12 = this.counts[i10];
            if (f12 > f9) {
                fArr7[i10] = fArr7[i10] / f12;
            } else {
                fArr7[i10] = -1.0f;
            }
            i10++;
        }
        for (Building building2 : new SafeListAccessor(rciBuildings)) {
            ConcreteAttributeContainer concreteAttributeContainer = (ConcreteAttributeContainer) building2.getAttributeContainer();
            if (!building2.isEmpty() && concreteAttributeContainer != null) {
                float fCountPeopleInBuilding2 = this.defaultPeople.countPeopleInBuilding(building2);
                float[] values2 = concreteAttributeContainer.getValues();
                for (int i11 = 0; i11 < values2.length; i11++) {
                    float f13 = values2[i11] - this.means[i11];
                    float[] fArr8 = this.variances;
                    fArr8[i11] = fArr8[i11] + (f13 * f13 * fCountPeopleInBuilding2);
                }
            }
        }
        for (int i12 = 0; i12 < this.means.length; i12++) {
            float[] fArr9 = this.variances;
            fArr9[i12] = fArr9[i12] / this.counts[i12];
        }
        BuildingSurvey buildingSurvey3 = new BuildingSurvey(this.residential, this.commercial, this.industrial, this.residentialHappiness, this.commercialHappiness, this.industrialHappiness, f, ratingValue);
        buildingSurvey3.properties = buildingSurvey2.properties;
        ((DefaultPeople) this.city.getComponent(9)).calculate(buildingSurvey3);
        ((DefaultDemand) this.city.getComponent(10)).calculate(buildingSurvey3);
        if (this.globalHappinessSelector.hasResult()) {
            Attribute minimum = this.globalHappinessSelector.getMinimum();
            float minimumValue = this.globalHappinessSelector.getMinimumValue();
            Building building3 = this.lowHappinessBuilding;
            this.lowestHappiness = minimum;
            this.lowestHappinessValue = minimumValue;
            this.lowestHappinessBuilding = building3;
            return buildingSurvey3;
        }
        this.lowestHappiness = null;
        return buildingSurvey3;
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.components.management.HappinessWorker$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$draft$BuildingType;

        static {
            int[] iArr = new int[BuildingType.values().length];
            $SwitchMap$info$flowersoft$theotown$draft$BuildingType = iArr;
            try {
                iArr[BuildingType.RESIDENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.COMMERCIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.INDUSTRIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public final ConcreteAttributeContainer registerNewBuilding(Building building) {
        ConcreteAttributeContainer concreteAttributeContainer = new ConcreteAttributeContainer();
        this.happinessCalculator.getHappinessContext(this.newBuildingContext, building);
        this.happinessCalculator.initAttributeContainer(this.newBuildingContext, concreteAttributeContainer);
        building.setAttributeContainer(concreteAttributeContainer);
        return concreteAttributeContainer;
    }
}
