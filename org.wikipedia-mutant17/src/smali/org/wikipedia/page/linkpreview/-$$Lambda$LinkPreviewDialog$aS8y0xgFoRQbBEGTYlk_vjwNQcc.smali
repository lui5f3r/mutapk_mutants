.class public final synthetic Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$aS8y0xgFoRQbBEGTYlk_vjwNQcc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$aS8y0xgFoRQbBEGTYlk_vjwNQcc;->f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$aS8y0xgFoRQbBEGTYlk_vjwNQcc;->f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    check-cast p1, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->lambda$loadContent$1$LinkPreviewDialog(Lorg/wikipedia/dataclient/page/PageSummary;)V

    return-void
.end method
