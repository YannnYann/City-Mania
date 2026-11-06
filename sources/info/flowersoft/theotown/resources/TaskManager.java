package info.flowersoft.theotown.resources;

import info.flowersoft.theotown.util.SSP;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class TaskManager {
    public static TaskManager instance;
    public final Task TASK_ACCOUNT_DISCLAIMER;
    public final Task TASK_CHOSE_SHADER;
    public final Task TASK_CREATED_REGION;
    public final Task TASK_GALLERY_UPLOAD_AGREEMENT;
    public final Task TASK_H76;
    public final Task TASK_ONLINE_REGIONS;
    public final Task TASK_OPEN_SCENARIOS_LIST;
    public final Task TASK_OPEN_STORE;
    public final Task TASK_PRIVACY_POLICY_REVIEW;
    public final Task TASK_RATE;
    public final Task TASK_REACH_RANK;
    public final Task TASK_REGION_UPLOAD_DELETION_NOTICE;
    public final Task TASK_SPECIAL_OFFER;
    public final Task TASK_STORE_DISCLAIMER;
    public final Task TASK_STORE_PLUGIN_QUALITY_WARNING;
    public final Task TASK_TOOL_SLIDE;
    public SSP ssp;
    public final List<Task> tasks = new ArrayList();
    public boolean isSetUp = false;

    public TaskManager() {
        this.TASK_REACH_RANK = new Task("reach rank");
        this.TASK_RATE = new Task("rate");
        this.TASK_CHOSE_SHADER = new Task("chose shader").alwaysCompleted();
        this.TASK_SPECIAL_OFFER = new Task("special_offer00");
        this.TASK_TOOL_SLIDE = new Task("tool slide action");
        this.TASK_GALLERY_UPLOAD_AGREEMENT = new Task("gallery upload agreement2");
        this.TASK_PRIVACY_POLICY_REVIEW = new Task(Resources.getSpecificConfig("privacy").optString("task name"));
        this.TASK_OPEN_STORE = new Task("open store");
        this.TASK_STORE_DISCLAIMER = new Task("store disclaimer");
        this.TASK_ACCOUNT_DISCLAIMER = new Task("account disclaimer");
        this.TASK_CREATED_REGION = new Task("region created");
        this.TASK_H76 = new Task("task h76");
        this.TASK_ONLINE_REGIONS = new Task("online regions3");
        this.TASK_STORE_PLUGIN_QUALITY_WARNING = new Task("store plugin quality warning");
        this.TASK_REGION_UPLOAD_DELETION_NOTICE = new Task("region upload deletion notice");
        this.TASK_OPEN_SCENARIOS_LIST = new Task("open scenario list");
    }

    public synchronized void init() {
        if (this.isSetUp) {
            throw new IllegalStateException("Tried to re-setup tasks");
        }
        this.isSetUp = true;
        SSP ssp = new SSP("info.flowersoft.theotown.theotown.tasks");
        this.ssp = ssp;
        SSP.Reader readerLoad = ssp.load();
        for (Task task : this.tasks) {
            task.completed = readerLoad.getBoolean(task.id, false);
            task.completionTimestamp = readerLoad.getLong(task.id + ".timestamp", 0L);
            task.completeUntilTimestamp = readerLoad.getLong(task.id + ".completeuntil", 0L);
        }
    }

    public static void dispose() {
        instance = null;
    }

    public final synchronized void save() {
        try {
            SSP.Writer writerEdit = this.ssp.edit();
            for (Task task : this.tasks) {
                writerEdit.putBoolean(task.id, task.completed);
                writerEdit.putLong(task.id + ".timestamp", task.completionTimestamp);
                writerEdit.putLong(task.id + ".completeuntil", task.completeUntilTimestamp);
            }
            writerEdit.apply();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void reset() {
        try {
            Iterator<Task> it = this.tasks.iterator();
            while (it.hasNext()) {
                it.next().completed = false;
            }
            save();
        } catch (Throwable th) {
            throw th;
        }
    }

    public class Task {
        public boolean alwaysCompleted;
        public long completeUntilTimestamp;
        public boolean completed;
        public long completionTimestamp;
        public final String id;

        public Task(String str) {
            this.id = str;
            TaskManager.this.tasks.add(this);
        }

        public Task alwaysCompleted() {
            this.alwaysCompleted = true;
            return this;
        }

        public boolean isCompleted() {
            if (this.completed || this.alwaysCompleted) {
                return true;
            }
            return this.completionTimestamp != 0 && InternetTime.getInstance().getTime() <= this.completeUntilTimestamp;
        }

        public void complete() {
            if (this.completed) {
                return;
            }
            this.completed = true;
            this.completionTimestamp = InternetTime.getInstance().getTime();
            TaskManager.this.save();
        }

        public void completeForSeconds(long j) {
            if (this.completed) {
                return;
            }
            this.completeUntilTimestamp = InternetTime.getInstance().getTime() + (j * 1000);
            this.completionTimestamp = InternetTime.getInstance().getTime();
            TaskManager.this.save();
        }
    }

    public static TaskManager getInstance() {
        if (instance == null) {
            instance = new TaskManager();
        }
        return instance;
    }
}
