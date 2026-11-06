package info.flowersoft.theotown.stages.tiledialog;

import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes4.dex */
public class ScriptBasedInformation extends TileInformationProvider {
    public String answer;
    public boolean mutual;

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        MethodCluster methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("showDialog");
        if (methodClusterOrNull != null && methodClusterOrNull.isNotEmpty()) {
            Varargs varargsInvokeUntil = methodClusterOrNull.invokeUntil(LuaValue.varargsOf(new LuaValue[]{LuaValue.valueOf(this.tileX), LuaValue.valueOf(this.tileY)}));
            if (varargsInvokeUntil.narg() >= 1 && varargsInvokeUntil.isstring(1)) {
                this.answer = varargsInvokeUntil.checkjstring(1);
                this.mutual = varargsInvokeUntil.optboolean(2, true);
                return true;
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return this.mutual;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public int getIcon() {
        return super.getIcon();
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public String getTitle() {
        return super.getTitle();
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public String getText() {
        return this.answer;
    }
}
