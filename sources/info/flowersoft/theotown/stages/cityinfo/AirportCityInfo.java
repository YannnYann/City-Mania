package info.flowersoft.theotown.stages.cityinfo;

import com.ironsource.InterfaceC3676je;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.airport.Airplane;
import info.flowersoft.theotown.components.airport.DefaultAirport;
import info.flowersoft.theotown.components.airport.Lane;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.tools.AirportLaneTool;
import info.flowersoft.theotown.tools.ToolResolver;
import info.flowersoft.theotown.ui.AirplaneDialog;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.UnlockDialog;
import info.flowersoft.theotown.ui.listitem.ActionListItem;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Predicate;
import io.blueflower.stapel2d.util.Setter;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class AirportCityInfo extends ListBasedCityInfo {
    public final BuildingDraft TOWER_BUILDING = (BuildingDraft) Drafts.get("$ap_tower00", BuildingDraft.class);
    public DefaultAirport airport;
    public DefaultBudget budget;
    public Stapel2DGameContext context;
    public GameStack gameStack;
    public Translator translator;

    public static /* synthetic */ void $r8$lambda$FlUPQtOloq_RtnoKmJG3takGTxE() {
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return 3091;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getIcon() {
        return Resources.ICON_AIRPORT;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        return city.getTranslator().translate(996);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo, info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(City city, Gadget gadget, final Stapel2DGameContext stapel2DGameContext, GameStack gameStack) {
        this.airport = (DefaultAirport) city.getComponent(19);
        this.budget = (DefaultBudget) city.getComponent(0);
        this.gameStack = gameStack;
        this.context = stapel2DGameContext;
        this.translator = stapel2DGameContext.getTranslator();
        super.build(city, new Panel(0, 0, gadget.getClientWidth(), gadget.getClientHeight() - 32, gadget), stapel2DGameContext, gameStack);
        int i = 30;
        ElementLine elementLine = new ElementLine(0, 0, 0, gadget.getClientHeight() - 30, gadget.getClientWidth(), 30, gadget);
        new Label(StringFormatter.format(stapel2DGameContext.getTranslator().translate(2474), Localizer.localizeSmallNumber(this.airport.getLaunchedAirplanes(), false)), 0, 0, 0, 30, elementLine.getFirstPart()).setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        new Label(StringFormatter.format(stapel2DGameContext.getTranslator().translate(3097), Localizer.localizeSmallNumber(this.airport.getTransferredPassengers(), false)), 0, 0, 0, 30, elementLine.getFirstPart()).setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
        if (!city.isReadonly()) {
            new IconButton(Resources.ICON_AIRPORT, this.translator.translate(3239), 0, 0, 0, i, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.1
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    new AirplaneDialog(null, AirportCityInfo.this.airport, stapel2DGameContext, (Master) this.parent.getAbsoluteParent()).setVisible(true);
                }
            };
        }
        rebuildList();
    }

    public final void rebuildList() {
        ListItem listItemForLockedLane;
        this.listBox.removeAllItems();
        final BuildingDraft buildingDraft = this.TOWER_BUILDING;
        final City city = this.airport.getCity();
        this.translator = city.getTranslator();
        boolean zIsReadonly = city.isReadonly();
        boolean z = !zIsReadonly;
        final Building building = null;
        for (Building building2 : new SafeListAccessor(city.getBuildings().getBuildingsOfDraft(buildingDraft))) {
            if (building2.isWorking() || building == null) {
                building = building2;
            }
        }
        if (building == null) {
            if (zIsReadonly) {
                return;
            }
            ActionListItem actionListItem = new ActionListItem(this.listBox);
            actionListItem.setIcon(Resources.FRAME_ZONE_OVERLOADED);
            actionListItem.setTitle(this.translator.translate(1937));
            actionListItem.setSubTitle(this.translator.translate(690));
            actionListItem.addAction(Resources.ICON_BUILD, this.translator.translate(2563), new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.2
                @Override // java.lang.Runnable
                public void run() {
                    city.applyComponent(new ToolResolver(city).resolve(buildingDraft));
                    AirportCityInfo.this.gameStack.pop();
                }
            }, new Getter<Boolean>() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.3
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // io.blueflower.stapel2d.util.Getter
                public Boolean get() {
                    return Boolean.TRUE;
                }
            }, new Getter<Boolean>() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.4
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // io.blueflower.stapel2d.util.Getter
                public Boolean get() {
                    return Boolean.valueOf((city.getGameMode().hasInfinityMoney() || buildingDraft.isUnlocked()) && !city.isReadonly());
                }
            });
            this.listBox.addItem(actionListItem);
            return;
        }
        if (!building.isWorking()) {
            if (zIsReadonly) {
                return;
            }
            ActionListItem actionListItem2 = new ActionListItem(this.listBox);
            actionListItem2.setIcon(Resources.FRAME_ZONE_OVERLOADED);
            actionListItem2.setTitle(this.translator.translate(873));
            actionListItem2.setSubTitle(this.translator.translate(InterfaceC3676je.c.f));
            actionListItem2.addAction(Resources.ICON_EYE, this.translator.translate(63), new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.5
                @Override // java.lang.Runnable
                public void run() {
                    city.focus(building);
                    AirportCityInfo.this.gameStack.pop();
                }
            });
            this.listBox.addItem(actionListItem2);
            return;
        }
        List<Lane> lanes = this.airport.getLanes();
        for (int i = 0; i < lanes.size(); i++) {
            Lane lane = lanes.get(i);
            if (lane.isUnlocked()) {
                listItemForLockedLane = getListItemForUnlockedLane(city, lane, z);
            } else if (!zIsReadonly) {
                listItemForLockedLane = getListItemForLockedLane(lane);
            }
            this.listBox.addItem(listItemForLockedLane);
        }
        this.listBox.addItem(getListItemForNewLane(z));
    }

    public final long getPriceForNewLane() {
        return Math.round(Math.pow(3.0d, this.airport.getLanes().size())) * 10000;
    }

    public final boolean isLaneAddable() {
        for (int i = 0; i < this.airport.getLanes().size(); i++) {
            if (!this.airport.getLanes().get(i).isUnlocked()) {
                return false;
            }
        }
        return true;
    }

    public final ListItem getListItemForNewLane(final boolean z) {
        final Getter<Boolean> getter = new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return Boolean.valueOf(this.f$0.isLaneAddable() && z);
            }
        };
        final Getter<Boolean> getter2 = new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda1
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return AirportCityInfo.m2302$r8$lambda$gmiOEmclqNGRmnkjSgrzGDJTZ0(this.f$0, getter);
            }
        };
        Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AirportCityInfo.$r8$lambda$D9eEh_J6QnQ3s9p6GQDOc0Cw4cA(this.f$0, getter2);
            }
        };
        ActionListItem actionListItem = new ActionListItem(this.listBox);
        actionListItem.setIcon(Resources.ICON_PLUS);
        actionListItem.setTitle(this.translator.translate(840));
        actionListItem.setSubTitle(new Getter<String>() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.6
            @Override // io.blueflower.stapel2d.util.Getter
            public String get() {
                return AirportCityInfo.this.isLaneAddable() ? AirportCityInfo.this.translator.translate(2901) : AirportCityInfo.this.translator.translate(365);
            }
        });
        actionListItem.addAction(Resources.ICON_UNLOCK, Localizer.localizeMoney(getPriceForNewLane()), runnable, getter2, getter);
        actionListItem.addAction(Resources.ICON_LOCKED, this.translator.translate(643), new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                AirportCityInfo.$r8$lambda$FlUPQtOloq_RtnoKmJG3takGTxE();
            }
        }, new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda4
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return Boolean.FALSE;
            }
        }, new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda5
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return Boolean.valueOf(!this.f$0.isLaneAddable() && z);
            }
        });
        Skin skin = Resources.skin;
        actionListItem.setBackground(skin.cTextAccent.copy().lerp(skin.cBg, 0.7f));
        actionListItem.setBackgroundAction(runnable);
        return actionListItem;
    }

    /* JADX INFO: renamed from: $r8$lambda$gmiOEmclqNGRmnkjSgrzGDJTZ-0, reason: not valid java name */
    public static /* synthetic */ Boolean m2302$r8$lambda$gmiOEmclqNGRmnkjSgrzGDJTZ0(AirportCityInfo airportCityInfo, Getter getter) {
        airportCityInfo.getClass();
        return Boolean.valueOf(((Boolean) getter.get()).booleanValue() && airportCityInfo.budget.canSpend(airportCityInfo.getPriceForNewLane()));
    }

    public static /* synthetic */ void $r8$lambda$D9eEh_J6QnQ3s9p6GQDOc0Cw4cA(AirportCityInfo airportCityInfo, Getter getter) {
        airportCityInfo.getClass();
        if (((Boolean) getter.get()).booleanValue()) {
            airportCityInfo.budget.spend(airportCityInfo.getPriceForNewLane(), "build airport lane");
            airportCityInfo.airport.addLane().getTimeUnlockable().lock(airportCityInfo.getUnlockTimeForNewLane(airportCityInfo.airport.getLanes().size() - 1));
            airportCityInfo.rebuildList();
        }
    }

    public final long getUnlockTimeForNewLane(int i) {
        if (TheoTown.PREMIUM) {
            return 0L;
        }
        return ((long) i) * 2700000;
    }

    public final ListItem getListItemForLockedLane(final Lane lane) {
        Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                AirportCityInfo.$r8$lambda$7sbxKgz0xcYbvvb1OH7yYM_FBdk(this.f$0, lane);
            }
        };
        ActionListItem actionListItem = new ActionListItem(this.listBox);
        actionListItem.setTitle(this.translator.translate(3065));
        actionListItem.setSubTitle(new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda21
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return TimeSpan.localize(lane.getTimeUnlockable().getRemainingTimeMS());
            }
        });
        actionListItem.addAction(Resources.ICON_PLAYFAST, this.translator.translate(3131), runnable, (Getter<Boolean>) null, new Getter<Boolean>() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                if (lane.isUnlocked()) {
                    AirportCityInfo.this.rebuildList();
                }
                return Boolean.TRUE;
            }
        }, true);
        actionListItem.setIcon(Resources.ICON_CLOCK);
        actionListItem.setBackgroundAction(runnable);
        return actionListItem;
    }

    public static /* synthetic */ void $r8$lambda$7sbxKgz0xcYbvvb1OH7yYM_FBdk(final AirportCityInfo airportCityInfo, Lane lane) {
        airportCityInfo.getClass();
        if (lane.isUnlocked()) {
            return;
        }
        new UnlockDialog(lane.getTimeUnlockable(), (Master) airportCityInfo.listBox.getAbsoluteParent(), new Setter() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda27
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                this.f$0.gameStack.push((Stage) obj);
            }
        }, airportCityInfo.context, "somdId", "Airport_Unlock_Time").setVisible(true);
    }

    public final ListItem getListItemForUnlockedLane(City city, final Lane lane, final boolean z) {
        final Tiles tiles = city.getTiles();
        final Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                AirportCityInfo.$r8$lambda$N3P0EUpPXHMuyKOVImaJhX9LVTQ(this.f$0, tiles, lane);
            }
        };
        final Runnable runnable2 = new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                AirportCityInfo.$r8$lambda$MInKwhpXr2gHUJct3F7naobluoA(this.f$0, lane);
            }
        };
        ActionListItem actionListItem = new ActionListItem(this.listBox);
        actionListItem.setTitle(new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda12
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return lane.getName();
            }
        });
        actionListItem.setSubTitle(new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda13
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return AirportCityInfo.$r8$lambda$uBj41fvMvAikAlVw3sxO6up6DCc(this.f$0, lane);
            }
        });
        if (z) {
            actionListItem.addAction(Resources.ICON_EDIT, this.translator.translate(3369), new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    AirportCityInfo.$r8$lambda$dvJBcdsM4PdmtXijCpi89KzoXLM(this.f$0, lane);
                }
            });
        }
        actionListItem.addAction(Resources.ICON_EYE, this.translator.translate(3144), runnable2, null, new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda15
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return Boolean.valueOf(lane.hasRealLane());
            }
        });
        if (z) {
            actionListItem.addAction(Resources.ICON_MINUS, this.translator.translate(228), new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.airport.unassignLane(lane);
                }
            }, null, new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda17
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return Boolean.valueOf(lane.hasRealLane());
                }
            });
            actionListItem.addAction(Resources.ICON_LOCATE, this.translator.translate(1360), runnable, (Getter<Boolean>) null, new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda18
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    Lane lane2 = lane;
                    return Boolean.valueOf(!lane2.hasRealLane());
                }
            }, true);
            actionListItem.addAction(Resources.ICON_AIRPORT, this.translator.translate(3227), new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    AirportCityInfo.m2303$r8$lambda$lO6osfh7Hq2pggRlaUWIdVV5x4(this.f$0, lane);
                }
            }, (Getter<Boolean>) null, new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda7
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    Lane lane2 = lane;
                    return Boolean.valueOf(lane2.hasRealLane() && lane2.getAirplane() == null);
                }
            }, true);
            Airplane airplane = lane.getAirplane();
            actionListItem.addAction(Resources.ICON_AIRPORT, airplane != null ? airplane.getName() : "", new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    AirportCityInfo.m2304$r8$lambda$phEvB1GTDvkYRunhcnFz1u1I(this.f$0, lane);
                }
            }, null, new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda9
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return Boolean.valueOf(lane.getAirplane() != null);
                }
            });
        }
        actionListItem.setBackgroundAction(new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                AirportCityInfo.$r8$lambda$GgMDPcjJ5N6D5VHp1g325_EpoX4(lane, runnable2, z, runnable);
            }
        });
        return actionListItem;
    }

    public static /* synthetic */ void $r8$lambda$N3P0EUpPXHMuyKOVImaJhX9LVTQ(final AirportCityInfo airportCityInfo, final Tiles tiles, final Lane lane) {
        final Stage stagePop = airportCityInfo.gameStack.pop();
        AirportLaneTool airportLaneTool = new AirportLaneTool();
        airportLaneTool.registerClickListener(new Tool.ClickListener() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda23
            @Override // info.flowersoft.theotown.city.components.Tool.ClickListener
            public final void onClick(Tool tool, int i, int i2, int i3, int i4) {
                AirportCityInfo.$r8$lambda$yxDodCCey7ncchc_N1ybZepcx8A(this.f$0, tiles, lane, stagePop, tool, i, i2, i3, i4);
            }
        });
        airportCityInfo.airport.getCity().applyComponent(airportLaneTool);
    }

    public static /* synthetic */ void $r8$lambda$yxDodCCey7ncchc_N1ybZepcx8A(AirportCityInfo airportCityInfo, Tiles tiles, Lane lane, Stage stage, Tool tool, int i, int i2, int i3, int i4) {
        airportCityInfo.getClass();
        Road road = tiles.getRoad(i, i2, 0);
        if (road != null && airportCityInfo.airport.laneRoadDrafts.contains(road.draft) && airportCityInfo.airport.isTileInVirtualLanes(i, i2) && !airportCityInfo.airport.isTileInLanes(i, i2) && airportCityInfo.airport.assignLane(lane, i, i2)) {
            tool.getCity().applyComponent(tool.getCity().getDefaultTool());
            airportCityInfo.gameStack.push(stage);
        }
    }

    public static /* synthetic */ void $r8$lambda$MInKwhpXr2gHUJct3F7naobluoA(AirportCityInfo airportCityInfo, Lane lane) {
        airportCityInfo.gameStack.pop();
        airportCityInfo.airport.getCity().focus(((lane.getSx() + lane.getTx()) + 1) / 2.0f, ((lane.getSy() + lane.getTy()) + 1) / 2.0f, 2.0f);
    }

    public static /* synthetic */ String $r8$lambda$uBj41fvMvAikAlVw3sxO6up6DCc(AirportCityInfo airportCityInfo, Lane lane) {
        airportCityInfo.getClass();
        if (!lane.hasRealLane()) {
            return airportCityInfo.translator.translate(3383);
        }
        if (!lane.hasAirplane()) {
            return airportCityInfo.translator.translate(2834);
        }
        return lane.toString();
    }

    public static /* synthetic */ void $r8$lambda$dvJBcdsM4PdmtXijCpi89KzoXLM(AirportCityInfo airportCityInfo, final Lane lane) {
        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder((Master) airportCityInfo.listBox.getAbsoluteParent(), airportCityInfo.airport.getCity().getTranslator(), airportCityInfo.context.getKey());
        renameDialogBuilder.setFilter(new Predicate() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda24
            @Override // io.blueflower.stapel2d.util.Predicate
            public final boolean apply(Object obj) {
                return AirportCityInfo.$r8$lambda$2PJYU_7tEyl1j7iI_G2hRG8SBFo((String) obj);
            }
        });
        Objects.requireNonNull(lane);
        renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda25
            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
            public final void accept(Object obj) {
                lane.setName((String) obj);
            }
        });
        renameDialogBuilder.build(Resources.ICON_AIRPORT, airportCityInfo.translator.translate(1613), airportCityInfo.translator.translate(2645), lane.getName()).setVisible(true);
    }

    public static /* synthetic */ boolean $r8$lambda$2PJYU_7tEyl1j7iI_G2hRG8SBFo(String str) {
        return str.trim().length() >= 3;
    }

    /* JADX INFO: renamed from: $r8$lambda$lO6osfh7Hq2pggRlaUWId-VV5x4, reason: not valid java name */
    public static /* synthetic */ void m2303$r8$lambda$lO6osfh7Hq2pggRlaUWIdVV5x4(final AirportCityInfo airportCityInfo, Lane lane) {
        airportCityInfo.getClass();
        AirplaneDialog airplaneDialog = new AirplaneDialog(lane, airportCityInfo.airport, airportCityInfo.context, (Master) airportCityInfo.listBox.getAbsoluteParent());
        airplaneDialog.setOnClose(new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.rebuildList();
            }
        });
        airplaneDialog.setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$ph---EvB1GTDvkYRunhcnFz1u1I, reason: not valid java name */
    public static /* synthetic */ void m2304$r8$lambda$phEvB1GTDvkYRunhcnFz1u1I(final AirportCityInfo airportCityInfo, Lane lane) {
        airportCityInfo.getClass();
        AirplaneDialog airplaneDialog = new AirplaneDialog(lane, airportCityInfo.airport, airportCityInfo.context, (Master) airportCityInfo.listBox.getAbsoluteParent());
        airplaneDialog.setOnClose(new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.rebuildList();
            }
        });
        airplaneDialog.setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$GgMDPcjJ5N6D5VHp1g325_EpoX4(Lane lane, Runnable runnable, boolean z, Runnable runnable2) {
        if (lane.hasRealLane()) {
            runnable.run();
        } else if (z) {
            runnable2.run();
        }
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "AirportCityInfo";
    }
}
