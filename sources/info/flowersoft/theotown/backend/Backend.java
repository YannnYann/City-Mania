package info.flowersoft.theotown.backend;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.ironsource.R6;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.crossplatform.SocialManager;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.libraries.RuntimeLibrary;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class Backend {
    public static final TaskValidator ALWAYS_VALID = new TaskValidator() { // from class: info.flowersoft.theotown.backend.Backend$$ExternalSyntheticLambda0
        @Override // info.flowersoft.theotown.backend.Backend.TaskValidator
        public final boolean isValid(Backend.Task task) {
            return Backend.$r8$lambda$yklM75snCOjG6R6Lf9a_53hkIP8(task);
        }
    };
    public static Backend instance;
    public final BackendConnector backendConnector;
    public String cake;
    public final Session currentSession;
    public final User currentUser;
    public String logoutHint;
    public boolean paused;
    public boolean runTemporary;
    public ScheduledExecutorService scheduledExecutorService;
    public final List<Task> scheduledTasks;
    public final List<Task> tasks;
    public final UserStore userStore;
    public final Thread workerThread;

    public interface TaskResponseHandler {
        void receive(Task task, JSONObject jSONObject);
    }

    public interface TaskValidator {
        boolean isValid(Task task);
    }

    public static /* synthetic */ boolean $r8$lambda$yklM75snCOjG6R6Lf9a_53hkIP8(Task task) {
        return true;
    }

    public static synchronized void init(BackendConnector backendConnector, UserStore userStore, JSONObject jSONObject) {
        try {
            Backend backend = instance;
            if (backend != null) {
                backend.dispose();
            }
            instance = new Backend(backendConnector, userStore, jSONObject);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static BackendConnector getDefaultBackendConnector() {
        return new BackendConnector(Resources.getSpecificConfig("connection").optString("api url", "https://api.theotown.com"), TheoTown.VERSION_NAME, TheoTown.VERSION_CODE, TheoTown.VERSIONI, TheoTown.runtimeFeatures.getDeviceModel());
    }

    public static Backend getInstance() {
        return instance;
    }

    public Backend(BackendConnector backendConnector, UserStore userStore, JSONObject jSONObject) {
        User user = new User();
        this.currentUser = user;
        this.tasks = new ArrayList();
        this.scheduledTasks = new ArrayList();
        this.cake = "";
        this.backendConnector = backendConnector;
        this.userStore = userStore;
        this.currentSession = new Session(jSONObject);
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1);
        this.scheduledExecutorService = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(new Runnable() { // from class: info.flowersoft.theotown.backend.Backend$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.scheduleTasks();
            }
        }, 0L, 1L, TimeUnit.SECONDS);
        Thread thread = new Thread() { // from class: info.flowersoft.theotown.backend.Backend.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Task task;
                Task task2;
                while (!isInterrupted()) {
                    try {
                        synchronized (Backend.this.tasks) {
                            while (Backend.this.tasks.isEmpty()) {
                                try {
                                    Backend.this.tasks.wait();
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            task = null;
                            task2 = !Backend.this.tasks.isEmpty() ? (Task) Backend.this.tasks.remove(0) : null;
                        }
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (task2 != null && task2.timeout > 0 && jCurrentTimeMillis > task2.initTime + task2.timeout) {
                            Gdx.app.debug("Backend", "Timeout task " + task2.script);
                            Backend.this.timeoutTask(task2);
                            task2 = null;
                        }
                        if (task2 == null || (task2.validator.isValid(task2) && (!task2.userbound || Backend.this.currentUser.isSocialConnectable()))) {
                            task = task2;
                        } else {
                            Backend.this.abortTask(task2, "invalid request");
                        }
                        if (task != null) {
                            Backend.this.runTask(task);
                        }
                        while (Backend.this.paused && !isInterrupted() && !Backend.this.runTemporary) {
                            Thread.sleep(1000L);
                        }
                    } catch (InterruptedException unused) {
                        return;
                    }
                }
            }
        };
        this.workerThread = thread;
        thread.setDaemon(true);
        thread.start();
        userStore.restore(user);
        TheoTown.socialManager.registerStateListener(new SocialManager.StateListener() { // from class: info.flowersoft.theotown.backend.Backend$$ExternalSyntheticLambda2
        });
    }

    public void onPause() {
        synchronized (this.scheduledTasks) {
            this.paused = true;
        }
    }

    public void onResume() {
        synchronized (this.scheduledTasks) {
            this.paused = false;
        }
    }

    public void setRunTemporary(boolean z) {
        this.runTemporary = z;
    }

    public void onForumLogin(String str, String str2) {
        this.currentUser.setForumName(str);
        this.currentUser.setForumPw(str2);
        this.currentSession.invalidate();
        TheoTown.analytics.setConnectedUser(this.currentUser);
        this.userStore.store(this.currentUser);
    }

    public void saveUser() {
        this.userStore.store(this.currentUser);
    }

    public void dispose() {
        this.workerThread.interrupt();
        this.scheduledExecutorService.shutdown();
    }

    public void invalidateSession() {
        if (this.currentSession.isValid()) {
            this.currentSession.invalidate();
        }
    }

    public final void timeoutTask(Task task) {
        abortTask(task, "timeout");
    }

    public final void abortTask(Task task, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", str);
            jSONObject.put("hint", str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        task.responseHandler.receive(task, jSONObject);
    }

    public final void runTask(Task task) {
        if (task.secured) {
            if (!this.currentSession.isValid()) {
                Gdx.app.debug("Backend", "Initiate new session");
                synchronized (this.tasks) {
                    this.tasks.add(0, task);
                }
                runUnsecuredTask(getNewSessionTask());
                return;
            }
            runSecuredTask(task);
            return;
        }
        runUnsecuredTask(task);
    }

    public BackendConnector getConnector() {
        return this.backendConnector;
    }

    public User getUser() {
        return this.currentUser;
    }

    public String getCake() {
        return this.cake;
    }

    public void logout() {
        this.currentUser.invalidateSocialConnection();
        this.currentUser.setForumId(0L);
        this.currentSession.invalidate();
        this.userStore.store(this.currentUser);
        this.cake = "";
    }

    public final void runSecuredTask(Task task) {
        this.backendConnector.sendSecureRequest(task.script, task.data, new ResponseHandlerAdapter(task), this.currentUser, this.cake, this.currentSession);
    }

    public final void runUnsecuredTask(Task task) {
        this.backendConnector.sendRequest(task.script, task.data, this.cake, new ResponseHandlerAdapter(task));
    }

    public final Task getNewSessionTask() {
        String str;
        JSONObject json = this.currentUser.toJson();
        String absolutePath = "unset";
        if (Gdx.app.getType() == Application.ApplicationType.Android) {
            str = "android";
        } else if (Gdx.app.getType() == Application.ApplicationType.iOS) {
            str = "ios";
        } else {
            str = "desktop";
            try {
                absolutePath = new File(RuntimeLibrary.class.getProtectionDomain().getCodeSource().getLocation().toURI()).getAbsolutePath();
            } catch (URISyntaxException e) {
                e.printStackTrace();
            }
        }
        try {
            json.put(R6.F, str);
            json.put("path", absolutePath);
            json.put(R6.B, TheoTown.runtimeFeatures.getDeviceModel());
            if (Gdx.app.getType() != Application.ApplicationType.Desktop) {
                json.remove("steam_id");
                json.remove("steam_token");
            }
            long[] userIds = GameHandler.getInstance().getUserIds();
            JSONArray jSONArray = new JSONArray();
            for (long j : userIds) {
                jSONArray.put(j);
            }
            json.put("user_ids", jSONArray);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        Task task = new Task("user/verify_fb.php", json, new TaskResponseHandler() { // from class: info.flowersoft.theotown.backend.Backend.8
            @Override // info.flowersoft.theotown.backend.Backend.TaskResponseHandler
            public void receive(Task task2, JSONObject jSONObject) {
                String strOptString = jSONObject.optString("status");
                if (strOptString.equals("success")) {
                    Backend.this.logoutHint = null;
                    Backend.this.currentUser.fromJson(jSONObject.optJSONObject("user"));
                    Backend.this.currentSession.fromJson(jSONObject.optJSONObject("session"));
                    Backend.this.saveUser();
                    GameHandler.getInstance().notifyLogin(Backend.this.currentUser.getId());
                    Backend.this.cake = jSONObject.optString("cake", "");
                    return;
                }
                if (!strOptString.equals("invalid cred")) {
                    Backend.this.cake = "";
                    Gdx.app.debug("Backend", "Could not initiate session: " + jSONObject);
                    try {
                        Thread.sleep(5000L);
                        return;
                    } catch (InterruptedException e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
                Backend.this.logout();
                Backend.this.logoutHint = jSONObject.optString("hint", strOptString);
            }
        });
        task.setSecured(false);
        return task;
    }

    public String getLogoutHint() {
        return this.logoutHint;
    }

    public final void scheduleTasks() {
        synchronized (this.scheduledTasks) {
            try {
                if (this.paused) {
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                for (int i = 0; i < this.scheduledTasks.size(); i++) {
                    Task task = this.scheduledTasks.get(i);
                    if (jCurrentTimeMillis - task.lastScheduled >= task.scheduleInterval) {
                        task.lastScheduled = jCurrentTimeMillis;
                        addTask(task);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void addScheduledTask(Task task, int i) {
        synchronized (this.scheduledTasks) {
            task.scheduleInterval = i * 1000;
            this.scheduledTasks.add(task);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036 A[Catch: all -> 0x002c, TryCatch #0 {all -> 0x002c, blocks: (B:5:0x000f, B:8:0x0019, B:15:0x0036, B:16:0x003d, B:13:0x002e, B:17:0x0040, B:18:0x004a), top: B:22:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void addTask(info.flowersoft.theotown.backend.Backend.Task r5) {
        /*
            r4 = this;
            long r0 = java.lang.System.currentTimeMillis()
            info.flowersoft.theotown.backend.Backend.Task.access$202(r5, r0)
            java.lang.String r0 = info.flowersoft.theotown.backend.Backend.Task.access$2000(r5)
            java.util.List<info.flowersoft.theotown.backend.Backend$Task> r1 = r4.tasks
            monitor-enter(r1)
            r2 = 0
        Lf:
            java.util.List<info.flowersoft.theotown.backend.Backend$Task> r3 = r4.tasks     // Catch: java.lang.Throwable -> L2c
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L2c
            if (r2 >= r3) goto L40
            if (r0 == 0) goto L2e
            java.util.List<info.flowersoft.theotown.backend.Backend$Task> r3 = r4.tasks     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r3 = r3.get(r2)     // Catch: java.lang.Throwable -> L2c
            info.flowersoft.theotown.backend.Backend$Task r3 = (info.flowersoft.theotown.backend.Backend.Task) r3     // Catch: java.lang.Throwable -> L2c
            java.lang.String r3 = info.flowersoft.theotown.backend.Backend.Task.access$2000(r3)     // Catch: java.lang.Throwable -> L2c
            boolean r3 = r0.equals(r3)     // Catch: java.lang.Throwable -> L2c
            if (r3 != 0) goto L36
            goto L2e
        L2c:
            r5 = move-exception
            goto L4c
        L2e:
            java.util.List<info.flowersoft.theotown.backend.Backend$Task> r3 = r4.tasks     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r3 = r3.get(r2)     // Catch: java.lang.Throwable -> L2c
            if (r3 != r5) goto L3d
        L36:
            java.util.List<info.flowersoft.theotown.backend.Backend$Task> r3 = r4.tasks     // Catch: java.lang.Throwable -> L2c
            r3.remove(r2)     // Catch: java.lang.Throwable -> L2c
            int r2 = r2 + (-1)
        L3d:
            int r2 = r2 + 1
            goto Lf
        L40:
            java.util.List<info.flowersoft.theotown.backend.Backend$Task> r0 = r4.tasks     // Catch: java.lang.Throwable -> L2c
            r0.add(r5)     // Catch: java.lang.Throwable -> L2c
            java.util.List<info.flowersoft.theotown.backend.Backend$Task> r5 = r4.tasks     // Catch: java.lang.Throwable -> L2c
            r5.notifyAll()     // Catch: java.lang.Throwable -> L2c
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2c
            return
        L4c:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2c
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.backend.Backend.addTask(info.flowersoft.theotown.backend.Backend$Task):void");
    }

    public class ResponseHandlerAdapter implements ResponseHandler<JSONObject> {
        public final Task task;

        public ResponseHandlerAdapter(Task task) {
            this.task = task;
        }

        @Override // info.flowersoft.theotown.backend.ResponseHandler
        public void handle(JSONObject jSONObject) {
            if (jSONObject.optString("status").equals("invalid session") && this.task.secured) {
                Backend.this.currentSession.invalidate();
                synchronized (Backend.this.tasks) {
                    Backend.this.tasks.add(0, this.task);
                }
                return;
            }
            this.task.responseHandler.receive(this.task, jSONObject);
        }

        @Override // info.flowersoft.theotown.backend.ResponseHandler
        public void error(Exception exc) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("status", "exception");
                jSONObject.put("extra", exc.toString());
                jSONObject.put("hint", Backend.getStackTrace(exc));
                handle(jSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public static String getStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static class Task {
        public final JSONObject data;
        public String id;
        public long initTime;
        public long lastScheduled;
        public final TaskResponseHandler responseHandler;
        public int scheduleInterval;
        public final String script;
        public boolean secured = true;
        public boolean userbound = true;
        public TaskValidator validator = Backend.ALWAYS_VALID;
        public long timeout = 10000;

        public Task(String str, JSONObject jSONObject, TaskResponseHandler taskResponseHandler) {
            this.script = str;
            this.data = jSONObject;
            this.responseHandler = taskResponseHandler;
        }

        public Task setSecured(boolean z) {
            this.secured = z;
            return this;
        }

        public Task setUserBound(boolean z) {
            this.userbound = z;
            return this;
        }
    }
}
