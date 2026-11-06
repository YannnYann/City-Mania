package info.flowersoft.theotown.scripting;

import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import java.util.ArrayList;
import java.util.List;
import vm2.LuaFunction;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class Script {
    public final String baseName;
    public final Draft draft;
    public LuaFunction initializer;
    public String name;
    public Script parent;
    public final AbstractFile path;
    public LuaValue script;
    public final Draft sourceDraft;
    public boolean active = true;
    public final List<String> logMessages = new ArrayList();
    public final List<Long> logTimes = new ArrayList();

    public Script(Draft draft, Draft draft2, String str, AbstractFile abstractFile) {
        this.draft = draft;
        this.sourceDraft = draft2;
        this.baseName = str;
        this.path = abstractFile;
        setName("");
    }

    public void log(String str) {
        this.logMessages.add(str);
        this.logTimes.add(Long.valueOf(InternetTime.getInstance().getTime()));
    }

    public LuaFunction getInitializer() {
        return this.initializer;
    }

    public Script getParent() {
        return this.parent;
    }

    public boolean isActive() {
        return this.active;
    }

    public Draft getDraft() {
        return this.draft;
    }

    public Draft getSourceDraft() {
        return this.sourceDraft;
    }

    public boolean isPrivileged() {
        return this.sourceDraft.isPrivileged();
    }

    public boolean isSuperPrivileged() {
        return this.sourceDraft.isSuperPrivileged();
    }

    public LuaValue getScript() {
        return this.script;
    }

    public void setName(String str) {
        this.name = this.baseName + "[ " + this.draft.id + " ] defined by " + this.sourceDraft.id + " " + str;
    }

    public String getName() {
        return this.name;
    }

    public AbstractFile getPath() {
        return this.path;
    }

    public ScriptMethod getMethod(String str) {
        return ScriptMethod.create(str, this, this.script.get(str));
    }

    public String toString() {
        return this.name;
    }
}
