package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Mesh implements Disposable {
    public static final Map<Application, Array<Mesh>> meshes = new HashMap();

    public static void invalidateAllMeshes(Application application) {
        Array<Mesh> array = meshes.get(application);
        if (array != null && array.size > 0) {
            array.get(0).getClass();
            throw null;
        }
    }

    public static void clearAllMeshes(Application application) {
        meshes.remove(application);
    }

    public static String getManagedStatus() {
        StringBuilder sb = new StringBuilder();
        sb.append("Managed meshes/app: { ");
        Iterator<Application> it = meshes.keySet().iterator();
        while (it.hasNext()) {
            sb.append(meshes.get(it.next()).size);
            sb.append(" ");
        }
        sb.append("}");
        return sb.toString();
    }
}
