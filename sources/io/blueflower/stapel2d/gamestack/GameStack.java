package io.blueflower.stapel2d.gamestack;

import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.crossplatform.TheoTown;
import io.blueflower.stapel2d.gui.GUICache;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Stack;

/* JADX INFO: loaded from: classes5.dex */
public final class GameStack implements Setter<Stage> {
    public boolean entered;
    public Stage lastStage;
    public boolean pauseFlag;
    public boolean resumeFlag;
    public boolean appRunning = false;
    public boolean inFocus = true;
    public Stack<Stage> stages = new Stack<>();
    public LinkedList<Stage> droppedStages = new LinkedList<>();
    public boolean stackChanged = false;
    public List<Listener> listeners = new ArrayList();
    public List<Thread> leaveAppHooks = new ArrayList();

    public interface Listener {
        void event(GameStackEvent gameStackEvent, Stage stage);
    }

    @Override // io.blueflower.stapel2d.util.Setter
    public void set(Stage stage) {
        push(stage);
    }

    public void ensureOnTop(Stage stage) {
        if (isEmpty() || peek() != stage) {
            if (this.stages.contains(stage)) {
                while (peek() != stage) {
                    pop();
                }
            } else {
                push(stage);
            }
        }
    }

    public void push(Stage stage) {
        this.stages.push(stage);
        this.stackChanged = true;
    }

    public Stage peek() {
        return this.stages.peek();
    }

    public Stage pop() {
        Stage stagePop = this.stages.pop();
        this.droppedStages.addFirst(stagePop);
        this.stackChanged = true;
        return stagePop;
    }

    public void popAll() {
        while (!isEmpty() && pop() != null) {
        }
    }

    public void refreshCurrentStage() {
        TheoTown.analytics.writeToLog("refresh");
        if (this.stages.isEmpty()) {
            return;
        }
        Stage stageLastElement = this.stages.lastElement();
        if (stageLastElement.isBound() && this.entered) {
            stageLastElement.leave();
            GUICache.invalidateAllCaches();
            stageLastElement.enter();
        }
    }

    public synchronized void update() {
        boolean z;
        try {
            if (this.pauseFlag) {
                onPause();
                this.pauseFlag = false;
            }
            if (this.resumeFlag) {
                onResume();
                this.resumeFlag = false;
            }
            if (!isEmpty()) {
                Stage stageLastElement = this.stages.lastElement();
                Stage stage = this.lastStage;
                if (stage != stageLastElement && stage != null) {
                    i("GameStack", "Leave stage " + this.lastStage.toString());
                    this.lastStage.leave();
                    this.entered = false;
                    sendEvent(GameStackEvent.LEAVE, this.lastStage);
                }
                this.stackChanged = false;
                z = true;
                if (!stageLastElement.isBound()) {
                    TheoTown.analytics.writeToLog("bind " + stageLastElement.toString());
                    i("GameStack", "Bind stage " + stageLastElement.toString());
                    stageLastElement.bind(this);
                    TheoTown.analytics.writeToLog("prepare " + stageLastElement.toString());
                    i("GameStack", "Prepare stage " + stageLastElement.toString());
                    sendEvent(GameStackEvent.PREPARE, stageLastElement);
                    stageLastElement.prepare();
                    if (!this.stages.isEmpty() && this.stages.lastElement() == stageLastElement) {
                        TheoTown.analytics.writeToLog("enter " + stageLastElement.toString());
                        i("GameStack", "Enter stage " + stageLastElement.toString());
                        sendEvent(GameStackEvent.ENTER, stageLastElement);
                        stageLastElement.enter();
                        this.entered = true;
                    } else {
                        this.lastStage = null;
                        update();
                        return;
                    }
                } else if (this.lastStage != stageLastElement) {
                    TheoTown.analytics.writeToLog("enter " + stageLastElement.toString());
                    i("GameStack", "Enter stage " + stageLastElement.toString());
                    sendEvent(GameStackEvent.ENTER, stageLastElement);
                    stageLastElement.enter();
                    this.entered = true;
                }
                if (this.stackChanged) {
                    z = false;
                } else {
                    stageLastElement.update();
                }
                this.lastStage = stageLastElement;
            } else {
                if (this.lastStage != null) {
                    TheoTown.analytics.writeToLog("leave " + this.lastStage.toString());
                    i("GameStack", "Leave stage " + this.lastStage.toString());
                    this.lastStage.leave();
                    this.entered = false;
                    sendEvent(GameStackEvent.LEAVE, this.lastStage);
                }
                this.lastStage = null;
                z = false;
            }
            while (!this.droppedStages.isEmpty()) {
                Stage stageRemoveLast = this.droppedStages.removeLast();
                if (stageRemoveLast.isBound()) {
                    if (stageRemoveLast == this.lastStage) {
                        TheoTown.analytics.writeToLog("leave " + stageRemoveLast);
                        i("GameStack", "Leave stage " + stageRemoveLast);
                        this.lastStage.leave();
                        this.entered = false;
                        sendEvent(GameStackEvent.LEAVE, this.lastStage);
                        this.lastStage = null;
                    }
                    TheoTown.analytics.writeToLog("drop " + stageRemoveLast);
                    i("GameStack", "Drop stage " + stageRemoveLast);
                    stageRemoveLast.drop();
                    sendEvent(GameStackEvent.DROP, stageRemoveLast);
                }
            }
            if (this.stackChanged && !z) {
                this.stackChanged = false;
                update();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean isEmpty() {
        return this.stages.isEmpty();
    }

    public synchronized void onPause() {
        if (this.appRunning) {
            if (!isEmpty() && this.stages.lastElement().isBound()) {
                TheoTown.analytics.writeToLog("pause -> leave " + this.stages.lastElement().toString());
                i("GameStack", "Leave stage " + this.stages.lastElement().toString());
                Stage stageLastElement = this.stages.lastElement();
                stageLastElement.leave();
                this.entered = false;
                sendEvent(GameStackEvent.LEAVE, stageLastElement);
            }
        }
    }

    public synchronized void onPauseApp() {
        try {
            TheoTown.analytics.writeToLog("pause app");
            if (!isEmpty() && this.stages.lastElement().isBound()) {
                this.stages.lastElement().leaveApp();
            }
            if (!this.stages.isEmpty() && this.stages.peek().isBound()) {
                this.stages.peek().leave();
                this.entered = false;
            }
            sendEvent(GameStackEvent.APP_LEAVE, null);
            this.appRunning = false;
            Iterator<Thread> it = this.leaveAppHooks.iterator();
            while (it.hasNext()) {
                it.next().start();
            }
            this.leaveAppHooks.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void onResume() {
        if (this.appRunning) {
            if (!isEmpty() && this.stages.lastElement().isBound()) {
                TheoTown.analytics.writeToLog("resume -> enter " + this.stages.lastElement().toString());
                i("GameStack", "Enter stage " + this.stages.lastElement().toString());
                Stage stageLastElement = this.stages.lastElement();
                sendEvent(GameStackEvent.ENTER, stageLastElement);
                stageLastElement.enter();
                this.entered = true;
            }
        }
    }

    public synchronized void onResumeApp() {
        try {
            this.appRunning = true;
            if (!isEmpty() && this.stages.lastElement().isBound()) {
                Stage stageLastElement = this.stages.lastElement();
                TheoTown.analytics.writeToLog("enter app");
                stageLastElement.enterApp();
            }
            TheoTown.analytics.writeToLog("resume app");
            sendEvent(GameStackEvent.APP_ENTER, null);
            this.resumeFlag = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean addLeaveAppHook(Thread thread) {
        return this.leaveAppHooks.add(thread);
    }

    public synchronized boolean removeLeaveAppHook(Thread thread) {
        return this.leaveAppHooks.remove(thread);
    }

    public final void sendEvent(GameStackEvent gameStackEvent, Stage stage) {
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().event(gameStackEvent, stage);
        }
    }

    public final void i(String str, String str2) {
        Gdx.app.debug(str, str2);
    }

    public void rebind() {
        if (this.stages.isEmpty()) {
            return;
        }
        Stage stage = this.stages.get(r0.size() - 1);
        if (stage.isBound()) {
            stage.drop();
        }
    }

    public <T extends Stage> T getStageByType(Class<T> cls) {
        for (int size = this.stages.size() - 1; size >= 0; size--) {
            T t = (T) this.stages.get(size);
            if (cls.isInstance(t)) {
                return t;
            }
        }
        return null;
    }

    public int size() {
        return this.stages.size();
    }

    public Stage get(int i) {
        return this.stages.get(i);
    }

    public Stage replace(int i, Stage stage) {
        return this.stages.set(i, stage);
    }
}
