package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Sign;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.components.DefaultSigns;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class SignTool extends BuildTool {
    public int focusSignIndex = -1;
    public SignEditor signEditor;
    public DefaultSigns signs;

    public interface SignEditor {
        void editSign(Sign sign);

        void newSign(float f, float f2);
    }

    public SignTool(SignEditor signEditor) {
        this.signEditor = signEditor;
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.SignTool.1
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_NEXT;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdNext";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                SignTool.this.focusSign(1);
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return SignTool.this.city.getTranslator().translate(1169);
            }
        });
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.SignTool.2
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_PREVIOUS;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdPrev";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                SignTool.this.focusSign(-1);
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return SignTool.this.city.getTranslator().translate(3381);
            }
        });
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Sign";
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.signs = (DefaultSigns) city.getComponent(18);
    }

    public final void focusSign(int i) {
        if (this.signs.countSigns() > 0) {
            int i2 = this.focusSignIndex + i;
            this.focusSignIndex = i2;
            if (i2 < 0) {
                this.focusSignIndex = this.signs.countSigns() - 1;
            }
            if (this.focusSignIndex >= this.signs.countSigns()) {
                this.focusSignIndex = 0;
            }
            Sign sign = this.signs.getSign(this.focusSignIndex);
            this.city.focus(sign.getX(), sign.getY(), Math.min(this.city.getScale(), 1.0f));
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        City.ScreenToTileData screenToTileDataResolveScreenToTile = this.city.resolveScreenToTile(i3, i4);
        Sign signAt = this.signs.getSignAt(i3, i4, screenToTileDataResolveScreenToTile.originalX, screenToTileDataResolveScreenToTile.originalY);
        if (signAt == null) {
            this.signEditor.newSign(screenToTileDataResolveScreenToTile.originalX, screenToTileDataResolveScreenToTile.originalY);
        } else {
            this.signEditor.editSign(signAt);
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void drawAfter(Drawer drawer) {
        this.signs.drawSigns(drawer.engine, true);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return this.city.getTranslator().translate(33);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_SIGN;
    }
}
