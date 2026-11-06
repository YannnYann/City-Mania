package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TaskManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Master;

/* JADX INFO: loaded from: classes4.dex */
public class TaskCompletionDialogShower {
    public static void showDialog(int i, int i2, Translator translator, Master master, TaskManager.Task task) {
        showDialog(i, i2, translator, master, task, (Runnable) null, (Runnable) null);
    }

    public static void showDialog(int i, int i2, Translator translator, Master master, TaskManager.Task task, Runnable runnable, Runnable runnable2) {
        showDialog(translator.translate(i), translator.translate(i2), translator, master, task, runnable, runnable2);
    }

    public static Dialog showDialog(String str, String str2, Translator translator, Master master, final TaskManager.Task task, Runnable runnable, final Runnable runnable2) {
        if (task != null && task.isCompleted()) {
            return null;
        }
        if (runnable != null) {
            runnable.run();
        }
        Dialog dialog = new Dialog(Resources.PEOPLE_MANAGER, str, str2, master);
        GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, translator.translate(1899), false, new Runnable() { // from class: info.flowersoft.theotown.ui.TaskCompletionDialogShower$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                TaskCompletionDialogShower.$r8$lambda$T3hb2uJuVhuyMNXI4PXhgQYE9oY(task, runnable2);
            }
        });
        goldButtonAddButton.setGolden(true);
        goldButtonAddButton.addSensitiveKey(66);
        dialog.setVisible(true);
        return dialog;
    }

    public static /* synthetic */ void $r8$lambda$T3hb2uJuVhuyMNXI4PXhgQYE9oY(TaskManager.Task task, Runnable runnable) {
        if (task != null) {
            task.complete();
        }
        if (runnable != null) {
            runnable.run();
        }
    }
}
