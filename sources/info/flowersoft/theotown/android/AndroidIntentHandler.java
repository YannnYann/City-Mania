package info.flowersoft.theotown.android;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.widget.Toast;
import com.badlogic.gdx.utils.StreamUtils;
import com.ironsource.C3522b4;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import info.flowersoft.theotown.resources.Resources;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: AndroidIntentHandler.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidIntentHandler {
    public static final AndroidIntentHandler INSTANCE = new AndroidIntentHandler();

    public final void handleViewIntent(Intent intent, Context context) {
        File file;
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(context, "context");
        String action = intent.getAction();
        Uri data = intent.getData();
        if (!Intrinsics.areEqual("android.intent.action.VIEW", action) || data == null) {
            return;
        }
        ContentResolver contentResolver = context.getContentResolver();
        Intrinsics.checkNotNull(contentResolver);
        String fileName = getFileName(data, contentResolver);
        if (fileName == null) {
            Toast.makeText(context, "Sorry, cannot access file", 1).show();
            return;
        }
        int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) fileName, '.', 0, false, 6, (Object) null);
        if (iLastIndexOf$default < 0) {
            Toast.makeText(context, "Sorry, could not recognize format of " + fileName, 1).show();
            return;
        }
        String strSubstring = fileName.substring(0, iLastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        String strSubstring2 = fileName.substring(iLastIndexOf$default + 1);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        if (Intrinsics.areEqual(strSubstring2, "city")) {
            file = Resources.allocateNewMapFileInOldSaveDir(strSubstring);
            Intrinsics.checkNotNullExpressionValue(file, "allocateNewMapFileInOldSaveDir(...)");
        } else if (Intrinsics.areEqual(strSubstring2, "ttplugin")) {
            file = new File(Resources.getPluginDir(), fileName);
        } else {
            Toast.makeText(context, "Sorry, could not recognize type of " + fileName, 1).show();
            return;
        }
        if (file.exists()) {
            Toast.makeText(context, "Sorry, target exists already: " + fileName, 1).show();
            return;
        }
        try {
            InputStream inputStreamOpenInputStream = contentResolver.openInputStream(data);
            if (inputStreamOpenInputStream == null) {
                throw new IOException("Could not open stream");
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            StreamUtils.copyStream(inputStreamOpenInputStream, fileOutputStream);
            fileOutputStream.close();
            inputStreamOpenInputStream.close();
            Toast.makeText(context, "Successfully imported " + file.getName(), 1).show();
        } catch (IOException e) {
            e.printStackTrace();
            Toast.makeText(context, "Sorry, could not read " + fileName, 1).show();
        }
    }

    public final String getFileName(Uri uri, ContentResolver contentResolver) {
        int columnIndex;
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(contentResolver, "contentResolver");
        if (Intrinsics.areEqual(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT, uri.getScheme())) {
            Cursor cursorQuery = contentResolver.query(uri, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("_display_name")) != -1) {
                        String string = cursorQuery.getString(columnIndex);
                        CloseableKt.closeFinally(cursorQuery, null);
                        return string;
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(cursorQuery, null);
                } finally {
                }
            }
        } else if (C3522b4.i.b.equals(uri.getScheme())) {
            return uri.getLastPathSegment();
        }
        return null;
    }
}
