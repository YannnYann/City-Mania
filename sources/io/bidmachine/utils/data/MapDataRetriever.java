package io.bidmachine.utils.data;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class MapDataRetriever<K> implements DataRetriever<K> {
    public final DataConverter dataConverter;
    public final Map<K, Object> params;

    public MapDataRetriever() {
        this(new ConcurrentHashMap(), new SmartDataConverter());
    }

    public void clear() {
        getParams().clear();
    }

    public boolean contains(K k) {
        return getParams().containsKey(k);
    }

    @Override // io.bidmachine.utils.data.DataRetriever
    public boolean getBoolean(K k, boolean z) {
        return this.dataConverter.toBoolean(getObjectOrNull(k, Boolean.valueOf(z)), z);
    }

    @Override // io.bidmachine.utils.data.DataRetriever
    public Double getDoubleOrNull(K k, Double d) {
        return this.dataConverter.toDoubleOrNull(getObjectOrNull(k, d), d);
    }

    @Override // io.bidmachine.utils.data.DataRetriever
    public float getFloat(K k, float f) {
        return this.dataConverter.toFloat(getObjectOrNull(k, Float.valueOf(f)), f);
    }

    @Override // io.bidmachine.utils.data.DataRetriever
    public Float getFloatOrNull(K k, Float f) {
        return this.dataConverter.toFloatOrNull(getObjectOrNull(k, f), f);
    }

    @Override // io.bidmachine.utils.data.DataRetriever
    public int getInteger(K k, int i) {
        return this.dataConverter.toInteger(getObjectOrNull(k, Integer.valueOf(i)), i);
    }

    @Override // io.bidmachine.utils.data.DataRetriever
    public Object getObjectOrNull(K k, Object obj) {
        return contains(k) ? getParams().get(k) : obj;
    }

    public Map<K, Object> getParams() {
        return this.params;
    }

    @Override // io.bidmachine.utils.data.DataRetriever
    public String getStringOrNull(K k, String str) {
        return this.dataConverter.toStringOrNull(getObjectOrNull(k, str), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setParams(Map<K, Object> map) {
        clear();
        if (map != 0) {
            getParams().putAll(map);
        }
    }

    public MapDataRetriever(Map<K, Object> map, DataConverter dataConverter) {
        this.params = map;
        this.dataConverter = dataConverter;
    }
}
