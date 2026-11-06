package vm2.compiler;

/* JADX INFO: loaded from: classes6.dex */
class InstructionPtr {
    final int[] code;
    final int idx;

    public InstructionPtr(int[] iArr, int i) {
        this.code = iArr;
        this.idx = i;
    }

    public int get() {
        return this.code[this.idx];
    }

    public void set(int i) {
        this.code[this.idx] = i;
    }
}
