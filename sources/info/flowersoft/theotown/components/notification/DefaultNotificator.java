package info.flowersoft.theotown.components.notification;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.components.Notification;
import info.flowersoft.theotown.city.components.NotificationAction;
import info.flowersoft.theotown.city.components.Notificator;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.CrimeType;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.buildingcontroller.BodyDisposalController;
import info.flowersoft.theotown.components.buildingcontroller.FullHospitalController;
import info.flowersoft.theotown.components.buildingcontroller.FullSchoolController;
import info.flowersoft.theotown.components.buildingcontroller.PollutedWaterPumpController;
import info.flowersoft.theotown.components.buildingcontroller.WasteController;
import info.flowersoft.theotown.components.disaster.CrimeDisaster;
import info.flowersoft.theotown.components.disaster.EarthQuakeDisaster;
import info.flowersoft.theotown.components.disaster.FloodingDisaster;
import info.flowersoft.theotown.components.disaster.MeteoriteDisaster;
import info.flowersoft.theotown.components.disaster.NukeDisaster;
import info.flowersoft.theotown.components.disaster.RiotDisaster;
import info.flowersoft.theotown.components.disaster.TornadoDisaster;
import info.flowersoft.theotown.components.disaster.UfoDisaster;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.notification.condition.Condition;
import info.flowersoft.theotown.components.notification.condition.DelayedConditionDecorator;
import info.flowersoft.theotown.components.notification.task.TaskManager;
import info.flowersoft.theotown.components.traffic.CarTrafficHandler;
import info.flowersoft.theotown.components.traffic.FlyingTrafficHandler;
import info.flowersoft.theotown.components.traffic.flyingobjectcontroller.RocketController;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.cityinfo.CityInfoAction;
import info.flowersoft.theotown.stages.cityinfo.EducationCityInfo;
import info.flowersoft.theotown.stages.cityinfo.EnergyCityInfo;
import info.flowersoft.theotown.stages.cityinfo.HealthCityInfo;
import info.flowersoft.theotown.stages.cityinfo.WaterCityInfo;
import info.flowersoft.theotown.tools.MarkTool;
import info.flowersoft.theotown.tools.ToolResolver;
import info.flowersoft.theotown.tools.marker.TrafficMarker;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.StaticGetter;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultNotificator extends Notificator {
    public final AnimationDraft DEMONSTRATION_OCCUPATION;
    public final AnimationDraft RIOT_OCCUPATION;
    public Notification currentNotification;
    public final Set<String> hiddenIds;
    public final Set<Notification> hiddenNotifications;
    public boolean locked;
    public final Queue<Notification> notificationQueue;
    public final List<Notification> notifications;
    public SimpleNotification sn;
    public final TaskManager taskManager;
    public final Translator translator;

    public DefaultNotificator(City city) {
        this.DEMONSTRATION_OCCUPATION = (AnimationDraft) Drafts.get("$animationprotester00", AnimationDraft.class);
        this.RIOT_OCCUPATION = (AnimationDraft) Drafts.get("$animationriot00", AnimationDraft.class);
        this.hiddenIds = new HashSet();
        this.notifications = new ArrayList();
        this.notificationQueue = new ArrayDeque();
        this.hiddenNotifications = new HashSet();
        this.city = city;
        this.translator = city.getTranslator();
        if (!city.isReadonly()) {
            buildImportantNotifications();
            buildNotifications();
            if (city.getGameMode() != GameMode.SANDBOX && city.getGameMode().hasGameLogic()) {
                buildOtherNotifications();
            }
        }
        this.taskManager = new TaskManager(city);
        this.locked = true;
    }

    public TaskManager getTaskManager() {
        return this.taskManager;
    }

    public void showNotification(Notification notification) {
        if (notification.isImmersive()) {
            informListeners(notification);
        } else if (!this.notificationQueue.contains(notification)) {
            this.notificationQueue.add(notification);
        }
        poll();
    }

    public final void buildNotifications() {
        addNotification(new WelcomeNotification(this.city));
        PowerNotification powerNotification = new PowerNotification(this.city, Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 0.9f, 0.8f);
        this.sn = powerNotification;
        powerNotification.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda23
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyLowPower;
            }
        });
        this.sn.addAction(new CityInfoAction(new EnergyCityInfo(), this.city));
        addNotification(this.sn);
        WaterNotification waterNotification = new WaterNotification(this.city, 549, 0.9f, 0.8f);
        this.sn = waterNotification;
        waterNotification.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda24
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyLowWater;
            }
        });
        this.sn.addAction(new CityInfoAction(new WaterCityInfo(), this.city));
        addNotification(this.sn);
        BuildingPropertyNotification buildingPropertyNotification = new BuildingPropertyNotification(this.city, 0, 0.5f, 0.6f);
        this.sn = buildingPropertyNotification;
        buildingPropertyNotification.setId("$noenergy");
        this.sn.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda25
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyNoPower;
            }
        });
        this.sn.setIcon(Resources.PEOPLE_WORKMAN);
        this.sn.setText(3179);
        this.sn.addAction(new CityInfoAction(new EnergyCityInfo(), this.city));
        addNotification(this.sn);
        BuildingPropertyNotification buildingPropertyNotification2 = new BuildingPropertyNotification(this.city, 1, 0.5f, 0.6f);
        this.sn = buildingPropertyNotification2;
        buildingPropertyNotification2.setId("$nowater");
        this.sn.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda26
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyNoWater;
            }
        });
        this.sn.setIcon(Resources.PEOPLE_WORKMAN);
        this.sn.setText(2511);
        this.sn.addAction(new CityInfoAction(new WaterCityInfo(), this.city));
        addNotification(this.sn);
        BuildingPropertyNotification buildingPropertyNotification3 = new BuildingPropertyNotification(this.city, 2, 0.5f, 0.6f);
        this.sn = buildingPropertyNotification3;
        buildingPropertyNotification3.setId("$noroad");
        this.sn.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda27
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyNoRoad;
            }
        });
        this.sn.setIcon(Resources.PEOPLE_WORKMAN);
        this.sn.setText(2924);
        addNotification(this.sn);
    }

    public final void buildOtherNotifications() {
        BuildingPropertyNotification buildingPropertyNotification = new BuildingPropertyNotification(this.city, 3, 0.25f, 0.4f);
        this.sn = buildingPropertyNotification;
        buildingPropertyNotification.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyNoPark;
            }
        });
        this.sn.setId("$nopark");
        this.sn.setIcon(Resources.PEOPLE_OFFICEWORKER);
        this.sn.setText(2148);
        addNotification(this.sn);
        BuildingPropertyNotification buildingPropertyNotification2 = new BuildingPropertyNotification(this.city, 4, 0.25f, 0.4f);
        this.sn = buildingPropertyNotification2;
        buildingPropertyNotification2.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda11
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyNoSport;
            }
        });
        this.sn.setId("$nosport");
        this.sn.setIcon(Resources.PEOPLE_OFFICEWORKER);
        this.sn.setText(1231);
        addNotification(this.sn);
        BuildingPropertyNotification buildingPropertyNotification3 = new BuildingPropertyNotification(this.city, 9, 0.25f, 0.4f);
        this.sn = buildingPropertyNotification3;
        buildingPropertyNotification3.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda15
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyPollution;
            }
        });
        this.sn.setId("$pollution");
        this.sn.setIcon(Resources.PEOPLE_RANGER);
        this.sn.setText(3206);
        addNotification(this.sn);
        BuildingPropertyNotification buildingPropertyNotification4 = new BuildingPropertyNotification(this.city, 10, 0.25f, 0.4f);
        this.sn = buildingPropertyNotification4;
        buildingPropertyNotification4.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda16
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyNoise;
            }
        });
        this.sn.setId("$noise");
        this.sn.setIcon(Resources.PEOPLE_RANGER);
        this.sn.setText(1459);
        addNotification(this.sn);
        BuildingPropertyNotification buildingPropertyNotification5 = new BuildingPropertyNotification(this.city, 11, 0.5f, 0.4f);
        this.sn = buildingPropertyNotification5;
        buildingPropertyNotification5.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda17
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyWaterWaste;
            }
        });
        this.sn.setId("$noclearwater");
        this.sn.setIcon(Resources.PEOPLE_RANGER);
        this.sn.setText(2119);
        this.sn.addAction(new CityInfoAction(new WaterCityInfo(), this.city));
        addNotification(this.sn);
        for (Attribute attribute : AttributeFactory.getAttributes()) {
            if (attribute.isHappiness() && attribute.isVisible()) {
                UnhappyNotification unhappyNotification = new UnhappyNotification(attribute, this.city);
                this.sn = unhappyNotification;
                unhappyNotification.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda18
                    @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
                    public final boolean isActive() {
                        return Settings.notifyUnhappy;
                    }
                });
                addNotification(this.sn);
            }
        }
        addNotification(new RequirementFulfilledNotification(this.city).setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda19
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyUnlocked;
            }
        }));
        addNotification(new LowBudgetNotification(this.city).setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda20
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyLowBudget;
            }
        }));
        addNotification(new ZoneNeededNotification(this.city, Zones.getInstance().RESIDENTIAL0, 2374, 50).setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda21
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyZoneNeeded;
            }
        }));
        addNotification(new ZoneNeededNotification(this.city, Zones.getInstance().COMMERCIAL0, 1971, 70).setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda22
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyZoneNeeded;
            }
        }));
        addNotification(new ZoneNeededNotification(this.city, Zones.getInstance().INDUSTRIAL0, 3424, 90).setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda1
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyZoneNeeded;
            }
        }));
        SimpleNotification simpleNotification = new SimpleNotification(this.city);
        this.sn = simpleNotification;
        simpleNotification.setIcon(Resources.PEOPLE_MANAGER);
        this.sn.setText(this.translator.translate(1072));
        this.sn.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda2
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyPollutedPump;
            }
        });
        this.sn.setId("$pollutedwaterpump");
        final PollutedWaterPumpController pollutedWaterPumpController = (PollutedWaterPumpController) ((DefaultManagement) this.city.getComponent(3)).getBuildingWorker().getController(PollutedWaterPumpController.class);
        this.sn.setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.1
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                return pollutedWaterPumpController.getLastBuilding() != null && pollutedWaterPumpController.getLastValue() >= 0.5f;
            }
        });
        this.sn.setLocationBuildingProvider(new Getter<Building>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Building get() {
                return pollutedWaterPumpController.getLastBuilding();
            }
        });
        addNotification(this.sn);
        SimpleNotification simpleNotification2 = new SimpleNotification(this.city);
        this.sn = simpleNotification2;
        simpleNotification2.setIcon(Resources.PEOPLE_TEACHER0);
        this.sn.setText(this.translator.translate(2696));
        this.sn.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda3
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifySchoolOverloaded;
            }
        });
        this.sn.setId("$schooloverloaded");
        final FullSchoolController fullSchoolController = (FullSchoolController) ((DefaultManagement) this.city.getComponent(3)).getBuildingWorker().getController(FullSchoolController.class);
        this.sn.setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.3
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                return fullSchoolController.getOverloaded() != null;
            }
        });
        this.sn.setLocationBuildingProvider(new Getter<Building>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Building get() {
                return fullSchoolController.getOverloaded();
            }
        });
        this.sn.addAction(new CityInfoAction(new EducationCityInfo(), this.city));
        addNotification(this.sn);
        SimpleNotification simpleNotification3 = new SimpleNotification(this.city);
        this.sn = simpleNotification3;
        simpleNotification3.setIcon(Resources.PEOPLE_MEDIC);
        this.sn.setText(this.translator.translate(2642));
        this.sn.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda4
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyMedicOverloaded;
            }
        });
        this.sn.setId("$medicoverloaded");
        final FullHospitalController fullHospitalController = (FullHospitalController) ((DefaultManagement) this.city.getComponent(3)).getBuildingWorker().getController(FullHospitalController.class);
        this.sn.setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.5
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                return fullHospitalController.getOverloaded() != null;
            }
        });
        this.sn.setLocationBuildingProvider(new Getter<Building>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Building get() {
                return fullHospitalController.getOverloaded();
            }
        });
        this.sn.addAction(new CityInfoAction(new HealthCityInfo(), this.city));
        addNotification(this.sn);
        SimpleNotification simpleNotification4 = new SimpleNotification(this.city);
        this.sn = simpleNotification4;
        simpleNotification4.setIcon(Resources.PEOPLE_GARBAGE_COLLECTOR);
        this.sn.setText(this.translator.translate(1806));
        this.sn.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda5
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyDestroyedTile;
            }
        });
        this.sn.setId("$desctroyedtile");
        this.sn.setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.7
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                return !this.city.getBuildings().getBuildingsOfType(BuildingType.DESTROYED).isEmpty();
            }
        });
        this.sn.setLocationBuildingProvider(new Getter<Building>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Building get() {
                return DefaultNotificator.this.city.getBuildings().getBuildingsOfType(BuildingType.DESTROYED).get(0);
            }
        });
        addNotification(this.sn);
        final BuildingDraft buildingDraft = (BuildingDraft) Drafts.ALL.get("$school02");
        SimpleNotification simpleNotification5 = new SimpleNotification(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.9
            @Override // info.flowersoft.theotown.city.components.Notification
            public List<NotificationAction> getActions() {
                List<NotificationAction> actions = super.getActions();
                actions.add(new NotificationAction(Resources.ICON_BUILD, new Runnable() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass9.this.city.applyComponent(new ToolResolver(AnonymousClass9.this.city).resolve(buildingDraft));
                    }
                }));
                return actions;
            }
        };
        this.sn = simpleNotification5;
        simpleNotification5.setIcon(Resources.PEOPLE_TEACHER0);
        this.sn.setText(this.translator.translate(205));
        this.sn.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda6
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyNeedLowEducation;
            }
        });
        this.sn.setId("$loweductionneeded");
        this.sn.setCondition(new DelayedConditionDecorator(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.10
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                return buildingDraft.isUnlocked() && ((DefaultManagement) this.city.getComponent(3)).getCoverageCalculator().getProvidedAmount(0) == 0;
            }
        }, 30L));
        addNotification(this.sn);
        final BuildingDraft buildingDraft2 = (BuildingDraft) Drafts.ALL.get("$school01");
        SimpleNotification simpleNotification6 = new SimpleNotification(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.11
            @Override // info.flowersoft.theotown.city.components.Notification
            public List<NotificationAction> getActions() {
                List<NotificationAction> actions = super.getActions();
                actions.add(new NotificationAction(Resources.ICON_BUILD, new Runnable() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.11.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass11.this.city.applyComponent(new ToolResolver(AnonymousClass11.this.city).resolve(buildingDraft2));
                    }
                }));
                return actions;
            }
        };
        this.sn = simpleNotification6;
        simpleNotification6.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda7
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyNeedHighEducation;
            }
        });
        this.sn.setIcon(Resources.PEOPLE_TEACHER1);
        this.sn.setText(this.translator.translate(3453));
        this.sn.setId("$higheductionneeded");
        this.sn.setCondition(new DelayedConditionDecorator(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.12
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                return buildingDraft2.isUnlocked() && ((DefaultManagement) this.city.getComponent(3)).getCoverageCalculator().getProvidedAmount(1) == 0;
            }
        }, 30L));
        addNotification(this.sn);
        final Road[] roadArr = new Road[1];
        SimpleNotification simpleNotification7 = new SimpleNotification(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.13
            @Override // info.flowersoft.theotown.city.components.Notification
            public List<NotificationAction> getActions() {
                List<NotificationAction> actions = super.getActions();
                actions.add(new NotificationAction(Resources.ICON_LOCATE, new Runnable() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.13.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass13 anonymousClass13 = AnonymousClass13.this;
                        if (roadArr[0] != null) {
                            anonymousClass13.city.focus(r1.x, r1.y);
                        }
                        MarkTool markTool = new MarkTool(new TrafficMarker(AnonymousClass13.this.city));
                        markTool.setName(new StaticGetter(AnonymousClass13.this.translator.translate(1492)));
                        AnonymousClass13.this.city.applyComponent(markTool);
                    }
                }));
                return actions;
            }
        };
        this.sn = simpleNotification7;
        simpleNotification7.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda8
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyBadTraffic;
            }
        });
        this.sn.setIcon(Resources.PEOPLE_MANAGER);
        this.sn.setText(this.translator.translate(892));
        this.sn.setId("$badtraffic");
        this.sn.setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.14
            public final CarTrafficHandler carTrafficHandler = (CarTrafficHandler) ((DefaultTraffic) this.city.getComponent(7)).getTrafficHandler(CarTrafficHandler.class);

            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                Road badRoad = this.carTrafficHandler.getBadRoad();
                roadArr[0] = badRoad;
                return badRoad != null && badRoad.trafficAmount > 0.9f;
            }
        });
        addNotification(this.sn);
        final Getter<WasteController> getter = new Getter<WasteController>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.15
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public WasteController get() {
                return (WasteController) ((DefaultManagement) DefaultNotificator.this.city.getComponent(3)).getBuildingWorker().getController(WasteController.class);
            }
        };
        final Getter<BodyDisposalController> getter2 = new Getter<BodyDisposalController>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.16
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public BodyDisposalController get() {
                return (BodyDisposalController) ((DefaultManagement) DefaultNotificator.this.city.getComponent(3)).getBuildingWorker().getController(BodyDisposalController.class);
            }
        };
        SimpleNotification simpleNotification8 = new SimpleNotification(this.city);
        this.sn = simpleNotification8;
        simpleNotification8.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda9
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyWaste;
            }
        });
        this.sn.setId("$building_waste_needer00");
        this.sn.setIcon(Resources.PEOPLE_GARBAGE_COLLECTOR);
        this.sn.setTextProvider(new Getter<String>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.17
            @Override // io.blueflower.stapel2d.util.Getter
            public String get() {
                return DefaultNotificator.this.translator.translate(2667);
            }
        });
        this.sn.setLocationBuildingProvider(new Getter<Building>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.18
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Building get() {
                return ((WasteController) getter.get()).getOverfilledNeeder();
            }
        });
        this.sn.setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.19
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                return ((WasteController) getter.get()).getOverfilledNeeder() != null;
            }
        });
        addNotification(this.sn);
        SimpleNotification simpleNotification9 = new SimpleNotification(this.city);
        this.sn = simpleNotification9;
        simpleNotification9.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda10
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyWaste;
            }
        });
        this.sn.setId("$building_waste_producer00");
        this.sn.setIcon(Resources.PEOPLE_GARBAGE_COLLECTOR);
        this.sn.setTextProvider(new Getter<String>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.20
            @Override // io.blueflower.stapel2d.util.Getter
            public String get() {
                return DefaultNotificator.this.translator.translate(534);
            }
        });
        this.sn.setLocationBuildingProvider(new Getter<Building>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.21
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Building get() {
                return ((WasteController) getter.get()).getOverfilledProducer();
            }
        });
        this.sn.setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.22
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                return ((WasteController) getter.get()).getOverfilledProducer() != null;
            }
        });
        addNotification(this.sn);
        SimpleNotification simpleNotification10 = new SimpleNotification(this.city);
        this.sn = simpleNotification10;
        simpleNotification10.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda12
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyBodyDisposal;
            }
        });
        this.sn.setId("$building_bodydisposal_needer00");
        this.sn.setIcon(Resources.PEOPLE_PRIEST);
        this.sn.setTextProvider(new Getter<String>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.23
            @Override // io.blueflower.stapel2d.util.Getter
            public String get() {
                return DefaultNotificator.this.translator.translate(1420);
            }
        });
        this.sn.setLocationBuildingProvider(new Getter<Building>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.24
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Building get() {
                return ((BodyDisposalController) getter2.get()).getOverfilledNeeder();
            }
        });
        this.sn.setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.25
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                return ((BodyDisposalController) getter2.get()).getOverfilledNeeder() != null;
            }
        });
        addNotification(this.sn);
        SimpleNotification simpleNotification11 = new SimpleNotification(this.city);
        this.sn = simpleNotification11;
        simpleNotification11.setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda13
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyBodyDisposal;
            }
        });
        this.sn.setId("$building_bodydisposal_producer00");
        this.sn.setIcon(Resources.PEOPLE_PRIEST);
        this.sn.setTextProvider(new Getter<String>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.26
            @Override // io.blueflower.stapel2d.util.Getter
            public String get() {
                return DefaultNotificator.this.translator.translate(289);
            }
        });
        this.sn.setLocationBuildingProvider(new Getter<Building>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.27
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Building get() {
                return ((BodyDisposalController) getter2.get()).getOverfilledProducer();
            }
        });
        this.sn.setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.28
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                return ((BodyDisposalController) getter2.get()).getOverfilledProducer() != null;
            }
        });
        addNotification(this.sn);
        addNotification(new BadAttributeNotification(this.city).setIsActive(new Notification.ActiveCallback() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda14
            @Override // info.flowersoft.theotown.city.components.Notification.ActiveCallback
            public final boolean isActive() {
                return Settings.notifyBadAttribute;
            }
        }));
    }

    public final void buildImportantNotifications() {
        addNotification(new FireNotification(this.city));
        addNotification(new MedicNotification(this.city));
        SimpleNotification simpleNotification = new SimpleNotification(this.city);
        this.sn = simpleNotification;
        simpleNotification.setId("$crime");
        this.sn.setIcon(Resources.PEOPLE_OFFICER);
        this.sn.setText(1270);
        this.sn.setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.29
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                CrimeDisaster crimeDisaster = (CrimeDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(CrimeDisaster.class);
                return crimeDisaster.isActive() && crimeDisaster.getType().ordinal() > CrimeType.GRAFFITI.ordinal();
            }
        });
        this.sn.setLocationBuildingProvider(new Getter<Building>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.30
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Building get() {
                return ((CrimeDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(CrimeDisaster.class)).getCrimeBuilding();
            }
        });
        addNotification(this.sn);
        Getter<float[]> getter = new Getter<float[]>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.31
            @Override // io.blueflower.stapel2d.util.Getter
            public float[] get() {
                int[] location = ((RiotDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(RiotDisaster.class)).getLocation();
                return new float[]{location[0], location[1]};
            }
        };
        SimpleNotification simpleNotification2 = new SimpleNotification(this.city);
        this.sn = simpleNotification2;
        simpleNotification2.setId("$demonstration");
        this.sn.setImportant(true);
        this.sn.setIcon(Resources.PEOPLE_OFFICER);
        this.sn.setTextProvider(new Getter<String>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.32
            @Override // io.blueflower.stapel2d.util.Getter
            public String get() {
                RiotDisaster.Reason reason = ((RiotDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(RiotDisaster.class)).getReason();
                if (reason != null) {
                    return StringFormatter.format(DefaultNotificator.this.translator.translate(809), DefaultNotificator.this.translator.translate(reason.getAttribute().getNameLocalizationId()));
                }
                return "";
            }
        });
        this.sn.setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.33
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                return ((RiotDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(RiotDisaster.class)).getOccupation() == DefaultNotificator.this.DEMONSTRATION_OCCUPATION;
            }
        });
        this.sn.setLocationProvider(getter);
        this.sn.setOnLocationClick(new Runnable() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.34
            @Override // java.lang.Runnable
            public void run() {
                RiotDisaster.Reason reason = ((RiotDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(RiotDisaster.class)).getReason();
                if (reason != null) {
                    DefaultNotificator.this.city.applyComponent(new ToolResolver(DefaultNotificator.this.city).resolve(reason.getAttribute()));
                }
            }
        });
        addNotification(this.sn);
        SimpleNotification simpleNotification3 = new SimpleNotification(this.city);
        this.sn = simpleNotification3;
        simpleNotification3.setId("$riot");
        this.sn.setImportant(true);
        this.sn.setIcon(Resources.PEOPLE_OFFICER);
        this.sn.setTextProvider(new Getter<String>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.35
            @Override // io.blueflower.stapel2d.util.Getter
            public String get() {
                RiotDisaster riotDisaster = (RiotDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(RiotDisaster.class);
                if (riotDisaster.getReason() == null) {
                    return DefaultNotificator.this.translator.translate(1172);
                }
                return StringFormatter.format(DefaultNotificator.this.translator.translate(1082), DefaultNotificator.this.translator.translate(riotDisaster.getReason().getAttribute().getNameLocalizationId()));
            }
        });
        this.sn.setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.36
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                return ((RiotDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(RiotDisaster.class)).getOccupation() == DefaultNotificator.this.RIOT_OCCUPATION;
            }
        });
        this.sn.setLocationProvider(getter);
        this.sn.setOnLocationClick(new Runnable() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                DefaultNotificator.m2128$r8$lambda$8auzpkM5kEEi8_S4dNjnwVeRuA(this.f$0);
            }
        });
        addNotification(this.sn);
        final boolean[] zArr = new boolean[1];
        AnonymousClass37 anonymousClass37 = new AnonymousClass37(this.city, zArr);
        this.sn = anonymousClass37;
        addNotification(anonymousClass37);
        SimpleNotification simpleNotification4 = new SimpleNotification(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.38
            {
                setId("$notify_earthquake");
                setIcon(Resources.PEOPLE_FIREFIGHTER1);
                setText(this.translator.translate(2779));
                setImportant(true);
                setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.38.1
                    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
                    public boolean evaluate() {
                        EarthQuakeDisaster earthQuakeDisaster = (EarthQuakeDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(EarthQuakeDisaster.class);
                        if (!earthQuakeDisaster.isActive()) {
                            return false;
                        }
                        AnonymousClass38.this.currentLocation = earthQuakeDisaster.getLocation();
                        return true;
                    }
                });
            }
        };
        this.sn = simpleNotification4;
        addNotification(simpleNotification4);
        SimpleNotification simpleNotification5 = new SimpleNotification(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.39
            {
                setId("$notify_flooding");
                setIcon(Resources.PEOPLE_FIREFIGHTER1);
                setText(this.translator.translate(2097));
                setImportant(true);
                setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.39.1
                    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
                    public boolean evaluate() {
                        FloodingDisaster floodingDisaster = (FloodingDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(FloodingDisaster.class);
                        if (!floodingDisaster.isActive()) {
                            return false;
                        }
                        AnonymousClass39.this.currentLocation = floodingDisaster.getLocation();
                        return true;
                    }
                });
            }
        };
        this.sn = simpleNotification5;
        addNotification(simpleNotification5);
        SimpleNotification simpleNotification6 = new SimpleNotification(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.40
            {
                setId("$notify_meteorite");
                setIcon(Resources.PEOPLE_FIREFIGHTER1);
                setText(this.translator.translate(271));
                setImportant(true);
                setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.40.1
                    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
                    public boolean evaluate() {
                        MeteoriteDisaster meteoriteDisaster = (MeteoriteDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(MeteoriteDisaster.class);
                        if (meteoriteDisaster.isActive()) {
                            AnonymousClass40 anonymousClass40 = AnonymousClass40.this;
                            if (!zArr[0]) {
                                anonymousClass40.currentLocation = meteoriteDisaster.getLocation();
                                return true;
                            }
                        }
                        return false;
                    }
                });
            }
        };
        this.sn = simpleNotification6;
        addNotification(simpleNotification6);
        SimpleNotification simpleNotification7 = new SimpleNotification(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.41
            {
                setId("$notify_nuke");
                setIcon(Resources.PEOPLE_GENERAL);
                setText(this.translator.translate(2915));
                setImportant(true);
                setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.41.1
                    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
                    public boolean evaluate() {
                        NukeDisaster nukeDisaster = (NukeDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(NukeDisaster.class);
                        if (!nukeDisaster.isActive()) {
                            return false;
                        }
                        AnonymousClass41.this.currentLocation = nukeDisaster.getLocation();
                        return true;
                    }
                });
            }
        };
        this.sn = simpleNotification7;
        addNotification(simpleNotification7);
        SimpleNotification simpleNotification8 = new SimpleNotification(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.42
            {
                setId("$notify_tornado");
                setIcon(Resources.PEOPLE_FIREFIGHTER1);
                setText(this.translator.translate(782));
                setImportant(true);
                setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.42.1
                    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
                    public boolean evaluate() {
                        TornadoDisaster tornadoDisaster = (TornadoDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(TornadoDisaster.class);
                        if (!tornadoDisaster.isActive()) {
                            return false;
                        }
                        AnonymousClass42.this.currentLocation = tornadoDisaster.getLocation();
                        return true;
                    }
                });
            }
        };
        this.sn = simpleNotification8;
        addNotification(simpleNotification8);
        SimpleNotification simpleNotification9 = new SimpleNotification(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.43
            {
                setId("$notify_ufo");
                setIcon(Resources.PEOPLE_GENERAL);
                setText(this.translator.translate(1688));
                setImportant(true);
                setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.43.1
                    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
                    public boolean evaluate() {
                        UfoDisaster ufoDisaster = (UfoDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(UfoDisaster.class);
                        if (ufoDisaster.isActive()) {
                            AnonymousClass43 anonymousClass43 = AnonymousClass43.this;
                            if (!zArr[0]) {
                                anonymousClass43.currentLocation = ufoDisaster.getLocation();
                                return true;
                            }
                        }
                        return false;
                    }
                });
            }
        };
        this.sn = simpleNotification9;
        addNotification(simpleNotification9);
    }

    /* JADX INFO: renamed from: $r8$lambda$8auzpkM5-kEEi8_S4dNjnwVeRuA, reason: not valid java name */
    public static /* synthetic */ void m2128$r8$lambda$8auzpkM5kEEi8_S4dNjnwVeRuA(DefaultNotificator defaultNotificator) {
        RiotDisaster.Reason reason = ((RiotDisaster) defaultNotificator.getCatastrophe().getDisaster(RiotDisaster.class)).getReason();
        if (reason != null) {
            defaultNotificator.city.applyComponent(new ToolResolver(defaultNotificator.city).resolve(reason.getAttribute()));
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.components.notification.DefaultNotificator$37, reason: invalid class name */
    public class AnonymousClass37 extends SimpleNotification {
        public float[] location;
        public final /* synthetic */ boolean[] val$rocketIssuedDisaster;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass37(City city, boolean[] zArr) {
            super(city);
            this.val$rocketIssuedDisaster = zArr;
            setId("$missiledisaster");
            setIcon(Resources.PEOPLE_GENERAL);
            setText(267);
            setImportant(true);
            setCondition(new Condition(this.city) { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.37.1
                @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
                public boolean evaluate() {
                    int[] location;
                    MeteoriteDisaster meteoriteDisaster = (MeteoriteDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(MeteoriteDisaster.class);
                    UfoDisaster ufoDisaster = (UfoDisaster) DefaultNotificator.this.getCatastrophe().getDisaster(UfoDisaster.class);
                    if (meteoriteDisaster.isActive() || ufoDisaster.isActive()) {
                        AnonymousClass37 anonymousClass37 = AnonymousClass37.this;
                        if (anonymousClass37.val$rocketIssuedDisaster[0]) {
                            return true;
                        }
                        if (((RocketController) ((FlyingTrafficHandler) DefaultNotificator.this.getTraffic().getTrafficHandler(FlyingTrafficHandler.class)).getController(RocketController.class)).hasCausedDisasterAndReset()) {
                            AnonymousClass37.this.val$rocketIssuedDisaster[0] = true;
                            if (meteoriteDisaster.isActive()) {
                                location = meteoriteDisaster.getLocation();
                            } else {
                                location = ufoDisaster.isActive() ? ufoDisaster.getLocation() : null;
                            }
                            if (location != null) {
                                AnonymousClass37.this.location = new float[]{location[0], location[1]};
                            }
                        }
                        return AnonymousClass37.this.val$rocketIssuedDisaster[0];
                    }
                    AnonymousClass37.this.val$rocketIssuedDisaster[0] = false;
                    return false;
                }
            });
            setLocationProvider(new Getter<float[]>() { // from class: info.flowersoft.theotown.components.notification.DefaultNotificator.37.2
                @Override // io.blueflower.stapel2d.util.Getter
                public float[] get() {
                    return AnonymousClass37.this.location;
                }
            });
        }
    }

    public DefaultNotificator(City city, JsonReader jsonReader) throws IOException {
        Notification next;
        this(city);
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            Iterator<Notification> it = this.notifications.iterator();
            while (true) {
                if (it.hasNext()) {
                    next = it.next();
                    if (strNextName.equals(next.getID())) {
                    }
                } else {
                    next = null;
                }
            }
            if (next != null) {
                jsonReader.beginObject();
                next.load(jsonReader);
                jsonReader.endObject();
            } else {
                strNextName.getClass();
                switch (strNextName) {
                    case "task manager":
                        jsonReader.beginObject();
                        this.taskManager.load(jsonReader);
                        jsonReader.endObject();
                        break;
                    case "hidden notifications":
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            Notification notification = getNotification(jsonReader.nextString());
                            if (notification != null) {
                                this.hiddenNotifications.add(notification);
                            }
                        }
                        jsonReader.endArray();
                        break;
                    case "hidden ids":
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            this.hiddenIds.add(jsonReader.nextString());
                        }
                        jsonReader.endArray();
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
        }
    }

    public final Notification getNotification(String str) {
        for (int i = 0; i < this.notifications.size(); i++) {
            if (this.notifications.get(i).getID().equals(str)) {
                return this.notifications.get(i);
            }
        }
        return null;
    }

    public final DefaultCatastrophe getCatastrophe() {
        return (DefaultCatastrophe) this.city.getComponent(6);
    }

    public final DefaultTraffic getTraffic() {
        return (DefaultTraffic) this.city.getComponent(7);
    }

    public void addNotification(Notification notification) {
        this.notifications.add(notification);
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        for (Notification notification : this.notifications) {
            jsonWriter.name(notification.getID());
            jsonWriter.beginObject();
            notification.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.name("hidden ids");
        jsonWriter.beginArray();
        Iterator<String> it = this.hiddenIds.iterator();
        while (it.hasNext()) {
            jsonWriter.value(it.next());
        }
        jsonWriter.endArray();
        jsonWriter.name("hidden notifications");
        jsonWriter.beginArray();
        Iterator<Notification> it2 = this.hiddenNotifications.iterator();
        while (it2.hasNext()) {
            jsonWriter.value(it2.next().getID());
        }
        jsonWriter.endArray();
        jsonWriter.name("task manager").beginObject();
        this.taskManager.save(jsonWriter);
        jsonWriter.endObject();
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent, info.flowersoft.theotown.city.components.DateListener
    public void nextDay() {
        poll();
    }

    @Override // info.flowersoft.theotown.city.components.Notificator
    public void poll() {
        while (!this.notificationQueue.isEmpty() && (!this.notificationQueue.peek().checkCondition() || (this.notificationQueue.peek().showOnlyOnce() && (this.notificationQueue.peek().getCounter() > 0 || this.hiddenIds.contains(this.notificationQueue.peek().getID()))))) {
            this.notificationQueue.poll();
        }
        long absoluteDay = ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
        if (this.notificationQueue.isEmpty()) {
            for (Notification notification : this.notifications) {
                if (this.hiddenNotifications.contains(notification)) {
                    if (!notification.checkCondition() || absoluteDay - notification.getLastShownDay() >= 180) {
                        this.hiddenNotifications.remove(notification);
                    }
                } else if (!notification.showOnlyOnce() || notification.getCounter() == 0) {
                    if (notification.checkCondition()) {
                        this.notificationQueue.add(notification);
                    }
                }
            }
        }
        if (this.notificationQueue.isEmpty() || this.locked) {
            return;
        }
        Notification notificationPoll = this.notificationQueue.poll();
        informListeners(notificationPoll);
        if (notificationPoll.isCloseable()) {
            this.hiddenNotifications.add(notificationPoll);
            if (notificationPoll.showOnlyOnce()) {
                this.hiddenIds.add(notificationPoll.getID());
            }
        }
    }

    public void hideNotification(String str) {
        this.hiddenIds.add(str);
    }

    public void clearNotifications() {
        this.notifications.clear();
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        this.taskManager.update();
    }

    @Override // info.flowersoft.theotown.city.components.Notificator
    public void lock(Notification notification) {
        if (this.locked) {
            return;
        }
        this.locked = true;
        this.currentNotification = notification;
    }

    @Override // info.flowersoft.theotown.city.components.Notificator
    public void unlock() {
        this.locked = false;
        this.currentNotification = null;
    }

    @Override // info.flowersoft.theotown.city.components.Notificator
    public Notification getCurrentNotification() {
        return this.currentNotification;
    }
}
