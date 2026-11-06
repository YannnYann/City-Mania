package info.flowersoft.theotown.android;

import android.content.res.AssetFileDescriptor;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.DocumentsProvider;
import android.webkit.MimeTypeMap;
import com.ironsource.C3522b4;
import info.flowersoft.theotown.theotown.R;
import info.flowersoft.theotown.util.Files;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.PriorityQueue;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class MyCloudProvider extends DocumentsProvider {
    public File baseDir;
    public final Set<String> hiddenFiles = new HashSet(Arrays.asList("/.pmodext", "/managed plugins/.core.mpf", "/managed plugins/.plugin_dsa.mpf", "*.nomedia", "/.migrated.txt", "/.pmodext"));
    public static final String[] DEFAULT_ROOT_PROJECTION = {"root_id", "mime_types", "flags", C3522b4.i.H0, C3522b4.i.D0, "summary", "document_id", "available_bytes"};
    public static final String[] DEFAULT_DOCUMENT_PROJECTION = {"document_id", "mime_type", "_display_name", "last_modified", "flags", "_size"};

    public final boolean exists() {
        return true;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        System.out.println("onCreate");
        try {
            File canonicalFile = getContext().getExternalFilesDir(null).getCanonicalFile();
            this.baseDir = canonicalFile;
            canonicalFile.mkdirs();
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // android.provider.DocumentsProvider
    public Cursor queryRoots(String[] strArr) throws FileNotFoundException {
        System.out.println("queryRoots");
        MatrixCursor matrixCursor = new MatrixCursor(resolveRootProjection(strArr));
        if (!exists()) {
            return matrixCursor;
        }
        MatrixCursor.RowBuilder rowBuilderNewRow = matrixCursor.newRow();
        rowBuilderNewRow.add("root_id", "root");
        rowBuilderNewRow.add("flags", 31);
        rowBuilderNewRow.add(C3522b4.i.D0, getContext().getString(R.string.app_name));
        rowBuilderNewRow.add("document_id", getDocIdForFile(this.baseDir));
        System.out.println("Doc id:" + getDocIdForFile(this.baseDir));
        rowBuilderNewRow.add("mime_types", getChildMimeTypes(this.baseDir));
        rowBuilderNewRow.add("available_bytes", Long.valueOf(this.baseDir.getFreeSpace()));
        rowBuilderNewRow.add(C3522b4.i.H0, Integer.valueOf(R.mipmap.ic_launcher));
        return matrixCursor;
    }

    @Override // android.provider.DocumentsProvider
    public Cursor queryDocument(String str, String[] strArr) throws FileNotFoundException {
        System.out.println("queryDoc " + str);
        File fileForDocId = getFileForDocId(str);
        if (fileForDocId == null || !fileForDocId.exists()) {
            throw new FileNotFoundException();
        }
        MatrixCursor matrixCursor = new MatrixCursor(resolveDocumentProjection(strArr));
        includeFile(matrixCursor, fileForDocId);
        matrixCursor.setNotificationUri(getContext().getContentResolver(), getUri(str));
        return matrixCursor;
    }

    @Override // android.provider.DocumentsProvider
    public Cursor queryChildDocuments(String str, String[] strArr, String str2) throws FileNotFoundException {
        System.out.println("queryChildren " + str);
        MatrixCursor matrixCursor = new MatrixCursor(resolveDocumentProjection(strArr));
        File fileForDocId = getFileForDocId(str);
        if (fileForDocId == null || !fileForDocId.exists() || !fileForDocId.isDirectory()) {
            throw new FileNotFoundException();
        }
        File[] fileArrListFiles = fileForDocId.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (!isFileHidden(file)) {
                    includeFile(matrixCursor, file);
                }
            }
        }
        matrixCursor.setNotificationUri(getContext().getContentResolver(), getChildrenUri(str));
        return matrixCursor;
    }

    @Override // android.provider.DocumentsProvider
    public AssetFileDescriptor openDocumentThumbnail(String str, Point point, CancellationSignal cancellationSignal) throws FileNotFoundException {
        return new AssetFileDescriptor(ParcelFileDescriptor.open(getFileForDocId(str), 268435456), 0L, -1L);
    }

    @Override // android.provider.DocumentsProvider
    public ParcelFileDescriptor openDocument(final String str, String str2, CancellationSignal cancellationSignal) throws FileNotFoundException {
        File fileForDocId = getFileForDocId(str);
        if (fileForDocId == null) {
            throw new FileNotFoundException();
        }
        int mode = ParcelFileDescriptor.parseMode(str2);
        if (str2.contains("w")) {
            try {
                return ParcelFileDescriptor.open(fileForDocId, mode, new Handler(getContext().getMainLooper()), new ParcelFileDescriptor.OnCloseListener() { // from class: info.flowersoft.theotown.android.MyCloudProvider.1
                    @Override // android.os.ParcelFileDescriptor.OnCloseListener
                    public void onClose(IOException iOException) {
                        MyCloudProvider myCloudProvider = MyCloudProvider.this;
                        myCloudProvider.notifyChange(myCloudProvider.getUri(str));
                    }
                });
            } catch (IOException unused) {
                throw new FileNotFoundException();
            }
        }
        return ParcelFileDescriptor.open(fileForDocId, mode);
    }

    @Override // android.provider.DocumentsProvider
    public Cursor queryRecentDocuments(String str, String[] strArr) throws FileNotFoundException {
        if (!str.equals("root")) {
            throw new FileNotFoundException("Illegal root");
        }
        MatrixCursor matrixCursor = new MatrixCursor(resolveDocumentProjection(strArr));
        PriorityQueue priorityQueue = new PriorityQueue(5, new Comparator<File>() { // from class: info.flowersoft.theotown.android.MyCloudProvider.2
            @Override // java.util.Comparator
            public int compare(File file, File file2) {
                return Long.compare(file.lastModified(), file2.lastModified());
            }
        });
        LinkedList linkedList = new LinkedList();
        linkedList.add(this.baseDir);
        while (!linkedList.isEmpty()) {
            File file = (File) linkedList.removeFirst();
            if (file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null) {
                    Collections.addAll(linkedList, fileArrListFiles);
                }
            } else {
                priorityQueue.add(file);
            }
        }
        for (int i = 0; i < Math.min(9, priorityQueue.size()); i++) {
            includeFile(matrixCursor, (File) priorityQueue.remove());
        }
        return matrixCursor;
    }

    @Override // android.provider.DocumentsProvider
    public Cursor querySearchDocuments(String str, String str2, String[] strArr) throws FileNotFoundException {
        if (!str.equals("root")) {
            throw new FileNotFoundException("Illegal root");
        }
        MatrixCursor matrixCursor = new MatrixCursor(resolveDocumentProjection(strArr));
        LinkedList linkedList = new LinkedList();
        linkedList.add(this.baseDir);
        while (!linkedList.isEmpty() && matrixCursor.getCount() < 10) {
            File file = (File) linkedList.removeFirst();
            if (file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null) {
                    Collections.addAll(linkedList, fileArrListFiles);
                }
            } else if (file.getName().toLowerCase(Locale.ENGLISH).contains(str2)) {
                includeFile(matrixCursor, file);
            }
        }
        return matrixCursor;
    }

    @Override // android.provider.DocumentsProvider
    public boolean isChildDocument(String str, String str2) {
        System.out.println("isChildDoc " + str + " " + str2);
        File fileForDocId = getFileForDocId(str);
        File fileForDocId2 = getFileForDocId(str2);
        return fileForDocId != null && fileForDocId2 != null && fileForDocId.exists() && fileForDocId2.exists() && fileForDocId2.getParentFile().equals(fileForDocId);
    }

    @Override // android.provider.DocumentsProvider
    public String createDocument(String str, String str2, String str3) throws FileNotFoundException {
        System.out.println("createDoc " + str + " " + str3);
        File fileForDocId = getFileForDocId(str);
        if (fileForDocId == null || !fileForDocId.isDirectory()) {
            throw new FileNotFoundException();
        }
        File file = new File(fileForDocId, str3);
        if (!file.exists()) {
            if (str2.equals("vnd.android.document/directory")) {
                if (!file.mkdir()) {
                    throw new FileNotFoundException();
                }
            } else {
                try {
                    if (!file.createNewFile()) {
                        throw new FileNotFoundException();
                    }
                } catch (IOException unused) {
                    throw new FileNotFoundException();
                }
            }
            notifyChange(getUri(str));
        }
        return getDocIdForFile(file);
    }

    @Override // android.provider.DocumentsProvider
    public void deleteDocument(String str) throws FileNotFoundException {
        System.out.println("deleteDoc " + str);
        File fileForDocId = getFileForDocId(str);
        if (fileForDocId == null || !fileForDocId.exists()) {
            throw new FileNotFoundException();
        }
        Files.deleteFile(fileForDocId);
        notifyChange(getUri(getDocIdForFile(fileForDocId.getParentFile())));
    }

    @Override // android.provider.DocumentsProvider
    public String renameDocument(String str, String str2) throws FileNotFoundException {
        System.out.println("renameDoc " + str + " -> " + str2);
        File fileForDocId = getFileForDocId(str);
        if (fileForDocId == null || !fileForDocId.exists()) {
            throw new FileNotFoundException();
        }
        File file = new File(fileForDocId.getParent(), str2);
        if (!fileForDocId.renameTo(file)) {
            throw new FileNotFoundException();
        }
        String docIdForFile = getDocIdForFile(file);
        notifyChange(getUri(str));
        notifyChange(getUri(docIdForFile));
        notifyChange(getChildrenUri(getDocIdForFile(file.getParentFile())));
        return docIdForFile;
    }

    @Override // android.provider.DocumentsProvider
    public String copyDocument(String str, String str2) throws FileNotFoundException {
        System.out.println("copyDoc " + str + " -> " + str2);
        File fileForDocId = getFileForDocId(str);
        File fileForDocId2 = getFileForDocId(str2);
        if (fileForDocId == null || fileForDocId2 == null || !fileForDocId.exists() || !fileForDocId2.isDirectory()) {
            throw new FileNotFoundException();
        }
        File file = new File(fileForDocId2, fileForDocId.getName());
        Files.copyFile(fileForDocId, file);
        String docIdForFile = getDocIdForFile(file);
        notifyChange(getUri(str2));
        return docIdForFile;
    }

    @Override // android.provider.DocumentsProvider
    public String moveDocument(String str, String str2, String str3) throws FileNotFoundException {
        System.out.println("moveDoc" + str + " " + str2 + " -> " + str3);
        File fileForDocId = getFileForDocId(str);
        File fileForDocId2 = getFileForDocId(str);
        File fileForDocId3 = getFileForDocId(str3);
        if (fileForDocId == null || fileForDocId2 == null || fileForDocId3 == null || !fileForDocId.exists() || !fileForDocId2.isDirectory() || !fileForDocId3.isDirectory()) {
            throw new FileNotFoundException();
        }
        File file = new File(fileForDocId3, fileForDocId.getName());
        if (!fileForDocId.renameTo(file)) {
            throw new FileNotFoundException();
        }
        String docIdForFile = getDocIdForFile(file);
        notifyChange(getUri(str));
        notifyChange(getUri(str3));
        return docIdForFile;
    }

    @Override // android.provider.DocumentsProvider
    public void removeDocument(String str, String str2) throws FileNotFoundException {
        System.out.println("removeDoc " + str + " in " + str2);
        File fileForDocId = getFileForDocId(str);
        if (fileForDocId == null || !fileForDocId.exists()) {
            throw new FileNotFoundException();
        }
        Files.deleteFile(fileForDocId);
        notifyChange(getUri(str2));
    }

    @Override // android.provider.DocumentsProvider
    public String getDocumentType(String str) throws FileNotFoundException {
        File fileForDocId = getFileForDocId(str);
        if (fileForDocId == null || !fileForDocId.exists()) {
            throw new FileNotFoundException();
        }
        return getFileMimeType(fileForDocId);
    }

    @Override // android.content.ContentProvider
    public boolean refresh(Uri uri, Bundle bundle, CancellationSignal cancellationSignal) {
        System.out.println("refresh " + uri.toString());
        return super.refresh(uri, bundle, cancellationSignal);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    public final void includeFile(MatrixCursor matrixCursor, File file) {
        String name = file.getName();
        String fileMimeType = getFileMimeType(file);
        boolean zStartsWith = fileMimeType.startsWith("image/");
        ?? r2 = zStartsWith;
        if (file.isDirectory()) {
            r2 = (zStartsWith ? 1 : 0) | 8;
        }
        MatrixCursor.RowBuilder rowBuilderNewRow = matrixCursor.newRow();
        rowBuilderNewRow.add("document_id", getDocIdForFile(file));
        rowBuilderNewRow.add("_display_name", name);
        rowBuilderNewRow.add("_size", Long.valueOf(file.length()));
        rowBuilderNewRow.add("mime_type", fileMimeType);
        rowBuilderNewRow.add("last_modified", Long.valueOf(file.lastModified()));
        rowBuilderNewRow.add("flags", Integer.valueOf(r2 | 1478));
    }

    public final Uri getUri(String str) {
        return DocumentsContract.buildDocumentUri("info.flowersoft.theotown.theotown.MyCloudProvider", str);
    }

    public final Uri getChildrenUri(String str) {
        return DocumentsContract.buildChildDocumentsUri("info.flowersoft.theotown.theotown.MyCloudProvider", str);
    }

    public final void notifyChange(Uri uri) {
        getContext().getContentResolver().notifyChange(uri, (ContentObserver) null, 1);
    }

    public static String[] resolveRootProjection(String[] strArr) {
        return strArr != null ? strArr : DEFAULT_ROOT_PROJECTION;
    }

    public static String[] resolveDocumentProjection(String[] strArr) {
        return strArr != null ? strArr : DEFAULT_DOCUMENT_PROJECTION;
    }

    public final String getChildMimeTypes(File file) {
        HashSet hashSet = new HashSet();
        hashSet.add("image/*");
        hashSet.add("text/*");
        hashSet.add("json/*");
        hashSet.add("lua/*");
        StringBuilder sb = new StringBuilder();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
            sb.append("\n");
        }
        return sb.toString();
    }

    public final String getFileMimeType(File file) {
        if (file.isDirectory()) {
            return "vnd.android.document/directory";
        }
        return getTypeForName(file.getName());
    }

    public static String getTypeForName(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            String strSubstring = str.substring(iLastIndexOf + 1);
            if (strSubstring.equals("manifest") || strSubstring.equals("json")) {
                return "text/x-json";
            }
            if (strSubstring.equals("lua")) {
                return "text/x-lua";
            }
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strSubstring);
            return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
        }
        return "application/octet-stream";
    }

    public final String getDocIdForFile(File file) {
        return "theotown:" + file.getAbsolutePath().substring(this.baseDir.getAbsolutePath().length());
    }

    public final File getFileForDocId(String str) {
        if (str.length() < 9) {
            return null;
        }
        File file = new File(this.baseDir, str.substring(Math.min(10, str.length())));
        System.out.println(str + " -> " + file.getPath());
        return file;
    }

    public final boolean isFileHidden(File file) {
        if (this.hiddenFiles.contains(file.getAbsolutePath().substring(this.baseDir.getAbsolutePath().length()))) {
            return true;
        }
        Set<String> set = this.hiddenFiles;
        StringBuilder sb = new StringBuilder();
        sb.append("*");
        sb.append(file.getName());
        return set.contains(sb.toString());
    }
}
