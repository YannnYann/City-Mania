package info.flowersoft.theotown.util.vfs;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import vm2.NoLuaAccess;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractFile {
    public Map<String, AbstractFile> childByName;
    public List<AbstractFile> children;
    public long modificationTime;
    public final String name;
    public AbstractFile parent;

    public interface DataSource {
        InputStream get() throws IOException;
    }

    public abstract AbstractFile createDirectoryChild(String str);

    public abstract int length();

    public abstract AbstractFile newDirectory(String str);

    @NoLuaAccess
    public abstract AbstractFile newFile(String str, int i, DataSource dataSource) throws IOException;

    @NoLuaAccess
    public abstract AbstractFile newFile(String str, InputStream inputStream) throws IOException;

    public abstract InputStream read() throws IOException;

    public abstract byte[] readBytes() throws IOException;

    public AbstractFile(String str, boolean z, AbstractFile abstractFile) {
        String[] strArrSplit = str.split("/");
        String strNormalize = Normalizer.normalize(strArrSplit[strArrSplit.length - 1], Normalizer.Form.NFC);
        this.name = strNormalize;
        if (strNormalize.equals(".") || strNormalize.equals("..") || strNormalize.isEmpty()) {
            throw new IllegalArgumentException("Invalid filename");
        }
        if (abstractFile != null) {
            for (int i = 0; i < strArrSplit.length - 1; i++) {
                abstractFile = abstractFile.getOrCreateDirectoryChild(strArrSplit[i]);
            }
        } else if (strArrSplit.length > 1) {
            throw new IllegalArgumentException("Path is meaningless without a parent");
        }
        if (z) {
            this.children = new ArrayList();
            this.childByName = new HashMap();
        }
        if (abstractFile != null) {
            abstractFile.addDirectChild(this);
        }
    }

    public boolean isRoot() {
        return this.parent == null;
    }

    public AbstractFile getParent() {
        return this.parent;
    }

    public AbstractFile getRoot() {
        AbstractFile abstractFile = this;
        while (true) {
            AbstractFile abstractFile2 = abstractFile.parent;
            if (abstractFile2 == null) {
                return abstractFile;
            }
            abstractFile = abstractFile2;
        }
    }

    public void addDirectChild(AbstractFile abstractFile) {
        if (!isDirectory()) {
            throw new IllegalArgumentException("Cannot append file to non directory");
        }
        AbstractFile directFile = getDirectFile(abstractFile.name);
        if (directFile == abstractFile) {
            return;
        }
        if (directFile != null) {
            removeDirectChild(directFile);
        }
        this.children.add(abstractFile);
        this.childByName.put(abstractFile.name, abstractFile);
        abstractFile.parent = this;
    }

    public void removeDirectChild(AbstractFile abstractFile) {
        this.children.remove(abstractFile);
        this.childByName.remove(abstractFile.name);
        abstractFile.parent = null;
    }

    public String getName() {
        return this.name;
    }

    public long getModificationTime() {
        return this.modificationTime;
    }

    public void setModificationTime(long j) {
        this.modificationTime = j;
    }

    public boolean isDirectory() {
        return this.children != null;
    }

    public boolean isFile() {
        return !isDirectory();
    }

    public AbstractFile[] listFiles() {
        if (!isDirectory()) {
            return null;
        }
        AbstractFile[] abstractFileArr = new AbstractFile[this.children.size()];
        for (int i = 0; i < this.children.size(); i++) {
            abstractFileArr[i] = this.children.get(i);
        }
        return abstractFileArr;
    }

    public int countChildren() {
        if (isDirectory()) {
            return this.children.size();
        }
        return 0;
    }

    public final AbstractFile getDirectFile(String str) {
        if (!isDirectory()) {
            throw new IllegalStateException("Files have no children");
        }
        if (!str.equals(".") && !str.isEmpty()) {
            if (!str.equals("..")) {
                return this.childByName.get(Normalizer.normalize(str, Normalizer.Form.NFC));
            }
            AbstractFile abstractFile = this.parent;
            if (abstractFile != null) {
                return abstractFile;
            }
        }
        return this;
    }

    public AbstractFile getFile(String str) {
        String[] strArrSplit = str.split("/");
        AbstractFile directFile = this;
        for (int i = 0; i < strArrSplit.length && directFile != null; i++) {
            directFile = directFile.getDirectFile(strArrSplit[i]);
        }
        return directFile;
    }

    public AbstractFile getOrCreateDirectoryChild(String str) {
        AbstractFile directFile = getDirectFile(str);
        if (directFile != null) {
            if (directFile.isDirectory()) {
                return directFile;
            }
            throw new IllegalStateException("Files cannot have children");
        }
        return createDirectoryChild(str);
    }

    public String toString() {
        if (this.parent == null) {
            return this.name;
        }
        StringBuilder sb = new StringBuilder();
        AbstractFile parent = this;
        while (parent != null) {
            sb.insert(0, parent.getName());
            parent = parent.getParent();
            if (parent != null) {
                sb.insert(0, '/');
            }
        }
        return sb.toString();
    }

    public int overallSize() {
        if (isFile()) {
            return length();
        }
        int iOverallSize = 0;
        for (int i = 0; i < this.children.size(); i++) {
            iOverallSize += this.children.get(i).overallSize();
        }
        return iOverallSize;
    }

    public AbstractFile newFile(String str, String str2) throws IOException {
        return newFile(str, new ByteArrayInputStream(str2.getBytes(StandardCharsets.UTF_8)));
    }
}
