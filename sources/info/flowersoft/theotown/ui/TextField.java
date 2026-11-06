package info.flowersoft.theotown.ui;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.crossplatform.RuntimeFeatures;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.key.KeyMapper;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class TextField extends Button {
    public static final int[] KEY_FILTER = {66, 111, 61};
    public static int idCounter = 0;
    public static int selectedId = -1;
    public IconButton cmdClear;
    public int cursorPosition;
    public String hint;
    public final int id;
    public long lastChangeMS;
    public String lastText;
    public boolean password;
    public int shiftX;
    public String text;
    public RuntimeFeatures.TextEditor textEditor;
    public String title;

    public void onTextChange(String str) {
    }

    public TextField(int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        int i5 = idCounter;
        idCounter = i5 + 1;
        this.id = i5;
        this.cursorPosition = -1;
        this.text = "";
        this.lastText = "";
        this.textEditor = TheoTown.runtimeFeatures.createTextEditor("", (int) this.rect.getX(), (int) this.rect.getY(), (int) this.rect.getWidth(), (int) this.rect.getHeight());
        setShape(i, i2, i3, i4);
        if (this.textEditor != null) {
            return;
        }
        this.paddingRight = 30;
        IconButton iconButton = new IconButton(Resources.ICON_CLEAR_TEXT, "", getClientWidth() + 2, 2, this.paddingRight - 4, getHeight() - 4, this) { // from class: info.flowersoft.theotown.ui.TextField.1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                TextField.this.setText("");
            }

            @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i6, int i7) {
                drawChildren(i6, i7 + 1);
            }
        };
        this.cmdClear = iconButton;
        iconButton.getIconGadget().setColor(this.skin.cTextSecondary);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void layout() {
        super.layout();
        IconButton iconButton = this.cmdClear;
        if (iconButton != null) {
            iconButton.setShape(getClientWidth() + 2, 2, this.paddingRight - 4, getHeight() - 4);
        }
    }

    public boolean usesNativeTextField() {
        return this.textEditor != null;
    }

    public void setPassword(boolean z) {
        this.password = z;
        RuntimeFeatures.TextEditor textEditor = this.textEditor;
        if (textEditor != null) {
            textEditor.setPassword(z);
        }
    }

    public void setAutoFill() {
        RuntimeFeatures.TextEditor textEditor = this.textEditor;
        if (textEditor != null) {
            textEditor.markAsAutoFill(this.password);
        }
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void setShape(int i, int i2, int i3, int i4) {
        super.setShape(i, i2, i3, i4);
        RuntimeFeatures.TextEditor textEditor = this.textEditor;
        if (textEditor != null) {
            textEditor.setShape((int) this.rect.getX(), (int) this.rect.getY(), (int) this.rect.getWidth(), (int) this.rect.getHeight());
        }
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void setVisible(boolean z) {
        if (z != isVisible()) {
            super.setVisible(z);
            RuntimeFeatures.TextEditor textEditor = this.textEditor;
            if (textEditor != null) {
                textEditor.setVisible(z);
            }
        }
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setHint(String str) {
        this.hint = str;
        RuntimeFeatures.TextEditor textEditor = this.textEditor;
        if (textEditor != null) {
            textEditor.setHint(str);
        }
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        String str;
        Font font;
        String str2;
        String str3;
        Skin skin = this.skin;
        Engine engine = skin.engine;
        if (this.textEditor != null) {
            return;
        }
        Font font2 = skin.fontDefault;
        String str4 = this.text;
        if (this.password) {
            char[] cArr = new char[str4.length()];
            Arrays.fill(cArr, (char) 9679);
            str = new String(cArr);
        } else {
            str = str4;
        }
        Color color = Colors.WHITE;
        engine.setColor(color);
        engine.drawNinePatch(Resources.IMAGE_WORLD, this.x + i, this.y + i2, this.width, this.height, this.skin.npListBox);
        engine.setColor(this.skin.cText);
        engine.setClipRect(this.x + i + this.paddingLeft, this.y + i2 + this.paddingTop, getClientWidth(), getClientHeight());
        if (str.isEmpty() && (str3 = this.hint) != null && !str3.isEmpty()) {
            engine.setColor(this.skin.cTextSecondary);
            font = font2;
            engine.drawText(font, this.hint, this.x + i + 5 + this.shiftX, this.y + i2, this.width, this.height, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
            str2 = str;
        } else {
            font = font2;
            str2 = str;
            engine.drawText(font, str2, this.x + i + 5 + this.shiftX, this.y + i2, this.width, this.height, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        }
        int i3 = this.cursorPosition;
        if (i3 >= 0) {
            int iMin = Math.min(i3, str2.length());
            this.cursorPosition = iMin;
            int width = (int) font.getWidth(str2.substring(0, iMin));
            if (this.shiftX + width > getClientWidth() - 10) {
                this.shiftX = (getClientWidth() - 10) - width;
            }
            if (this.shiftX + width < 0) {
                this.shiftX = -width;
            }
        }
        if (isActive() && Gdx.app.getType() == Application.ApplicationType.Desktop && (TimeUtils.millis() - this.lastChangeMS) % 800 < 400) {
            engine.drawImage(Resources.IMAGE_WORLD, this.x + i + 5 + this.shiftX + ((int) font.getWidth(str2.substring(0, this.cursorPosition))), ((this.y + i2) + (this.height / 2)) - (r2 / 2), 1.0f, ((int) font.getHeight(str2)) + 2, Resources.FRAME_RECT);
        }
        engine.resetClipping();
        engine.setColor(color);
        drawChildren(i, i2);
    }

    public void setActive() {
        if (isActive()) {
            return;
        }
        selectedId = this.id;
        if (this.cursorPosition < 0) {
            this.cursorPosition = this.text.length();
        }
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void onClick() {
        if (this.textEditor != null) {
            return;
        }
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            if (!isActive()) {
                selectedId = this.id;
            }
            String str = this.text;
            if (this.password) {
                char[] cArr = new char[str.length()];
                Arrays.fill(cArr, (char) 9679);
                str = new String(cArr);
            }
            Font font = this.skin.fontDefault;
            float x = this.tp.getX() * this.master.getWidthRatio();
            float absoluteX = getAbsoluteX() + 5 + this.shiftX;
            int iCharCount = 0;
            this.cursorPosition = 0;
            while (iCharCount < str.length()) {
                int iCodePointAt = str.codePointAt(iCharCount);
                float codepointWidth = font.getCodepointWidth(iCodePointAt);
                if (x > (codepointWidth / 2.0f) + absoluteX) {
                    this.cursorPosition = Character.charCount(iCodePointAt) + iCharCount;
                }
                absoluteX += codepointWidth;
                iCharCount += Character.charCount(iCodePointAt);
            }
            return;
        }
        Gdx.input.getTextInput(new Input.TextInputListener() { // from class: info.flowersoft.theotown.ui.TextField.2
            @Override // com.badlogic.gdx.Input.TextInputListener
            public void canceled() {
            }

            @Override // com.badlogic.gdx.Input.TextInputListener
            public void input(String str2) {
                TextField.this.text = str2;
                TextField.this.onTextChange(str2);
            }
        }, this.title, this.text, this.hint);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void updateKeyInput(KeyMapper keyMapper) {
        String contents;
        int i;
        if (this.textEditor == null && Gdx.app.getType() == Application.ApplicationType.Desktop && isActive()) {
            int i2 = this.cursorPosition;
            boolean z = true;
            if (keyMapper.hasTypedChar()) {
                char typedChar = keyMapper.getTypedChar();
                if (!Character.isIdentifierIgnorable(typedChar) && (!Character.isWhitespace(typedChar) || Character.isSpaceChar(typedChar))) {
                    this.text = this.text.substring(0, this.cursorPosition) + typedChar + this.text.substring(this.cursorPosition);
                    this.cursorPosition = this.cursorPosition + 1;
                }
            }
            if (!keyMapper.keyDown(Sdk.SDKError.Reason.EMPTY_TPAT_ERROR_VALUE) && !keyMapper.keyDown(Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR_VALUE)) {
                z = false;
            }
            if (keyMapper.keyRepeatedHit(67) && (i = this.cursorPosition) > 0) {
                int iCharCount = Character.charCount(this.text.codePointBefore(i));
                this.text = this.text.substring(0, this.cursorPosition - iCharCount) + this.text.substring(this.cursorPosition);
                this.cursorPosition = this.cursorPosition - iCharCount;
            }
            if (keyMapper.keyRepeatedHit(112) && this.cursorPosition < this.text.length()) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.text.substring(0, this.cursorPosition));
                String str = this.text;
                int i3 = this.cursorPosition;
                sb.append(str.substring(i3 + Character.charCount(str.codePointAt(i3))));
                this.text = sb.toString();
            }
            if (keyMapper.keyRepeatedHit(21) && this.cursorPosition > 0) {
                moveCursorLeft();
            }
            if (keyMapper.keyRepeatedHit(22) && this.cursorPosition < this.text.length()) {
                moveCursorRight();
            }
            if (keyMapper.keyHit(3) && this.cursorPosition > 0) {
                this.cursorPosition = 0;
            }
            if (keyMapper.keyHit(Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE) && this.cursorPosition < this.text.length()) {
                this.cursorPosition = this.text.length();
            }
            if (z && keyMapper.keyHit(31) && !this.text.isEmpty()) {
                Gdx.app.getClipboard().setContents(this.text);
            }
            if (z && keyMapper.keyHit(50) && (contents = Gdx.app.getClipboard().getContents()) != null) {
                this.text = this.text.substring(0, this.cursorPosition) + contents + this.text.substring(this.cursorPosition);
                this.cursorPosition = this.cursorPosition + contents.length();
            }
            if (i2 != this.cursorPosition) {
                this.lastChangeMS = TimeUtils.millis();
            }
            keyMapper.filteredFlush(KEY_FILTER);
        }
    }

    public final void moveCursorRight() {
        int length = this.text.length();
        int i = this.cursorPosition;
        if (length > i) {
            this.cursorPosition = i + Character.charCount(this.text.codePointAt(i));
        }
    }

    public final void moveCursorLeft() {
        int length = this.text.length();
        int i = this.cursorPosition;
        if (length < i || i <= 0) {
            return;
        }
        this.cursorPosition = i - Character.charCount(this.text.codePointBefore(i));
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        super.onUpdate();
        getText();
        if (this.lastText.equals(this.text)) {
            return;
        }
        this.lastChangeMS = TimeUtils.millis();
        String str = this.text;
        this.lastText = str;
        onTextChange(str);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void free() {
        super.free();
        RuntimeFeatures.TextEditor textEditor = this.textEditor;
        if (textEditor != null) {
            this.text = textEditor.getText();
            this.textEditor.dispose();
            this.textEditor = null;
        }
    }

    public boolean isActive() {
        return selectedId == this.id;
    }

    @Override // io.blueflower.stapel2d.gui.Button
    public String getText() {
        RuntimeFeatures.TextEditor textEditor = this.textEditor;
        if (textEditor == null) {
            return this.text;
        }
        String text = textEditor.getText();
        this.text = text;
        return text;
    }

    @Override // io.blueflower.stapel2d.gui.Button
    public void setText(String str) {
        RuntimeFeatures.TextEditor textEditor = this.textEditor;
        if (textEditor != null) {
            textEditor.setText(str);
        }
        this.text = str;
        if (this.cursorPosition >= 0) {
            this.cursorPosition = str.length();
        }
    }
}
