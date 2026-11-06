package info.flowersoft.theotown.stages.cityinfo;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.components.management.attribute.GeneralHappiness;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.tools.ToolResolver;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.StaticGetter;
import io.blueflower.stapel2d.util.Tuple;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RatingCityInfo extends ListBasedCityInfo {
    public final AnimationDraft happinessAnimation = (AnimationDraft) Drafts.get("$anim_ui_happiness00", AnimationDraft.class);

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return 2223;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        return city.getTranslator().translate(1539);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public Icon createIcon(City city, Gadget gadget, boolean z) {
        float ratingValue = ((DefaultManagement) city.getComponent(3)).getBuildingSurvey().getRatingValue();
        Icon icon = new Icon(this.happinessAnimation.frames[Math.min((int) (ratingValue * r11.length), r11.length - 1)], 0, 0, 0, 0, gadget) { // from class: info.flowersoft.theotown.stages.cityinfo.RatingCityInfo.1
            @Override // io.blueflower.stapel2d.gui.Icon, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                engine.setScale(2.0f, 2.0f);
                engine.drawImage(Resources.IMAGE_WORLD, i + this.x, i2 + this.y, this.width, this.height, 0.5f, 0.5f, this.frame);
                engine.setScale(1.0f, 1.0f);
            }
        };
        icon.fillParent();
        return icon;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo, info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(final City city, Gadget gadget, Stapel2DGameContext stapel2DGameContext, final GameStack gameStack) {
        float f;
        float fMin;
        super.build(city, gadget, stapel2DGameContext, gameStack);
        DefaultManagement defaultManagement = (DefaultManagement) city.getComponent(3);
        Skin skin = Resources.skin;
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        synchronized (city) {
            try {
                List<Attribute> attributes = AttributeFactory.getAttributes();
                for (int i = 0; i < attributes.size(); i++) {
                    Attribute attribute = attributes.get(i);
                    if (attribute.isVisible() && attribute.isHappiness() && (Settings.debugMode || attribute.isVisible())) {
                        float f2 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                        float f3 = 0.0f;
                        float f4 = 0.0f;
                        int i2 = 0;
                        int i3 = 0;
                        while (i2 < city.getBuildings().size()) {
                            Building building = city.getBuildings().get(i2);
                            ConcreteAttributeContainer concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer();
                            if (building.getBuildingType().isRCIOrDeco() && building.getBuildingType() != BuildingType.DECORATION && !building.inConstruction() && !building.isEmpty() && concreteAttributeContainer != null) {
                                int overallHabitants = building.getOverallHabitants();
                                float f5 = concreteAttributeContainer.getValues()[i];
                                float f6 = concreteAttributeContainer.getDeltas()[i];
                                if (f5 >= f2) {
                                    float f7 = overallHabitants;
                                    f3 += f5 * f7;
                                    f4 += f7 * f6;
                                    i3 += overallHabitants;
                                }
                            }
                            i2++;
                            f2 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                        }
                        if (i3 > 0) {
                            float f8 = i3;
                            fMin = Math.min(Math.max(f3 / f8, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f);
                            f = f4 / f8;
                        } else {
                            f = 0.0f;
                            fMin = 0.5f;
                        }
                        arrayList.add(new Tuple(attribute, Float.valueOf(fMin)));
                        map.put(attribute, Float.valueOf(f));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: info.flowersoft.theotown.stages.cityinfo.RatingCityInfo$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return RatingCityInfo.m2316$r8$lambda$ryamEq5SlCY6M0_jyCz8U5QLU((Tuple) obj, (Tuple) obj2);
            }
        });
        Attribute attribute2 = AttributeFactory.getAttribute((Class<? extends Attribute>) GeneralHappiness.class);
        BuildingSurvey buildingSurvey = defaultManagement.getBuildingSurvey();
        arrayList.add(0, new Tuple(attribute2, Float.valueOf(buildingSurvey.getRatingValue())));
        map.put(attribute2, Float.valueOf(buildingSurvey.getRatingDelta()));
        int i4 = 0;
        while (i4 < arrayList.size()) {
            Tuple tuple = (Tuple) arrayList.get(i4);
            final Attribute attribute3 = (Attribute) tuple.getFirst();
            float fFloatValue = ((Float) tuple.getSecond()).floatValue();
            float fFloatValue2 = ((Float) map.get(attribute3)).floatValue();
            Color color = new Color(255, 255, 255);
            if (fFloatValue <= 0.5f) {
                Colors.interpolate(color, 2.0f * fFloatValue, skin.cTextRed, skin.cTextYellow);
            } else {
                Colors.interpolate(color, (2.0f * fFloatValue) - 1.0f, skin.cTextYellow, skin.cTextGreen);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(StringFormatter.format(stapel2DGameContext.getTranslator().translate(attribute3.getNameLocalizationId()) + ": %1$,.1f%%", Float.valueOf(100.0f * fFloatValue)));
            sb.append(getDeltaSign(fFloatValue2));
            String string = sb.toString();
            int i5 = this.happinessAnimation.frames[Math.min((int) (fFloatValue * r9.length), r9.length - 1)];
            StaticGetter staticGetter = new StaticGetter(string);
            Skin skin2 = Resources.skin;
            addClickableItem(staticGetter, (Getter<String>) null, color, i5, i4 == 0 ? skin2.fontBig : skin2.fontDefault, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.RatingCityInfo$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    RatingCityInfo.m2315$r8$lambda$hPYMPCEiVavW_hxPTGmVmbtl_A(gameStack, city, attribute3);
                }
            });
            i4++;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$ryamEq5SlC-Y6M0_j-yCz8U5QLU, reason: not valid java name */
    public static /* synthetic */ int m2316$r8$lambda$ryamEq5SlCY6M0_jyCz8U5QLU(Tuple tuple, Tuple tuple2) {
        return (int) (-Math.signum(((Float) tuple.getSecond()).floatValue() - ((Float) tuple2.getSecond()).floatValue()));
    }

    /* JADX INFO: renamed from: $r8$lambda$hPYMPC-EiVavW_hxPTGmVmbtl_A, reason: not valid java name */
    public static /* synthetic */ void m2315$r8$lambda$hPYMPCEiVavW_hxPTGmVmbtl_A(GameStack gameStack, City city, Attribute attribute) {
        gameStack.pop();
        city.applyComponent(new ToolResolver(city).resolve(attribute));
    }

    public static String getDeltaSign(float f) {
        if (Math.abs(f) >= 1.0E-4d) {
            String str = f >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? "+" : "-";
            if (Math.abs(f) >= 0.01d) {
                return str + str + str;
            }
            if (Math.abs(f) < 0.005d) {
                return str;
            }
            return str + str;
        }
        return "";
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "RatingCityInfo";
    }

    public String toString() {
        return "Rating";
    }
}
