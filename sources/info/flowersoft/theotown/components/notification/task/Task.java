package info.flowersoft.theotown.components.notification.task;

import info.flowersoft.theotown.util.Saveable;

/* JADX INFO: loaded from: classes4.dex */
public interface Task extends Saveable {
    int getIcon();

    long getTargetValue();

    String getText();

    long getValue();

    boolean isValid();

    void start();

    void stop(boolean z);
}
