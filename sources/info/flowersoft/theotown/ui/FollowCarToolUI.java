package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.FollowCarTool;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class FollowCarToolUI extends Panel {
    public final int BRAKE_FRAME;
    public final int CARREMOVER_FRAME;
    public final int EMEGENCY_FRAME;
    public final int STEERINGWHEEL_FRAME;
    public final int THROTTLE_FRAME;
    public City city;

    public FollowCarToolUI(City city, Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter, int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        this.EMEGENCY_FRAME = ((AnimationDraft) Drafts.get("$anim_cartool_emergency00", AnimationDraft.class)).frames[0];
        this.CARREMOVER_FRAME = ((AnimationDraft) Drafts.get("$anim_cartool_carremover00", AnimationDraft.class)).frames[0];
        this.STEERINGWHEEL_FRAME = ((AnimationDraft) Drafts.get("$anim_cartool_steeringwheel00", AnimationDraft.class)).frames[0];
        this.BRAKE_FRAME = ((AnimationDraft) Drafts.get("$anim_cartool_brake00", AnimationDraft.class)).frames[0];
        this.THROTTLE_FRAME = ((AnimationDraft) Drafts.get("$anim_cartool_throttle00", AnimationDraft.class)).frames[0];
        new DateIndicator(0, 0, this, city, stapel2DGameContext, setter);
        this.city = city;
        setTouchThrough(true);
        build();
    }

    private void build() {
        Panel panel = new Panel(0, 0, getClientWidth(), getClientHeight(), this) { // from class: info.flowersoft.theotown.ui.FollowCarToolUI.1
            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                Car currentCar;
                FollowCarTool tool = FollowCarToolUI.this.getTool();
                if (tool == null || (currentCar = tool.getCurrentCar()) == null) {
                    return false;
                }
                return currentCar.draft.driveable;
            }

            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                drawChildren(i, i2);
            }
        };
        panel.setTouchThrough(true);
        final int i = this.STEERINGWHEEL_FRAME;
        final float[] uVCoords = Resources.IMAGE_WORLD.getUVCoords(i, new float[4]);
        Panel panel2 = new Panel((getClientWidth() / 2) - 100, getClientHeight() - 100, 200, 100, panel) { // from class: info.flowersoft.theotown.ui.FollowCarToolUI.2
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                if (FollowCarToolUI.this.getTool() == null) {
                    return;
                }
                Engine engine = this.skin.engine;
                int i4 = this.x + i2;
                int i5 = this.y + i3;
                int clientWidth = i4 + (getClientWidth() / 2);
                int clientHeight = i5 + ((getClientHeight() * 3) / 4);
                float width = (Resources.IMAGE_WORLD.getWidth(i) * 4.0f) / 2.0f;
                float height = (Resources.IMAGE_WORLD.getHeight(i) * 4.0f) / 2.0f;
                double pendingDir = r1.getPendingDir() * 0.25f * 3.1415927f;
                double d = width;
                float fCos = (float) (Math.cos(pendingDir) * d);
                float fSin = (float) (Math.sin(pendingDir) * d);
                double d2 = height;
                float f = (float) ((-Math.sin(pendingDir)) * d2);
                float fCos2 = (float) (Math.cos(pendingDir) * d2);
                Texture texture = Resources.IMAGE_WORLD.getTexture(i);
                float f2 = -fCos;
                float f3 = clientWidth;
                float f4 = (f2 - f) + f3;
                float f5 = -fSin;
                float f6 = clientHeight;
                float f7 = (f5 - fCos2) + f6;
                float f8 = f2 + f + f3;
                float f9 = f5 + fCos2 + f6;
                float f10 = (fCos - f) + f3;
                float f11 = (fSin - fCos2) + f6;
                float[] fArr = uVCoords;
                float f12 = fArr[0];
                float f13 = fArr[1];
                engine.drawTextureTriangle(texture, f4, f7, f8, f9, f10, f11, f12, f13, f12, fArr[3], fArr[2], f13, 1);
                float[] fArr2 = uVCoords;
                float f14 = fArr2[0];
                float f15 = fArr2[3];
                float f16 = fArr2[2];
                engine.drawTextureTriangle(Resources.IMAGE_WORLD.getTexture(i), f8, f9, fCos + f + f3, fSin + fCos2 + f6, f10, f11, f14, f15, f16, f15, f16, fArr2[1], 1);
                drawChildren(i2, i3);
            }
        };
        panel2.setTouchThrough(true);
        int i2 = 42;
        int i3 = 42;
        KeyAction.CONTROL_CAR_LEFT.applyTo(new IconButton(Resources.ICON_PREVIOUS, "", 0, panel2.getClientHeight() - 42, i2, i3, panel2) { // from class: info.flowersoft.theotown.ui.FollowCarToolUI.3
            @Override // io.blueflower.stapel2d.gui.Button
            public boolean isPressed() {
                FollowCarTool tool = FollowCarToolUI.this.getTool();
                if (super.isPressed()) {
                    return true;
                }
                return tool != null && tool.getPendingDir() == -1;
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                int pendingDir;
                super.onClick();
                FollowCarTool tool = FollowCarToolUI.this.getTool();
                if (tool == null || (pendingDir = tool.getPendingDir()) == -1) {
                    return;
                }
                tool.drive(pendingDir - 1);
            }
        });
        KeyAction.CONTROL_CAR_RIGHT.applyTo(new IconButton(Resources.ICON_NEXT, "", panel2.getClientWidth() - 42, panel2.getClientHeight() - 42, i2, i3, panel2) { // from class: info.flowersoft.theotown.ui.FollowCarToolUI.4
            @Override // io.blueflower.stapel2d.gui.Button
            public boolean isPressed() {
                FollowCarTool tool = FollowCarToolUI.this.getTool();
                return super.isPressed() || (tool != null && tool.getPendingDir() == 1);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                int pendingDir;
                super.onClick();
                FollowCarTool tool = FollowCarToolUI.this.getTool();
                if (tool == null || (pendingDir = tool.getPendingDir()) == 1) {
                    return;
                }
                tool.drive(pendingDir + 1);
            }
        });
    }

    public final FollowCarTool getTool() {
        Tool tool = (Tool) this.city.getComponent(13);
        if (tool instanceof FollowCarTool) {
            return (FollowCarTool) tool;
        }
        return null;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean isVisible() {
        return getTool() != null;
    }

    @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        drawChildren(i, i2);
    }
}
