package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Sign;
import info.flowersoft.theotown.components.DefaultSigns;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.SignStyleProvider;
import info.flowersoft.theotown.tools.SignTool;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.selectable.SelectableSign;
import info.flowersoft.theotown.util.Hex;
import info.flowersoft.theotown.util.NameGenerator;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.LineLayout;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Predicate;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableSign extends SelectableDraft {
    public Draft draft;

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return 0L;
    }

    public SelectableSign(City city) {
        super(city);
        Draft draft = new Draft();
        this.draft = draft;
        draft.id = "sign_tool";
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new SignTool(new AnonymousClass1(this.city.getTranslator())));
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.selectable.SelectableSign$1, reason: invalid class name */
    public class AnonymousClass1 implements SignTool.SignEditor {
        public final /* synthetic */ Translator val$translator;

        public AnonymousClass1(Translator translator) {
            this.val$translator = translator;
        }

        public final Master getMaster() {
            return SelectableSign.this.getMaster();
        }

        public final Predicate<String> getFilter() {
            return new Predicate<String>() { // from class: info.flowersoft.theotown.ui.selectable.SelectableSign.1.1
                @Override // io.blueflower.stapel2d.util.Predicate
                public boolean apply(String str) {
                    return !str.isEmpty();
                }
            };
        }

        @Override // info.flowersoft.theotown.tools.SignTool.SignEditor
        public void newSign(float f, float f2) {
            final Sign sign = new Sign("", f, f2, 0, 0);
            RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder(getMaster(), SelectableDraft.context.getTranslator(), SelectableDraft.context.getKey());
            renameDialogBuilder.setWidth(340);
            renameDialogBuilder.setFilter(getFilter());
            renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.ui.selectable.SelectableSign$1$$ExternalSyntheticLambda0
                @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
                public final void accept(Object obj) {
                    SelectableSign.AnonymousClass1.$r8$lambda$WfVzKw4JH3VEgbINw7RtbENXh7U(this.f$0, sign, (String) obj);
                }
            });
            renameDialogBuilder.setOnBuild(SelectableSign.this.getOptionBuilder(sign));
            renameDialogBuilder.build(Resources.ICON_SIGN, this.val$translator.translate(447), this.val$translator.translate(2883), NameGenerator.generateFiltered()).setVisible(true);
        }

        public static /* synthetic */ void $r8$lambda$WfVzKw4JH3VEgbINw7RtbENXh7U(AnonymousClass1 anonymousClass1, Sign sign, String str) {
            SelectableSign.this.applySignText(sign, str);
            ((DefaultSigns) SelectableSign.this.city.getComponent(18)).addSign(sign);
        }

        @Override // info.flowersoft.theotown.tools.SignTool.SignEditor
        public void editSign(final Sign sign) {
            RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder(getMaster(), SelectableDraft.context.getTranslator(), SelectableDraft.context.getKey());
            renameDialogBuilder.setWidth(340);
            renameDialogBuilder.setFilter(getFilter());
            renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.ui.selectable.SelectableSign$1$$ExternalSyntheticLambda1
                @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
                public final void accept(Object obj) {
                    SelectableSign.this.applySignText(sign, (String) obj);
                }
            });
            renameDialogBuilder.setOnBuild(SelectableSign.this.getOptionBuilder(sign));
            final Dialog dialogBuild = renameDialogBuilder.build(Resources.ICON_SIGN, this.val$translator.translate(3328), this.val$translator.translate(88), SelectableSign.this.getSignText(sign));
            LineLayout thirdPart = dialogBuild.getControlLine().getThirdPart();
            for (int i = 0; i < thirdPart.countChildren(); i++) {
                thirdPart.getChild(i).setWidth(0);
            }
            new IconButton(Resources.ICON_REMOVE, this.val$translator.translate(253), 0, 0, 0, thirdPart.getClientHeight(), thirdPart) { // from class: info.flowersoft.theotown.ui.selectable.SelectableSign.1.2
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    ((DefaultSigns) SelectableSign.this.city.getComponent(18)).removeSign(sign);
                    dialogBuild.free();
                }
            }.setChildIndex(0);
            dialogBuild.distributeButtons();
            dialogBuild.setVisible(true);
        }
    }

    public final String getSignText(Sign sign) {
        String text = sign.getText();
        if (sign.getColorIndex() >= 0) {
            return text;
        }
        Color color = sign.getColor();
        return "#" + Hex.bin2hex(new byte[]{(byte) color.getRed(), (byte) color.getGreen(), (byte) color.getBlue()}) + ":" + text;
    }

    public final void applySignText(Sign sign, String str) {
        if (str.length() >= 8 && str.charAt(0) == '#' && str.charAt(7) == ':') {
            byte[] bArrHex2bin = Hex.hex2bin(str.substring(1, 7));
            sign.setColor(bArrHex2bin[0] & 255, bArrHex2bin[1] & 255, bArrHex2bin[2] & 255);
            sign.setText(str.substring(8));
            return;
        }
        sign.setText(str);
    }

    public final Setter<Dialog> getOptionBuilder(final Sign sign) {
        return new Setter<Dialog>() { // from class: info.flowersoft.theotown.ui.selectable.SelectableSign.2
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Dialog dialog) {
                SelectableSign.this.buildOptions(sign, dialog);
            }
        };
    }

    public final void buildOptions(final Sign sign, Dialog dialog) {
        Panel contentPane = dialog.getContentPane();
        Gadget child = contentPane.getChild(contentPane.countChildren() - 1);
        Panel panel = new Panel(0, child.getY() + child.getHeight(), contentPane.getClientWidth(), (contentPane.getClientHeight() - child.getY()) - child.getHeight(), contentPane) { // from class: info.flowersoft.theotown.ui.selectable.SelectableSign.3
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                drawChildren(i, i2);
            }
        };
        int iMin = Math.min(panel.getClientHeight(), 20);
        ElementLine elementLine = new ElementLine(0, 1, 0, 0, panel.getClientWidth(), iMin, panel);
        for (final int length = SignStyleProvider.FONTS.length - 1; length >= 0; length--) {
            Font font = SignStyleProvider.FONTS[length];
            Button button = new Button(0, 0, iMin, iMin, elementLine.getFirstPart()) { // from class: info.flowersoft.theotown.ui.selectable.SelectableSign.4
                @Override // io.blueflower.stapel2d.gui.Button
                public boolean isPressed() {
                    return sign.getSize() == length;
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    sign.setSize(length);
                }
            };
            button.setText("A");
            button.getTextLabel().setFont(font);
        }
        int i = 0;
        while (true) {
            Color[] colorArr = SignStyleProvider.COLORS;
            if (i >= colorArr.length) {
                return;
            }
            final Color color = colorArr[i];
            final int i2 = i;
            new Button(0, 0, iMin, iMin, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.ui.selectable.SelectableSign.5
                @Override // io.blueflower.stapel2d.gui.Button
                public boolean isPressed() {
                    return sign.getColorIndex() == i2;
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    sign.setColor(i2);
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i3, int i4) {
                    super.draw(i3, i4);
                    Engine engine = this.skin.engine;
                    engine.setColor(color);
                    engine.drawImage(Resources.IMAGE_WORLD, i3 + this.x + 4, i4 + this.y + 4, this.width - 8, this.height - 8, Resources.FRAME_RECT);
                    engine.setColor(Colors.WHITE);
                }
            };
            i = i2 + 1;
        }
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        return Resources.ICON_SIGN;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        return Resources.ICON_SIGN;
    }
}
