package info.flowersoft.theotown.ui;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.notification.DefaultNotificator;
import info.flowersoft.theotown.components.notification.task.Task;
import info.flowersoft.theotown.components.notification.task.TaskManager;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;

/* JADX INFO: loaded from: classes4.dex */
public class TaskIndicator extends Button {
    public City city;
    public Dialog dialog;
    public int dismissCounter;
    public TaskManager taskManager;
    public Translator translator;

    public TaskIndicator(int i, int i2, Gadget gadget, City city) {
        super(i, i2, !city.getGameMode().hasInfinityMoney() ? 60 : 0, 40, gadget);
        this.city = city;
        this.translator = city.getTranslator();
        this.taskManager = ((DefaultNotificator) city.getComponent(4)).getTaskManager();
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        int i3 = i + this.x;
        int i4 = i2 + this.y;
        Engine engine = this.skin.engine;
        if (this.taskManager.isActive()) {
            Task currentTask = this.taskManager.getCurrentTask();
            long startValue = this.taskManager.getStartValue();
            long targetValue = this.taskManager.getTargetValue();
            long currentValue = this.taskManager.getCurrentValue();
            engine.setTransparency(50);
            engine.setColor(Colors.BLACK);
            float f = i3;
            float f2 = i4;
            Drawing.getInstance().drawCircle((this.width * 0.5f) + f, (this.height * 0.5f) + f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 14.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 6.2831855f, 1.0f, 1.0f, engine);
            engine.setTransparency(150);
            long j = currentValue - startValue;
            long j2 = targetValue - startValue;
            float fMin = Math.min(Math.max(j / j2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f);
            float f3 = this.height * 0.5f;
            float f4 = f3 - 4.0f;
            Drawing.getInstance().drawCircle(f + (this.width * 0.5f), f2 + (this.height * 0.5f), f4, f3, 2.620354f, 6.804425f, 1.0f, 1.0f, engine);
            engine.setTransparency(50);
            Color color = Colors.WHITE;
            engine.setColor(color);
            float f5 = f + (this.width * 0.5f);
            float f6 = f2 + (this.height * 0.5f);
            float f7 = f4 + 1.0f;
            float f8 = f3 - 1.0f;
            Drawing.getInstance().drawCircle(f5, f6, f7, f8, 2.670354f, 6.7544246f, 1.0f, 1.0f, engine);
            engine.setTransparency(200);
            engine.setColor(Colors.CYAN);
            Drawing.getInstance().drawCircle(f + (this.width * 0.5f), f2 + (this.height * 0.5f), f7, f8, 2.670354f, 2.670354f + (fMin * 4.0840707f), 1.0f, 1.0f, engine);
            engine.setColor(color);
            engine.setTransparency(255);
            drawText(this.skin.fontSmall, Localizer.localizeBigNumber(j) + "/" + Localizer.localizeBigNumber(j2), i3, i4, this.width, this.height, 0.5f, 1.0f, engine);
            engine.setColor(color);
            engine.drawImage(Resources.IMAGE_WORLD, f, (float) (i4 + (-1)), (float) this.width, (float) this.height, 0.5f, 0.5f, currentTask.getIcon());
            if (Tutorial.isMarked(Tutorial.FLAG_RANK)) {
                Drawing.getInstance().drawArrow(i, i2, this, 2);
            }
        }
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void onClick() {
        if (this.taskManager.getCurrentTask() != null) {
            super.onClick();
            showTaskDialog(this.taskManager.getCurrentTask());
        }
    }

    public final void showTaskDialog(Task task) {
        Dialog dialog = this.dialog;
        if (dialog != null) {
            dialog.setVisible(false);
        }
        Dialog dialog2 = new Dialog(task.getIcon(), this.translator.translate(992), StringFormatter.format(task.getText(), Localizer.localizeBigNumber(this.taskManager.getTargetValue() - this.taskManager.getStartValue())), 200, 106, (Master) getAbsoluteParent());
        this.dialog = dialog2;
        dialog2.setDrawBackground(true);
        this.dialog.addHiddenCancelButton();
        this.dialog.addButton(Resources.ICON_CANCEL, this.translator.translate(1673), false, new Runnable() { // from class: info.flowersoft.theotown.ui.TaskIndicator.1
            @Override // java.lang.Runnable
            public void run() {
                TaskIndicator.this.dismiss();
            }
        });
        this.dialog.addButton(Resources.ICON_OK, this.translator.translate(164), false, new Runnable() { // from class: info.flowersoft.theotown.ui.TaskIndicator.2
            @Override // java.lang.Runnable
            public void run() {
                TheoTown.analytics.logEvent("tasks", "accept", TaskIndicator.this.taskManager.getCurrentTaskId());
                TaskIndicator.this.dismissCounter = 0;
            }
        });
        this.dialog.setVisible(true);
    }

    public final void dismiss() {
        this.dismissCounter++;
        TheoTown.analytics.logEvent("tasks", "dismiss", this.taskManager.getCurrentTaskId());
        if (this.dismissCounter >= 3) {
            this.dismissCounter = 0;
            showDisableTasksDialog();
        } else {
            this.taskManager.dismissCurrentTask();
        }
    }

    public final void showDisableTasksDialog() {
        Dialog dialog = new Dialog(Resources.ICON_MINUS, this.translator.translate(168), this.translator.translate(1497), (Master) getAbsoluteParent());
        dialog.addButton(Resources.ICON_CANCEL, this.translator.translate(1477), true, new Runnable() { // from class: info.flowersoft.theotown.ui.TaskIndicator.3
            @Override // java.lang.Runnable
            public void run() {
                TaskIndicator.this.taskManager.dismissCurrentTask();
            }
        });
        dialog.addButton(Resources.ICON_MINUS, this.translator.translate(3168), false, new Runnable() { // from class: info.flowersoft.theotown.ui.TaskIndicator.4
            @Override // java.lang.Runnable
            public void run() {
                TheoTown.analytics.logEvent("tasks", "disable", TaskIndicator.this.taskManager.getCurrentTaskId());
                TaskIndicator.this.taskManager.dismissCurrentTask();
                TaskIndicator.this.taskManager.setDisabled(true);
            }
        });
        dialog.setVisible(true);
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        super.onUpdate();
        if (this.taskManager.isActive() && this.taskManager.hasNewTask() && Settings.cityTasks) {
            showTaskDialog(this.taskManager.getCurrentTask());
        }
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean isVisible() {
        return Tutorial.isVisible(Tutorial.FLAG_TASK) && this.taskManager.isActive() && !this.city.getGameMode().hasInfinityMoney() && Settings.cityTasks;
    }

    private static void drawText(Font font, String str, int i, int i2, int i3, int i4, float f, float f2, Engine engine) {
        float width = font.getWidth(str);
        float f3 = i3;
        if (width > f3) {
            float f4 = f3 / width;
            engine.setScale(f4, f4);
        }
        engine.setColor(Colors.BLACK);
        engine.setTransparency(150);
        float f5 = i2;
        float f6 = i4;
        engine.drawText(font, str, i + 1, f5, f3, f6, f, f2);
        float f7 = i;
        engine.drawText(font, str, f7, i2 + 1, f3, f6, f, f2);
        engine.drawText(font, str, i - 1, f5, f3, f6, f, f2);
        engine.drawText(font, str, f7, i2 - 1, f3, f6, f, f2);
        engine.setColor(Colors.WHITE);
        engine.setTransparency(255);
        engine.drawText(font, str, f7, f5, f3, f6, f, f2);
        engine.setScale(1.0f, 1.0f);
    }
}
