package info.flowersoft.theotown.draftloader;

/* JADX INFO: loaded from: classes4.dex */
public class PluginLoadingException extends RuntimeException {
    public PluginLoadingException(String str, String str2) {
        super("In plugin " + str + ": " + str2);
    }
}
