.class public final synthetic Lorg/wikipedia/edit/-$$Lambda$FindInEditorActionProvider$Ells_xKY0_WKhp_ZYAsRgY9_ZOk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/views/PlainPasteEditText$FindListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/edit/FindInEditorActionProvider;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/FindInEditorActionProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/-$$Lambda$FindInEditorActionProvider$Ells_xKY0_WKhp_ZYAsRgY9_ZOk;->f$0:Lorg/wikipedia/edit/FindInEditorActionProvider;

    iput-object p2, p0, Lorg/wikipedia/edit/-$$Lambda$FindInEditorActionProvider$Ells_xKY0_WKhp_ZYAsRgY9_ZOk;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onFinished(IIIZ)V
    .locals 6

    iget-object v0, p0, Lorg/wikipedia/edit/-$$Lambda$FindInEditorActionProvider$Ells_xKY0_WKhp_ZYAsRgY9_ZOk;->f$0:Lorg/wikipedia/edit/FindInEditorActionProvider;

    iget-object v1, p0, Lorg/wikipedia/edit/-$$Lambda$FindInEditorActionProvider$Ells_xKY0_WKhp_ZYAsRgY9_ZOk;->f$1:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/edit/FindInEditorActionProvider;->lambda$findInPage$0$FindInEditorActionProvider(Ljava/lang/String;IIIZ)V

    return-void
.end method
