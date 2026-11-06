package com.badlogic.gdx.backends.android;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import com.badlogic.gdx.utils.Clipboard;

/* JADX INFO: loaded from: classes.dex */
public class AndroidClipboard implements Clipboard {
    public final ClipboardManager clipboard;

    public AndroidClipboard(Context context) {
        this.clipboard = (ClipboardManager) context.getSystemService("clipboard");
    }

    @Override // com.badlogic.gdx.utils.Clipboard
    public String getContents() {
        CharSequence text;
        ClipData primaryClip = this.clipboard.getPrimaryClip();
        if (primaryClip == null || (text = primaryClip.getItemAt(0).getText()) == null) {
            return null;
        }
        return text.toString();
    }

    @Override // com.badlogic.gdx.utils.Clipboard
    public void setContents(String str) {
        this.clipboard.setPrimaryClip(ClipData.newPlainText(str, str));
    }
}
