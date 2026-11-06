package info.flowersoft.theotown.ui;

import com.google.android.gms.ads.AdSize;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.key.KeyMapper;
import io.blueflower.stapel2d.util.Predicate;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class RenameDialogBuilder {
    public Predicate<String> filter;
    public Master gui;
    public KeyMapper keyMapper;
    public Setter<Dialog> onBuild;
    public Runnable onCancel;
    public Consumer<String> onOk;
    public boolean password;
    public String textCancel;
    public String textOk;
    public boolean username;
    public int width = 300;
    public int height = AdSize.WIDE_SKYSCRAPER_WIDTH;
    public int iconOk = Resources.ICON_OK;
    public int iconCancel = Resources.ICON_CANCEL;

    public interface Consumer<T> {
        void accept(T t);
    }

    public RenameDialogBuilder(Master master, Translator translator, KeyMapper keyMapper) {
        this.gui = master;
        this.textOk = translator.translate(742);
        this.textCancel = translator.translate(2331);
        this.keyMapper = keyMapper;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public RenameDialogBuilder setOnOk(Consumer<String> consumer) {
        this.onOk = consumer;
        return this;
    }

    public RenameDialogBuilder setOkText(String str) {
        this.textOk = str;
        return this;
    }

    public RenameDialogBuilder setOnCancel(Runnable runnable) {
        this.onCancel = runnable;
        return this;
    }

    public RenameDialogBuilder setCancelText(String str) {
        this.textCancel = str;
        return this;
    }

    public RenameDialogBuilder setFilter(Predicate<String> predicate) {
        this.filter = predicate;
        return this;
    }

    public RenameDialogBuilder setUsername(boolean z) {
        this.username = z;
        return this;
    }

    public RenameDialogBuilder setPassword(boolean z) {
        this.password = z;
        return this;
    }

    public void setOnBuild(Setter<Dialog> setter) {
        this.onBuild = setter;
    }

    public Dialog build(int i, String str, String str2, String str3) {
        final TextField[] textFieldArr = new TextField[1];
        final Dialog dialog = new Dialog(i, str, str2, this.width, this.height, this.gui) { // from class: info.flowersoft.theotown.ui.RenameDialogBuilder.1
            @Override // info.flowersoft.theotown.ui.Dialog
            public void setVisible(boolean z) {
                super.setVisible(z);
                if (z) {
                    textFieldArr[0].setActive();
                }
            }
        };
        final Consumer<String> consumer = this.onOk;
        final Runnable runnable = this.onCancel;
        final Predicate<String> predicate = this.filter;
        dialog.addButton(this.iconCancel, this.textCancel, true, new Runnable() { // from class: info.flowersoft.theotown.ui.RenameDialogBuilder$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RenameDialogBuilder.$r8$lambda$xn95zVk2ek9ZpKd2M8zK8jCVDL0(dialog, runnable);
            }
        });
        final GoldButton goldButtonAddButton = dialog.addButton(this.iconOk, this.textOk, false, new Runnable() { // from class: info.flowersoft.theotown.ui.RenameDialogBuilder$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RenameDialogBuilder.$r8$lambda$g7QOud8IBVsEOefA7vrRIqcEdGU(dialog, consumer, textFieldArr);
            }
        });
        goldButtonAddButton.setGolden(true);
        goldButtonAddButton.addSensitiveKey(66);
        onTextChange(str3, goldButtonAddButton, predicate);
        Panel contentPane = dialog.getContentPane();
        ScrollableTextFrame textFrame = dialog.getTextFrame();
        textFrame.getTextFrame().dontFillParent();
        textFrame.getTextFrame().setHeight(0);
        TextField textField = new TextField(0, textFrame.getTextHeight() + 5, contentPane.getClientWidth(), 30, contentPane) { // from class: info.flowersoft.theotown.ui.RenameDialogBuilder.2
            @Override // info.flowersoft.theotown.ui.TextField
            public void onTextChange(String str4) {
                RenameDialogBuilder.onTextChange(str4, goldButtonAddButton, predicate);
            }
        };
        textField.setText(str3);
        textField.setTitle(str);
        if (this.username || this.password) {
            textField.setPassword(this.password);
        }
        textFieldArr[0] = textField;
        Setter<Dialog> setter = this.onBuild;
        if (setter != null) {
            setter.set(dialog);
        }
        dialog.distributeButtons();
        dialog.setVisible(false);
        return dialog;
    }

    public static /* synthetic */ void $r8$lambda$xn95zVk2ek9ZpKd2M8zK8jCVDL0(Dialog dialog, Runnable runnable) {
        dialog.free();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$g7QOud8IBVsEOefA7vrRIqcEdGU(Dialog dialog, Consumer consumer, TextField[] textFieldArr) {
        dialog.free();
        if (consumer != null) {
            consumer.accept(textFieldArr[0].getText());
        }
    }

    public static void onTextChange(String str, Button button, Predicate<String> predicate) {
        if (predicate != null) {
            if (predicate.apply(str)) {
                button.setEnabled(true);
            } else {
                button.setEnabled(false);
            }
        }
    }
}
