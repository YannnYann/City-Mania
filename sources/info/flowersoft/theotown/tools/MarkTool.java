package info.flowersoft.theotown.tools;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.marker.BuildToolMarker;
import info.flowersoft.theotown.tools.marker.TrafficMarker;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class MarkTool extends BuildTool {
    public Tool.ClickListener action;
    public Getter<String> name;
    public int variant;

    public MarkTool() {
        this.variant = 0;
        this.name = new Getter<String>() { // from class: info.flowersoft.theotown.tools.MarkTool.1
            @Override // io.blueflower.stapel2d.util.Getter
            public String get() {
                return "Marker";
            }
        };
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.MarkTool.2
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
                MarkTool.this.nextVariant();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                return MarkTool.this.hasVariants();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public KeyAction getHotkey() {
                return KeyAction.TOOL_NEXT_VARIANT;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return MarkTool.this.city.getTranslator().translate(1437);
            }
        });
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.MarkTool.3
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
                MarkTool.this.prevVariant();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                return MarkTool.this.hasVariants();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public KeyAction getHotkey() {
                return KeyAction.TOOL_PREVIOUS_VARIANT;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return MarkTool.this.city.getTranslator().translate(2969);
            }
        });
    }

    public MarkTool(BuildToolMarker buildToolMarker) {
        this();
        setMarker(buildToolMarker);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Mark";
    }

    public final boolean hasVariants() {
        BuildToolMarker buildToolMarker = this.marker;
        return buildToolMarker != null && buildToolMarker.countVariants() > 1;
    }

    private int countVariants() {
        BuildToolMarker buildToolMarker = this.marker;
        if (buildToolMarker != null) {
            return Math.max(buildToolMarker.countVariants(), 1);
        }
        return 1;
    }

    public final void prevVariant() {
        int iCountVariants = ((this.variant + countVariants()) - 1) % countVariants();
        this.variant = iCountVariants;
        this.marker.setVariant(iCountVariants);
    }

    public final void nextVariant() {
        int iCountVariants = (this.variant + 1) % countVariants();
        this.variant = iCountVariants;
        this.marker.setVariant(iCountVariants);
    }

    public void setAction(Tool.ClickListener clickListener) {
        this.action = clickListener;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        BuildToolMarker buildToolMarker = this.marker;
        if (buildToolMarker != null) {
            return buildToolMarker.getIcon();
        }
        return Resources.ICON_EYE;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        Tool.ClickListener clickListener = this.action;
        if (clickListener == null) {
            this.city.getDefaultTool().click(i, i2, f, f2, i3, i4);
        } else {
            clickListener.onClick(this, i, i2, i3, i4);
        }
    }

    public void setName(final Getter<String> getter) {
        this.name = new Getter<String>() { // from class: info.flowersoft.theotown.tools.MarkTool.4
            @Override // io.blueflower.stapel2d.util.Getter
            public String get() {
                MarkTool markTool = MarkTool.this;
                if (markTool.marker instanceof TrafficMarker) {
                    String strTranslate = markTool.city.getTranslator().translate(1492);
                    int i = MarkTool.this.variant;
                    String strTranslate2 = i != 1 ? i != 2 ? i != 3 ? null : MarkTool.this.city.getTranslator().translate(2144) : MarkTool.this.city.getTranslator().translate(Sdk.SDKError.Reason.AD_WIN_NOTIFICATION_ERROR_VALUE) : MarkTool.this.city.getTranslator().translate(450);
                    if (strTranslate2 == null) {
                        return strTranslate;
                    }
                    return strTranslate + " (" + strTranslate2 + ")";
                }
                return (String) getter.get();
            }
        };
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return this.name.get();
    }
}
