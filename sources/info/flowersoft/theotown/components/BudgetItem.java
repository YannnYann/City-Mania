package info.flowersoft.theotown.components;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BudgetItem {
    public DefaultBudget budget;

    public abstract long getAmount();

    public int getExtra() {
        return 0;
    }

    public int getModifyStep() {
        return 1;
    }

    public abstract int getNameId();

    public abstract String getNameRaw();

    public boolean isModifyable() {
        return false;
    }

    public boolean isVisible() {
        return true;
    }

    public BudgetItem(DefaultBudget defaultBudget) {
        this.budget = defaultBudget;
    }

    public DefaultBudget getBudget() {
        return this.budget;
    }

    public int getModifyable() {
        throw new UnsupportedOperationException();
    }

    public void setModifyable(int i) {
        throw new UnsupportedOperationException();
    }

    public int getMinModifyableValue() {
        throw new UnsupportedOperationException();
    }

    public int getMaxModifyableValue() {
        throw new UnsupportedOperationException();
    }

    public void incrementModifyable() {
        setModifyable(Math.min(getModifyable() + getModifyStep(), getMaxModifyableValue()));
    }

    public void decrementModifyable() {
        setModifyable(Math.max(getModifyable() - getModifyStep(), getMinModifyableValue()));
    }
}
