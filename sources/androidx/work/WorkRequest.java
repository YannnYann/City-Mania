package androidx.work;

import androidx.work.impl.model.WorkSpec;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public abstract class WorkRequest {
    public UUID mId;
    public Set<String> mTags;
    public WorkSpec mWorkSpec;

    public WorkRequest(UUID id, WorkSpec workSpec, Set<String> tags) {
        this.mId = id;
        this.mWorkSpec = workSpec;
        this.mTags = tags;
    }

    public String getStringId() {
        return this.mId.toString();
    }

    public WorkSpec getWorkSpec() {
        return this.mWorkSpec;
    }

    public Set<String> getTags() {
        return this.mTags;
    }

    public static abstract class Builder<B extends Builder<?, ?>, W extends WorkRequest> {
        public WorkSpec mWorkSpec;
        public Class<? extends ListenableWorker> mWorkerClass;
        public boolean mBackoffCriteriaSet = false;
        public Set<String> mTags = new HashSet();
        public UUID mId = UUID.randomUUID();

        public abstract W buildInternal();

        public abstract B getThis();

        public Builder(Class<? extends ListenableWorker> workerClass) {
            this.mWorkerClass = workerClass;
            this.mWorkSpec = new WorkSpec(this.mId.toString(), workerClass.getName());
            addTag(workerClass.getName());
        }

        public final B setConstraints(Constraints constraints) {
            this.mWorkSpec.constraints = constraints;
            return (B) getThis();
        }

        public final B setInputData(Data data) {
            this.mWorkSpec.input = data;
            return (B) getThis();
        }

        public final B addTag(String str) {
            this.mTags.add(str);
            return (B) getThis();
        }

        public final W build() {
            W w = (W) buildInternal();
            Constraints constraints = this.mWorkSpec.constraints;
            boolean z = constraints.hasContentUriTriggers() || constraints.requiresBatteryNotLow() || constraints.requiresCharging() || constraints.requiresDeviceIdle();
            if (this.mWorkSpec.expedited && z) {
                throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
            }
            this.mId = UUID.randomUUID();
            WorkSpec workSpec = new WorkSpec(this.mWorkSpec);
            this.mWorkSpec = workSpec;
            workSpec.id = this.mId.toString();
            return w;
        }
    }
}
