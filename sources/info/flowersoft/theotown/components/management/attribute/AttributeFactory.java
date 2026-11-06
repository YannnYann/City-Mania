package info.flowersoft.theotown.components.management.attribute;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class AttributeFactory {
    public static Map<Attribute, String> attributeToTag;
    public static List<Attribute> attributes;
    public static Map<Class<? extends Attribute>, Integer> classToIndex;
    public static Map<String, Attribute> tagToAttribute;
    public static Map<String, Integer> tagToIndex;
    public static List<String> tags;

    public static int countAttributes() {
        prepare();
        return attributes.size();
    }

    public static int getIndex(Class<? extends Attribute> cls) {
        prepare();
        if (classToIndex.containsKey(cls)) {
            return classToIndex.get(cls).intValue();
        }
        return -1;
    }

    public static int getIndex(String str) {
        prepare();
        if (tagToIndex.containsKey(str)) {
            return tagToIndex.get(str).intValue();
        }
        return -1;
    }

    public static Attribute getAttribute(String str) {
        int index = getIndex(str);
        if (index >= 0) {
            return attributes.get(index);
        }
        return null;
    }

    public static Attribute getAttribute(int i) {
        prepare();
        if (i < 0 || i >= attributes.size()) {
            return null;
        }
        return attributes.get(i);
    }

    public static Attribute getAttribute(Class<? extends Attribute> cls) {
        return getAttributes().get(getIndex(cls));
    }

    public static String getTag(Attribute attribute) {
        prepare();
        return attributeToTag.get(attribute);
    }

    public static String getTag(int i) {
        prepare();
        return tags.get(i);
    }

    public static List<Attribute> getAttributes() {
        prepare();
        return attributes;
    }

    public static List<String> getTags() {
        prepare();
        return tags;
    }

    public static void prepare() {
        if (attributes != null) {
            return;
        }
        attributes = new ArrayList();
        tags = new ArrayList();
        tagToAttribute = new HashMap();
        classToIndex = new HashMap();
        tagToIndex = new HashMap();
        attributeToTag = new HashMap();
        add("edl", new EducationLowAttribute());
        add("edh", new EducationHighAttribute());
        add("crm", new CrimeAttribute());
        add("fire", new FireDangerAttribute());
        add("wp", new WaterPollutionAttribute());
        add("plt", new PollutionAttribute());
        add("prk", new ParkAttribute());
        add("sp", new SportAttribute());
        add("fth", new ReligionHappiness());
        add("hlth", new HealthHappiness());
        add("hedu", new EducationHappiness());
        add("hlvl", new LevelHappiness());
        add("htx", new TaxesHappiness());
        add("htr", new TransportationHappiness());
        add("hzn", new ZoneHappiness());
        add("hspl", new SupplyHappiness());
        add("hft", new FreeTimeHappiness());
        add("clt", new CultureHappiness());
        add("henv", new EnvironmentHappiness());
        add("hpd", new PoliceHappiness());
        add("hfd", new FireBrigadeHappiness());
        add("hpk", new ParkHappiness());
        add("hsp", new SportHappiness());
        add("wst", new WasteHappiness());
        add("hgen", new GeneralHappiness());
    }

    public static void add(String str, Attribute attribute) {
        if (tagToAttribute.keySet().contains(str)) {
            throw new IllegalArgumentException("Tag " + str + " already in use!");
        }
        attributes.add(attribute);
        tags.add(str);
        tagToAttribute.put(str, attribute);
        classToIndex.put((Class<? extends Attribute>) attribute.getClass(), Integer.valueOf(attributes.size() - 1));
        tagToIndex.put(str, Integer.valueOf(attributes.size() - 1));
        attributeToTag.put(attribute, str);
        attribute.setIndex(attributes.size() - 1);
    }
}
