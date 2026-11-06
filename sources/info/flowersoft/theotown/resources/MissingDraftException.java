package info.flowersoft.theotown.resources;

/* JADX INFO: loaded from: classes4.dex */
public class MissingDraftException extends Exception {
    public final String id;
    public final String type;

    public MissingDraftException(String str, String str2) {
        super("Could not find " + str + " of type " + str2);
        this.id = str;
        this.type = str2;
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof MissingDraftException) {
            MissingDraftException missingDraftException = (MissingDraftException) obj;
            return missingDraftException.id.equals(this.id) && missingDraftException.type.equals(this.type);
        }
        return super.equals(obj);
    }
}
