package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.ShaderDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class ShaderDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"shader"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        ShaderDraft shaderDraft = (ShaderDraft) getDraft(this.src, ShaderDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.ShaderDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new ShaderDraft();
            }
        });
        loadDefaults(shaderDraft);
        shaderDraft.vertexCode = readFileOrString(shaderDraft.path, this.src, "vertex");
        shaderDraft.fragmentCode = readFileOrString(shaderDraft.path, this.src, "fragment");
        Drafts.SHADERS.add(shaderDraft);
        return shaderDraft;
    }
}
