package info.flowersoft.theotown.resources;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.draft.TopicDraft;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TopicManager {
    public static final Color COLOR_DEFAULT = Colors.YELLOW;
    public static TopicManager instance;
    public Topic topic;
    public final List<Topic> topics = new ArrayList();

    public static TopicManager getInstance() {
        if (instance == null) {
            instance = new TopicManager();
        }
        return instance;
    }

    public static void dispose() {
        instance = null;
    }

    public Topic addTopic(int i) {
        return addTopic(i, null);
    }

    public Topic addTopic(TopicDraft topicDraft) {
        return addTopic(-1, topicDraft);
    }

    public final Topic addTopic(int i, TopicDraft topicDraft) {
        Topic topic = new Topic();
        topic.id = i;
        topic.draft = topicDraft;
        topic.color = COLOR_DEFAULT;
        topic.availableDates = null;
        topic.weight = 1.0f;
        this.topics.add(topic);
        return topic;
    }

    public void pickRandomTopic() {
        ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
        for (Topic topic : this.topics) {
            if (topic.isAvailable()) {
                probabilitySelector.insert(topic, topic.getWeight());
            }
        }
        if (probabilitySelector.hasResult()) {
            this.topic = (Topic) probabilitySelector.getResult();
        }
    }

    public void pickHelpfulTopic() {
        ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
        for (Topic topic : this.topics) {
            if (topic.isAvailable() && topic.isHelpful()) {
                probabilitySelector.insert(topic, topic.getWeight());
            }
        }
        if (probabilitySelector.hasResult()) {
            this.topic = (Topic) probabilitySelector.getResult();
        }
    }

    public final void ensureTopic() {
        if (this.topic == null) {
            pickRandomTopic();
            if (this.topic == null) {
                throw new IllegalStateException("Could not pick topic");
            }
        }
    }

    public boolean isHelpful() {
        ensureTopic();
        return this.topic.isHelpful();
    }

    public int getTopicId() {
        ensureTopic();
        return this.topic.id;
    }

    public TopicDraft getTopicDraft() {
        ensureTopic();
        return this.topic.draft;
    }

    public Color getTopicColor() {
        ensureTopic();
        return this.topic.getColor();
    }

    public static class Topic {
        public List<Calendar> availableDates;
        public Color color;
        public TopicDraft draft;
        public int id;
        public float weight;

        public Topic() {
        }

        public final boolean isAvailable() {
            if (this.availableDates == null) {
                return true;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            for (Calendar calendar : this.availableDates) {
                if (gregorianCalendar.get(2) == calendar.get(2) && gregorianCalendar.get(5) == calendar.get(5)) {
                    return true;
                }
            }
            return false;
        }

        public boolean isHelpful() {
            TopicDraft topicDraft = this.draft;
            return topicDraft != null && topicDraft.helpful;
        }

        public Color getColor() {
            Color color;
            TopicDraft topicDraft = this.draft;
            return (topicDraft == null || (color = topicDraft.color) == null) ? this.color : color;
        }

        public float getWeight() {
            TopicDraft topicDraft = this.draft;
            return topicDraft != null ? topicDraft.hidden ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : topicDraft.weight * this.weight : this.weight;
        }

        public void setWeight(float f) {
            this.weight = f;
        }

        public void addDay(int i, int i2) {
            addDays(i, i2, 1);
        }

        public void addDays(int i, int i2, int i3) {
            if (this.availableDates == null) {
                this.availableDates = new ArrayList();
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(1970, i2, i);
            for (int i4 = 0; i4 < i3; i4++) {
                Calendar calendar = (Calendar) gregorianCalendar.clone();
                calendar.add(5, i4);
                this.availableDates.add(calendar);
            }
        }
    }
}
