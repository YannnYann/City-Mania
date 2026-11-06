package vm2.ast;

/* JADX INFO: loaded from: classes6.dex */
public class Chunk extends SyntaxElement {
    public final Block block;

    public Chunk(Block block) {
        this.block = block;
    }

    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
