package info.flowersoft.theotown.ui.selectable;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.ScrollableTextFrame;
import info.flowersoft.theotown.ui.Selectable;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DefaultSelectable implements Selectable {
    public static Master master;
    public final AnimationDraft UNKNOWN_PREVIEW_FRAMES = (AnimationDraft) Drafts.get("$logo_unknown00", AnimationDraft.class);
    public GoldButton cmdBuild;
    public ElementLine labelList;
    public ElementLine line;
    public Runnable onSelect;
    public Panel panel;

    @Override // info.flowersoft.theotown.ui.Selectable
    public boolean allowEasySelect() {
        return true;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public int countFrames() {
        return 1;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public int getFrame() {
        return 0;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public String getId() {
        return null;
    }

    public int getPreviewFrame2() {
        return 0;
    }

    public abstract int getSelectIcon();

    public abstract String getSelectText();

    public abstract String getText();

    public boolean hasRequirement() {
        return false;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public boolean isActive() {
        return true;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public boolean isMarkable() {
        return true;
    }

    public boolean isUnlocked() {
        return true;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public void setFrame(int i) {
    }

    public Button getSelectButton() {
        return this.cmdBuild;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public Master getMaster() {
        return master;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public void setOnSelect(Runnable runnable) {
        this.onSelect = runnable;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public boolean isSelectable() {
        if (hasRequirement() && !isUnlocked()) {
            return false;
        }
        GoldButton goldButton = this.cmdBuild;
        return goldButton == null || goldButton.isClickable();
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public void select() {
        Runnable runnable = this.onSelect;
        if (runnable != null) {
            runnable.run();
        }
    }

    public Gadget getLabelList() {
        return this.labelList.getThirdPart();
    }

    public int getLabelHeight() {
        return Math.round(Resources.skin.fontDefault.getHeight()) - 2;
    }

    public static void setMaster(Master master2) {
        master = master2;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public void build(Panel panel) {
        master = (Master) panel.getAbsoluteParent();
        this.panel = panel;
        this.line = new ElementLine(0, 1, 0, panel.getClientHeight() - 30, panel.getClientWidth(), 30, panel);
        this.labelList = new ElementLine(1, 0, 0, 0, panel.getClientWidth(), panel.getClientHeight() - 32, panel);
        new ScrollableTextFrame(getText(), 0, 0, panel.getClientWidth(), panel.getClientHeight(), panel) { // from class: info.flowersoft.theotown.ui.selectable.DefaultSelectable.1
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                int y = DefaultSelectable.this.labelList.getY() + DefaultSelectable.this.labelList.getHeight();
                for (int i = 0; i < DefaultSelectable.this.labelList.getThirdPart().countChildren(); i++) {
                    y -= DefaultSelectable.this.labelList.getThirdPart().getChild(i).getHeight();
                }
                setHeight(y - getY());
                super.onUpdate();
            }
        }.setShowBorder(false);
        GoldButton goldButtonAddButton = addButton(getSelectIcon(), getSelectText(), new Runnable() { // from class: info.flowersoft.theotown.ui.selectable.DefaultSelectable$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.select();
            }
        }, new Getter() { // from class: info.flowersoft.theotown.ui.selectable.DefaultSelectable$$ExternalSyntheticLambda1
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return Boolean.valueOf(this.f$0.isSelectable());
            }
        });
        this.cmdBuild = goldButtonAddButton;
        goldButtonAddButton.setMinimumSize(100, 0);
        this.cmdBuild.setId(getSelectId());
        this.cmdBuild.getParent().layout();
        this.cmdBuild.setGolden(true);
    }

    public GoldButton addButton(int i, String str, final Runnable runnable, final Getter<Boolean> getter) {
        GoldButton goldButton = new GoldButton(i, str, 0, 0, 0, this.line.getThirdPart().getClientHeight(), this.line.getThirdPart()) { // from class: info.flowersoft.theotown.ui.selectable.DefaultSelectable.2
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                if (isVisible()) {
                    super.onClick();
                    runnable.run();
                }
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return ((Boolean) getter.get()).booleanValue();
            }
        };
        goldButton.setGolden(false);
        return goldButton;
    }

    public String getSelectId() {
        return "cmdSelectableSelect";
    }

    public int getPreviewFrame() {
        return this.UNKNOWN_PREVIEW_FRAMES.frames[0];
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public int getPreviewWidth() {
        return Math.round(Resources.IMAGE_WORLD.getWidth(getPreviewFrame()));
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public int getPreviewHeight() {
        return Math.round(Resources.IMAGE_WORLD.getHeight(getPreviewFrame()));
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public void drawPreview(Engine engine, int i, int i2) {
        float handleX;
        float handleY;
        float scaleX = engine.getScaleX();
        float scaleY = engine.getScaleY();
        engine.setColor(Colors.WHITE);
        engine.setTransparency(255);
        int previewFrame = getPreviewFrame();
        float handleX2 = Resources.IMAGE_WORLD.getHandleX(previewFrame) * scaleX;
        float handleY2 = Resources.IMAGE_WORLD.getHandleY(previewFrame) * scaleY;
        int previewFrame2 = getPreviewFrame2();
        if (previewFrame2 > 0) {
            handleX = Resources.IMAGE_WORLD.getHandleX(previewFrame2) * scaleX;
            handleY = Resources.IMAGE_WORLD.getHandleY(previewFrame2) * scaleY;
        } else {
            handleX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            handleY = 0.0f;
        }
        if (hasRequirement() && !isUnlocked()) {
            engine.setTransparency(200);
            float f = i;
            float f2 = i2;
            engine.drawImage(Resources.IMAGE_WORLD, handleX2 + f, handleY2 + f2, previewFrame);
            if (previewFrame2 > 0) {
                engine.drawImage(Resources.IMAGE_WORLD, f + handleX, f2 + handleY, previewFrame2);
            }
            engine.setTransparency(255);
            drawLock(engine, i, i2, getPreviewWidth(), getPreviewHeight());
            return;
        }
        float f3 = i;
        float f4 = i2;
        engine.drawImage(Resources.IMAGE_WORLD, handleX2 + f3, handleY2 + f4, previewFrame);
        if (previewFrame2 > 0) {
            engine.drawImage(Resources.IMAGE_WORLD, f3 + handleX, f4 + handleY, previewFrame2);
        }
    }

    public void drawLock(Engine engine, int i, int i2, float f, float f2) {
        float scaleX = engine.getScaleX();
        engine.setColor(Colors.WHITE);
        engine.setTransparency(255);
        engine.setScale(1.0f, 1.0f);
        engine.drawImage(Resources.IMAGE_WORLD, i + ((int) (((f * scaleX) - 26.0f) / 2.0f)), i2 + ((int) (((f2 * scaleX) - 26.0f) / 2.0f)), Resources.ICON_LOCKED);
        engine.setScale(scaleX, scaleX);
    }

    public int hashCode() {
        String id = getId();
        if (id != null) {
            return id.hashCode();
        }
        return super.hashCode();
    }
}
