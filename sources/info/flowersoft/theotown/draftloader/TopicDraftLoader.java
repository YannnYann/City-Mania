package info.flowersoft.theotown.draftloader;

import com.ironsource.C3522b4;
import info.flowersoft.theotown.draft.TopicDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class TopicDraftLoader extends DraftLoader {
    public final Color HELPFUL_COLOR = new Color(187, 148, 232);
    public final float HELPFUL_WEIGHT = (10.0f / (((Settings.playTimeSeconds / 60.0f) / 60.0f) + 1.0f)) + 0.5f;

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"topic"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public TopicDraft load() throws JSONException {
        TopicDraft topicDraft = (TopicDraft) getDraft(this.src, TopicDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.TopicDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new TopicDraft();
            }
        });
        loadDefaults(topicDraft);
        boolean zOptBoolean = this.src.optBoolean("helpful", false);
        topicDraft.helpful = zOptBoolean;
        if (zOptBoolean) {
            topicDraft.weight = this.HELPFUL_WEIGHT;
            topicDraft.color = this.HELPFUL_COLOR;
        }
        topicDraft.weight = (float) this.src.optDouble("weight", topicDraft.weight);
        topicDraft.color = optColor(C3522b4.i.S, topicDraft.color);
        if (topicDraft.titleId == null && topicDraft.title == null) {
            topicDraft.titleId = topicDraft.textId;
            topicDraft.title = topicDraft.text;
        }
        topicDraft.url = this.src.optString("url", topicDraft.url);
        TopicDraft topicDraft2 = (TopicDraft) Drafts.ALL.get(topicDraft.id);
        if (topicDraft2 != null) {
            Drafts.TOPICS.remove(topicDraft2);
        }
        Drafts.TOPICS.add(topicDraft);
        return topicDraft;
    }
}
