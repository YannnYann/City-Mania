package info.flowersoft.theotown.components;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Statistics;
import info.flowersoft.theotown.components.statistics.BuildingsItem;
import info.flowersoft.theotown.components.statistics.CarsItem;
import info.flowersoft.theotown.components.statistics.CommercialLvl1Item;
import info.flowersoft.theotown.components.statistics.CommercialLvl2Item;
import info.flowersoft.theotown.components.statistics.CommercialLvl3Item;
import info.flowersoft.theotown.components.statistics.EducationHighItem;
import info.flowersoft.theotown.components.statistics.EducationLowItem;
import info.flowersoft.theotown.components.statistics.EnergyNeedItem;
import info.flowersoft.theotown.components.statistics.EnergyProducedItem;
import info.flowersoft.theotown.components.statistics.HealthItem;
import info.flowersoft.theotown.components.statistics.IncomeItem;
import info.flowersoft.theotown.components.statistics.IndustrialLvl1Item;
import info.flowersoft.theotown.components.statistics.IndustrialLvl2Item;
import info.flowersoft.theotown.components.statistics.IndustrialLvl3Item;
import info.flowersoft.theotown.components.statistics.InhabitantsAllItem;
import info.flowersoft.theotown.components.statistics.InhabitantsLvl1Item;
import info.flowersoft.theotown.components.statistics.InhabitantsLvl2Item;
import info.flowersoft.theotown.components.statistics.InhabitantsLvl3Item;
import info.flowersoft.theotown.components.statistics.MoneyItem;
import info.flowersoft.theotown.components.statistics.RailsItem;
import info.flowersoft.theotown.components.statistics.ResidentialLvl1Item;
import info.flowersoft.theotown.components.statistics.ResidentialLvl2Item;
import info.flowersoft.theotown.components.statistics.ResidentialLvl3Item;
import info.flowersoft.theotown.components.statistics.RoadsItem;
import info.flowersoft.theotown.components.statistics.StatisticsItem;
import info.flowersoft.theotown.components.statistics.TSPassengersItem;
import info.flowersoft.theotown.components.statistics.WaterNeedItem;
import info.flowersoft.theotown.components.statistics.WaterProducedItem;
import info.flowersoft.theotown.components.transportationsystem.TSSystemDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultStatistics extends Statistics implements Saveable {
    public final IntList[] data;
    public final List<StatisticsItem> items;

    public DefaultStatistics() {
        ArrayList arrayList = new ArrayList();
        this.items = arrayList;
        arrayList.add(new InhabitantsAllItem());
        arrayList.add(new InhabitantsLvl1Item());
        arrayList.add(new InhabitantsLvl2Item());
        arrayList.add(new InhabitantsLvl3Item());
        arrayList.add(new ResidentialLvl1Item());
        arrayList.add(new ResidentialLvl2Item());
        arrayList.add(new ResidentialLvl3Item());
        arrayList.add(new CommercialLvl1Item());
        arrayList.add(new CommercialLvl2Item());
        arrayList.add(new CommercialLvl3Item());
        arrayList.add(new IndustrialLvl1Item());
        arrayList.add(new IndustrialLvl2Item());
        arrayList.add(new IndustrialLvl3Item());
        arrayList.add(new MoneyItem());
        arrayList.add(new IncomeItem());
        arrayList.add(new HealthItem());
        arrayList.add(new EducationLowItem());
        arrayList.add(new EducationHighItem());
        arrayList.add(new BuildingsItem());
        arrayList.add(new RoadsItem());
        arrayList.add(new CarsItem());
        arrayList.add(new RailsItem());
        arrayList.add(new EnergyNeedItem());
        arrayList.add(new EnergyProducedItem());
        arrayList.add(new WaterNeedItem());
        arrayList.add(new WaterProducedItem());
        int i = 0;
        int i2 = 0;
        while (true) {
            List<TSSystemDraft> list = Drafts.TS_DRAFTS;
            if (i2 >= list.size()) {
                break;
            }
            TSSystemDraft tSSystemDraft = list.get(i2);
            this.items.add(new TSPassengersItem(tSSystemDraft, tSSystemDraft.getConfig().color));
            i2++;
        }
        this.data = new IntList[this.items.size()];
        while (true) {
            IntList[] intListArr = this.data;
            if (i >= intListArr.length) {
                return;
            }
            intListArr[i] = new IntList();
            i++;
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        HashMap map = new HashMap();
        for (int i = 0; i < this.items.size(); i++) {
            map.put(this.items.get(i).getTag(), Integer.valueOf(i));
        }
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("data")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    Integer num = (Integer) map.get(jsonReader.nextName());
                    int iNextInt = -1;
                    int iIntValue = num != null ? num.intValue() : -1;
                    if (iIntValue >= 0) {
                        IntList intList = this.data[iIntValue];
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            int iNextInt2 = jsonReader.nextInt();
                            if (iNextInt2 >= 0 || intList.size() != 0) {
                                iNextInt = iNextInt2;
                            } else {
                                intList.setCapacity(-(iNextInt2 + 1));
                                if (jsonReader.peek() == 2) {
                                    break;
                                } else {
                                    iNextInt = jsonReader.nextInt();
                                }
                            }
                            int iNextInt3 = jsonReader.nextInt();
                            intList.add(iNextInt);
                            intList.add(iNextInt3);
                        }
                        jsonReader.endArray();
                        if (iNextInt >= 0) {
                            compactifyList(intList, iNextInt);
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("data").beginObject();
        for (int i = 0; i < this.items.size(); i++) {
            StatisticsItem statisticsItem = this.items.get(i);
            IntList intList = this.data[i];
            jsonWriter.name(statisticsItem.getTag());
            jsonWriter.beginArray();
            jsonWriter.value((-intList.getCapacity()) - 1);
            for (int i2 = 0; i2 < intList.size(); i2++) {
                jsonWriter.value(intList.get(i2));
            }
            jsonWriter.endArray();
        }
        jsonWriter.endObject();
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void prepare() {
        super.prepare();
        for (int i = 0; i < this.items.size(); i++) {
            this.items.get(i).bind(this.city);
        }
    }

    public void reset() {
        int i = 0;
        while (true) {
            IntList[] intListArr = this.data;
            if (i >= intListArr.length) {
                return;
            }
            intListArr[i].clear();
            i++;
        }
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent, info.flowersoft.theotown.city.components.DateListener
    public void nextDay() {
        int absoluteDay = (int) ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
        if (absoluteDay >= 0) {
            for (int i = 0; i < this.items.size(); i++) {
                int iEvaluate = this.items.get(i).evaluate();
                IntList intList = this.data[i];
                if (intList.isEmpty() || intList.get(intList.size() - 2) < absoluteDay) {
                    if (absoluteDay % 30 == 0) {
                        compactifyList(intList, absoluteDay);
                    }
                    intList.add(absoluteDay);
                    intList.add(iEvaluate);
                }
            }
        }
    }

    public final void compactifyList(IntList intList, int i) {
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < intList.size()) {
            int i5 = intList.get(i2);
            int iAbs = Math.abs(i - i5) / 180;
            int iFloor = (int) Math.floor(Math.log(iAbs) / Math.log(2.0d));
            if (iFloor > 0 && i5 % (1 << iFloor) != 0) {
                if (i4 == 0) {
                    i3 = i2;
                }
                i4++;
            } else if (i4 > 0) {
                int i6 = i4 * 2;
                intList.removeAt(i3, i6);
                i2 -= i6;
                i4 = 0;
            }
            if (iAbs == 0) {
                return;
            } else {
                i2 += 2;
            }
        }
    }

    public void getItemIndices(Class<? extends StatisticsItem> cls, IntList intList) {
        for (int i = 0; i < this.items.size(); i++) {
            if (this.items.get(i).getClass().equals(cls)) {
                intList.add(i);
            }
        }
    }

    public StatisticsItem getItem(int i) {
        return this.items.get(i);
    }

    public int countEntries(int i) {
        return this.data[i].size() / 2;
    }

    public int getDay(int i, int i2) {
        return this.data[i2].get(i * 2);
    }

    public int getValue(int i, int i2) {
        return this.data[i2].get((i * 2) + 1);
    }
}
